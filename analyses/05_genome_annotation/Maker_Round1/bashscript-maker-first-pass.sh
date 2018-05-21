#!/bin/bash -l

#SBATCH -A g2018003

#SBATCH -p core

#SBATCH -n 6

#SBATCH -t 10:00:00

#SBATCH -J maker_second_pass_job

#SBATCH --mail-type=ALL

#SBATCH --mail-user caitlinvigetun@hotmail.com

# Load modules

module load bioinfo-tools

module load maker/3.01.1-beta

# Your commands

maker
