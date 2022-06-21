#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 06:00:00
#SBATCH -J LsinRMDL_Lsinfas_RMSK_16112021
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o LsinRMDL_Lsin_repmask.output
#SBATCH -e LsinRMDL_Lsin_repmask.error

#Info about RMSK: https://github.com/rmhubley/RepeatMasker
#This script is used to mask consensus sequences in our TE library against the Lsin reference genome.

#load modules
module load bioinfo-tools
module load RepeatMasker/4.1.0

#run RepeatMasker on Lsin_fasta with ref to TE libraries.
RepeatMasker -pa 16 -a -xsmall -gccalc -excln -html -lib Lsin_DToL_rm2.0.1.v2.lib Lsin_DToL.fasta

echo "DONE"