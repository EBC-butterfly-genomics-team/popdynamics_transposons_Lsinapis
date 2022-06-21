#!/bin/bash -l
#SBATCH -A *
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 01-00:00:00
#SBATCH -J TEinsert_rlcte2_101_allTEs
#SBATCH --mail-type=ALL
#SBATCH --mail-user *
#SBATCH -o TEinsert_rlcte2_0205_101all.output
#SBATCH -e TEinsert_rlcte2_0205_101all.error

#Info for relocaTE2: https://github.com/JinfengChen/RelocaTE2
#After getting different errors for different tools, we decided to use relocaTE2 to look for individual insertions.
#This script is used only for 1 individual (no.101), we had 84 scripts like this, and we could get 83 results.
#One file had bigger file size compared to others, thats why a result couldnt get for this one.

#load modules
module load bioinfo-tools
module load python/2.7.6
module load pysam/0.9.1.4

#set relocaTE2 dir
dir = ***

mkdir ../results/101/
python $dir/relocaTE2.py -c 16 -s 350 --te_fasta ../TEs.fasta --genome_fasta ../Lsin_DToL.fasta --fq_dir ../all_fastq/101/ --outdir ../results/101/ --reference_ins ../RMSK.fasta.out --run

echo "DONE"