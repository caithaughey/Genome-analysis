#!/bin/bash -l
#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J assembly_job
#SBATCH --mail-type=ALL
#SBATCH --mail-user caitlinvigetun@hotmail.com
# Load modules
module load bioinfo-tools
module load soapdenovo
# Your commands
SOAPdenovo-127mer all -s soapdenovo.contig -K 127 -R -o output-files/assembly_output_graph 1>ass.log 2>ass.err
