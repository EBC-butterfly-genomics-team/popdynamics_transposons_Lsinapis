#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 20
#SBATCH -t 07-00:00:00
#SBATCH -J Lsin_DTol_RepeatModeler2.0.1
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o Lsin_DTol_repmod2.output
#SBATCH -e Lsin_DTol_repmod2.error

#Info about RMDL: https://github.com/Dfam-consortium/RepeatModeler
#RMDL here used to identify TEs in Lsin long-read assembly reference genome. The output is a TE library for ref genome.

#load modules
module load bioinfo-tools
module load RepeatModeler/2.0.1

#make database for Lsin genome and name it as Lsin_DToL. Here, we provided the long-read sequenced assembly of Lsin.
BuildDatabase -name Lsin_DToL Lsin_DToL.fasta

#Run RMDL. After creating our db, run RMDL with LTRStruct option. -pa 20 results to run using 20 parallel jobs.
RepeatModeler -database Lsin_DToL -pa 20 -LTRStruct 


echo "DONE"