#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M


# Basic statistics
while IFS=$'\t' read -r sample_name
do
seqkit stat trimmomatic_output/"$sample_name"_R1.bbduk.trimmed.fastq.gz trimmomatic_output/"$sample_name"_R2.bbduk.trimmed.fastq.gz > seqkit_stats/"$sample_name"_seqkit_stats.txt --threads 32
done < trimmomatic_sample_data.txt