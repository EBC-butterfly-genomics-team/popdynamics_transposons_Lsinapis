#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 05:00:00
#SBATCH -J Lsin_DTol_RepeatMasker4.1.0_161121
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o Lsin_DTol_repmask_2_2.output
#SBATCH -e Lsin_DTol_repmask_2_2.error

#Info about RMSK: https://github.com/rmhubley/RepeatMasker
#This time, we run RMSK again for Lsin against itself. Here, we used 95-80-98 rule (Flutre et al. 2011). Btw, we could discard 25 consensus sequences.

#load modules
module load bioinfo-tools
module load RepeatMasker/4.1.0


#RMSK on RMDL-produced Lsin library against itself.
RepeatMasker -lib Lsin_DToL_rm2.0.1.lib -html Lsin_DToL_rm2.0.1.lib

echo "DONE"