#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 16:00:00
#SBATCH -J TEinsert_depth
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o depth.output
#SBATCH -e depth.error

#Info for samtools depth: http://www.htslib.org/doc/samtools-depth.html
#We wanted to check if there is any relation b/n depth and number of insertions. Hence, calculated the average depth for all individuals.

module load bioinfo-tools
module load samtools

#set directory for raw files
dir = ***

cd $dir

samtools depth 102.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 103.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 104.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 105.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 106.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 107.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 108.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 109.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 110.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 111.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 112.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 113.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 114.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 115.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 116.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 118.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 122.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 123.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 129.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 130.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 131.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 134.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 135.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 136.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 137.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 138.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 139.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 140.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 141.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 142.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 143.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 144.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 145.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 146.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 147.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 148.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 149.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 150.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 151.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 152.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 153.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 154.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 155.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 156.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 157.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 158.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 159.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 160.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 161.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 162.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 163.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 164.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 165.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 166.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 167.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 168.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 169.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 170.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 171.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 172.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 173.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 174.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 175.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 176.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 177.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 178.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 179.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 180.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 181.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 182.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 183.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 184.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 185.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 187.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 188.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 189.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 190.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 191.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 192.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 193.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 194.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth 196.pairs.sorted.bam |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
