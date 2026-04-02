#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

# Hazelnut Dataset 1

stats.sh megahit_assembly/rhizo_Control_B2/final.contigs.fa > megahit_assembly/stats/rhizo_Control_B2.txt
stats.sh megahit_assembly/rhizo_Control_B3/final.contigs.fa > megahit_assembly/stats/rhizo_Control_B3.txt
stats.sh megahit_assembly/rhizo_Control_B5/final.contigs.fa > megahit_assembly/stats/rhizo_Control_B5.txt
stats.sh megahit_assembly/rhizo_R1P14/final.contigs.fa > megahit_assembly/stats/rhizo_R1P14.txt
stats.sh megahit_assembly/rhizo_R1P5/final.contigs.fa > megahit_assembly/stats/rhizo_R1P5.txt
stats.sh megahit_assembly/rhizo_R1P9/final.contigs.fa > megahit_assembly/stats/rhizo_R1P9.txt
stats.sh megahit_assembly/rhizo_R3P10_neg/final.contigs.fa > megahit_assembly/stats/rhizo_R3P10_neg.txt
stats.sh megahit_assembly/rhizo_R3P12_neg/final.contigs.fa > megahit_assembly/stats/rhizo_R3P12_neg.txt
stats.sh megahit_assembly/rhizo_R3P15/final.contigs.fa > megahit_assembly/stats/rhizo_R3P15.txt
stats.sh megahit_assembly/rhizo_R3P20/final.contigs.fa > megahit_assembly/stats/rhizo_R3P20.txt
stats.sh megahit_assembly/rhizo_R3P3/final.contigs.fa > megahit_assembly/stats/rhizo_R3P3.txt
stats.sh megahit_assembly/rhizo_R3P9_neg/final.contigs.fa > megahit_assembly/stats/rhizo_R3P9_neg.txt

# Hazelnut Dataset 2

stats.sh megahit_assembly/rhizo_Control_B4/final.contigs.fa > megahit_assembly/stats/rhizo_Control_B4.txt
stats.sh megahit_assembly/rhizo_R1P1/final.contigs.fa > megahit_assembly/stats/rhizo_R1P1.txt
stats.sh megahit_assembly/rhizo_R1P18/final.contigs.fa > megahit_assembly/stats/rhizo_R1P18.txt
stats.sh megahit_assembly/rhizo_R3P11/final.contigs.fa > megahit_assembly/stats/rhizo_R3P11.txt
stats.sh megahit_assembly/rhizo_R3P5/final.contigs.fa > megahit_assembly/stats/rhizo_R3P5.txt
stats.sh megahit_assembly/rhizo_R3P14_neg/final.contigs.fa > megahit_assembly/stats/rhizo_R3P14_neg.txt
stats.sh megahit_assembly/rhizo_R3P18_neg/final.contigs.fa > megahit_assembly/stats/rhizo_R3P18_neg.txt
