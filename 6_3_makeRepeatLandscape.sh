#!/bin/bash -l
#SBATCH -A *
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 2:00:00
#SBATCH -J newRMSK__makeRepeatLandscapePlot
#SBATCH --mail-type=ALL
#SBATCH --mail-user *
#SBATCH -o RepeatlandscapePlot.output
#SBATCH -e RepeatlandscapePlot.error

#Make a repeat landscape plot from CpG-corrected RepeatMasker .align file and average distance file (run from RepeatMasker/util) 
#-g is the genome size according to RepeatMasker and is used for percentage calculations.
perl /sw/bioinfo/RepeatMasker/4.1.0/rackham/util/createRepeatLandscape.pl -div Lsin_DToL.fasta.align.divsum -g 685538706 >Lsin_DToL.fasta.align.divsum.html