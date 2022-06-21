#!/bin/bash -l
#SBATCH -A *
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 2:00:00
#SBATCH -J newRMSK__calcDivFromAlign
#SBATCH --mail-type=ALL
#SBATCH --mail-user *
#SBATCH -o calcDivFromAlign.output
#SBATCH -e calcDivFromAlign.error

#Before creating the TE landscape, we re-calculated the divergence adjusted for GC content.

#Re-calculate the divergence adjusted for GC content (run from RMSK/util)
perl /sw/bioinfo/RepeatMasker/4.1.0/rackham/util/calcDivergenceFromAlign.pl -s Lsin_DToL.fasta.align.divsum -a Lsin_DToL.fasta.align_with_div Lsin_DToL.fasta.align