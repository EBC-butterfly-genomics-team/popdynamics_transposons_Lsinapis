#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 16:00:00
#SBATCH -J TEinsert_coverage
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o coverage.output
#SBATCH -e coverage.error

#Info for samtools coverage: http://www.htslib.org/doc/samtools-coverage.html
#We wanted to check if there is any relation b/n coverage and number of insertions. Hence, calculated the average coverage for all individuals.

module load bioinfo-tools
module load samtools

#set directory for raw files
dir = ***

cd $dir

samtools coverage 102.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 103.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 104.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 105.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 106.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 107.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 108.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 109.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 110.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 111.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 112.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 113.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 114.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 115.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 116.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 118.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 122.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 123.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 129.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 130.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 131.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 134.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 135.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 136.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 137.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 138.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 139.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 140.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 141.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 142.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 143.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 144.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 145.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 146.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 147.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 148.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 149.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 150.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 151.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 152.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 153.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 154.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 155.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 156.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 157.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 158.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 159.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 160.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 161.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 162.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 163.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 164.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 165.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 166.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 167.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 168.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 169.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 170.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 171.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 172.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 173.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 174.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 175.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 176.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 177.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 178.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 179.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 180.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 181.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 182.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 183.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 184.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 185.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 187.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 188.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 189.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 190.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 191.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 192.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 193.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 194.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'
samtools coverage 196.pairs.sorted.bam |  awk '{sum+=$6} END { print "Average = ",sum/(NR-1)}'