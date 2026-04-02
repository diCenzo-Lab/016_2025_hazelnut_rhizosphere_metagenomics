#!/bin/bash
#SBATCH --time=48:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

megahit -1 trimmomatic_output/rhizo_R3P10_neg_R1.bbduk.trimmed.fastq.gz -2 trimmomatic_output/rhizo_R3P10_neg_R2.bbduk.trimmed.fastq.gz -m 224 -t 32 -o megahit_assembly/rhizo_R3P10_neg --presets meta-large
