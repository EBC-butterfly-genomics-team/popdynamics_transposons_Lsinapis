#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 10
#SBATCH -t 15:00:00
#SBATCH -J Blast_RMDLPipeline3
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o blast_pipe3.output
#SBATCH -e blast_pipe3.error

#Before that, we selected our 150 TEs which will be manually curated. The reason behind this choice was that they are the repeats that have most copies in the genome.
#First, the blastn will be produced for Lsin_DToL.fasta, then the pipeline will be run to adjust selected 150 sequences.
#The adjustments are that; sequences will be aligned and alignments that are too gappy will be removed. All 150 sequences can be found at final folder.

#Load modules
module load bioinfo-tools 
module load MAFFT/7.407
module load blast/2.6.0+
module load T-Coffee/11.00.8cbe486

#Run blast
makeblastdb -in Lsin_DToL.fasta -out Lsin_DToL -title Lsin_DToL -dbtype "nucl" -parse_seqids

#Run RMDL pipeline perl code.
#I had "/"s in 101 seqs, so I couldnt get results for 101 repeats. Now, I removed "/"s, and hope to get all results :)
perl repeatModelerPipeline4.pl Lsin_DToL.fasta Lsin_DToL Lsin_DToL_150TEs_noSlash.lib

# remove temporary files
rm *emp.out

# create output folder
mkdir final

# reshape files
cd aligned; for i in $(ls *.fa); do name=`ls $i | cut -f1 -d "."`; cat $i | perl -ne 'chomp;s/>\s+/>/;if(/>(\S+)/){$id{$1}++;$id2=$1;}if($id{$id2}==1){print "$_\n"}' >../final/$name.fa; done; cd ../

# remove alignents that are too "gappy"
cd final; for i in $(ls *.fa); do name=`ls $i | cut -f1 -d "."`; t_coffee -other_pg seq_reformat -in $i -action +rm_gap 95 >$name.gaps95.fa; done; cd ../