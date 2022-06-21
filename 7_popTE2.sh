#!/bin/bash -l
#SBATCH -A *
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 5:00:00
#SBATCH -J TEinsert_ppte2_2204
#SBATCH --mail-type=ALL
#SBATCH --mail-user *
#SBATCH -o TEinsert_ppte2_2204.output
#SBATCH -e TEinsert_ppte2_2204.error

#Info for ppte2: https://sourceforge.net/p/popoolation-te2/wiki/Home/
#Here, we wanted to look for total insertions of curated 146 TE sequences for a Swedish Lsin population consisting of 83 individuals.
#This script is used only for 1 individual (no.101). After getting problems with this tool, we didn't continue with that.
#The problem we had was that the paired ends didnt match, so we couldnt get any results.

#load modules
module load bioinfo-tools
module load bwa

#set directory for raw files
dir = ***

#adjust fasta headers
gzip -cd $dir/101_1_val_1.fq.gz | sed 's/ 1:N:0:\(.*\)$/\#\1\/1/g' > fastqfiles/101_1_headersadjusted.fastq
gzip -cd $dir/101_2_val_2.fq.gz | sed 's/ 2:N:0:\(.*\)$/\#\1\/2/g' > fastqfiles/101_2_headersadjusted.fastq
bwa index TE-merged-refv2.fasta

#map reads to the TE-merged fasta
mkdir map
bwa mem -t 4 TE-merged-refv2.fasta fastqfiles/101_1_headersadjusted.fastq   >map/101_1.sam &
bwa mem -t 4 -M TE-merged-refv2.fasta fastqfiles/101_2_headersadjusted.fastq  >map/101_2.sam

#Restore paired-end information with PoPoolationTE2 se2pe
java -jar popte2-v1.10.04.jar se2pe --fastq1 fastqfiles/101_1_headersadjusted.fastq --fastq2 fastqfiles/101_2_headersadjusted.fastq --bam1 map/101_1.sam --bam2 map/101_2.sam --sort --output 101.sort.bam

#Generate the ppileup
java -jar popte2-v1.10.04.jar ppileup --bam 101.sort.bam --map-qual 15 --hier idcorrected_family_order.hier --output 101.ppileup.gz

#analyse TE abundance
#mkdir quick
java -jar popte2-v1.10.04.jar identifySignatures --ppileup 101.ppileup.gz --mode separate --output quick/101.signatures --min-count 3 
java -jar popte2-v1.10.04.jar frequency --ppileup 101.ppileup.gz --signature quick/101.signatures --output quick/101.freqsig
java -jar popte2-v1.10.04.jar pairupSignatures --signature quick/101.freqsig --ref-genome TE-merged-refv2.fasta --hier idcorrected_family_order.hier --min-distance -200 --max-distance 300 --output quick/101.teinsertions

echo "DONE"