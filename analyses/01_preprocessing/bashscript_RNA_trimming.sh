#!/bin/bash -l

#SBATCH -A g2018003

#SBATCH -p core

#SBATCH -n 6

#SBATCH -t 10:00:00

#SBATCH -J preprocessing_job

#SBATCH --mail-type=ALL

#SBATCH --mail-user caitlinvigetun@hotmail.com

# Load modules

module load bioinfo-tools

module load trimmomatric/0.36

# Your commands

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE /home/caithaug/genome_analysis_course/Genome-analysis/analyses/01_preprocessing/RNA_raw_data/sel3_SRR1719013.1.fastq.gz /home/caithaug/genome_analysis_course/Genome-analysis/analyses/01_preprocessing/RNA_raw_data/sel3_SRR1719013.2.fastq.gz -baseout /home/caithaug/genome_analysis_course/Genome-analysis/analyses/01_preprocessing/sel3_RNA_trimmed.fq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 

