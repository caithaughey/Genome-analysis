#!/bin/bash -l

#SBATCH -A g2018003

#SBATCH -p core

#SBATCH -n 6

#SBATCH -t 10:00:00

#SBATCH -J RNA_assembly_job

#SBATCH --mail-type=ALL

#SBATCH --mail-user caitlinvigetun@hotmail.com

# Load modules

module load bioinfo-tools

module load trinity/2.4.0

# Your commands

Trinity --seqType fq --max_memory 50G --left /home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719014.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719015.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719016.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719017.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719018.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719204.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719206.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719207.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719208.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719209.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719211.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719212.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719213.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719214.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719241.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719242.trim_1P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719266.trim_1P.fastq.gz, --right /home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719014.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719015.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719016.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719017.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719018.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719204.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719206.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719207.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719208.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719209.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719211.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719212.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719213.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719214.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719241.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719242.trim_2P.fastq.gz,/home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/RNA_trimmed_data/sel3_SRR1719266.trim_2P.fastq.gz, --CPU 6 --output /home/caithaug/genome_analysis_course/Genome-analysis/analyses/03_RNA_assembly/trinity_output_dir

