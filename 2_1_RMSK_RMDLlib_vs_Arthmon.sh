#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J Lsin_DTol_RepeatMasker4.1.0_151121
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o Lsin_DTol_repmask_2.output
#SBATCH -e Lsin_DTol_repmask_2.error

#Info about RMSK: https://github.com/rmhubley/RepeatMasker
#This script is used to check the sequence similarities between our TE library (produced by RMDL in the previous step) and Arthropoda and monarch libraries.
#The idea behind this comparison was to discard similar sequences from our library. 80-80-80 rule(Wicker et al. 2007) is used to check seq similarities.
#As a result, we couldnt find any similar consensus sequences b/n those libraries. This showed that our RMDL-produced TE library was identical.

#load modules
module load bioinfo-tools
module load RepeatMasker/4.1.0

#This time, I downloaded the Arthropoda TE library using "perl queryRepeatDatabase.pl -species Arthropoda >ArthropodaRepbase.lib" code,
#instead of manually downloading the library. After downloading this library, it is concatenated with manually curated monarch library (Baril & Hayward 2021).
#RMSK on RMDL-produced Lsin library against Arth_monarch concatenated library.
RepeatMasker -lib Arth_monarch_concatenated.fasta -html Lsin_DToL_rm2.0.1.lib

echo "DONE"