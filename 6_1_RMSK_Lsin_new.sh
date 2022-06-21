#!/bin/bash -l
#SBATCH -A *
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 15:00:00
#SBATCH -J Lsin_DTol_RepeatMasker4_newlandscape_110422
#SBATCH --mail-type=ALL
#SBATCH --mail-user *
#SBATCH -o Lsin_DTol_repmask_3.output
#SBATCH -e Lsin_DTol_repmask_3.error

#After manual curation, we wanted to check the TE content in Lsin genome. To check this, we used RMSK again. 
#The RMDL-TE library is edited before this, changing all 150 sequences with manually curated versions.

#load modules
module load bioinfo-tools
module load RepeatMasker/4.1.0

#run RepeatMasker "Arth+monarch+curated 146 TEs+RMDL_lib" towards Lsin_DToL genome.
RepeatMasker -pa 16 -a -xsmall -gccalc -excln -gff -s -html -lib Arth_mon_curated_RMDLlib_v2.2.fasta Lsin_DToL.fasta 

echo "DONE"