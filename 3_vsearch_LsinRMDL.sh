#!/bin/bash -l
#SBATCH -A ***
#SBATCH -p core
#SBATCH -n 12
#SBATCH -t 10:00:00
#SBATCH -J LsinRMDL_vsearch_repeatcluster
#SBATCH --mail-type=ALL
#SBATCH --mail-user ***
#SBATCH -o LsinRMDL_vsearch.output
#SBATCH -e LsinRMDL_vsearch.error

#Info about vsearch: https://github.com/torognes/vsearch
#We will try to cluster our consensus sequences based on 80% seq similarity(family-wise clustering) using vsearch software.
#Our goal is to decrease the number of consensus sequences. Before clustering, we have ~3000 consensus sequences.

#load modules
module load bioinfo-tools
module load vsearch/2.18.0

#run vsearch on RMDL-produced Lsin TE library. Options can be seen in the vsearch github page.
mkdir preclusters
vsearch --cluster_fast Lsin_DToL_rm2.0.1.v2.lib --id 0.8 --threads 12 --clusters preclusters/preclusters.uc --centroids centroids.fas --uc clusters.uc --blast6out results.blast6  
