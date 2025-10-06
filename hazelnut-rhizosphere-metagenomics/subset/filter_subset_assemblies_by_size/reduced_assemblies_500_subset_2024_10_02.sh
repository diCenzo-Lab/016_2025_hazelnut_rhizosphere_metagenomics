#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M
# Hazelnut Dataset 1

pullseq -i megahit_subset_output/rhizo_Control_B2/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_Control_B2_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_Control_B3/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_Control_B3_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_Control_B5/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_Control_B5_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R1P14/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R1P14_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R1P5/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R1P5_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R1P9/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R1P9_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P10_neg/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P10_neg_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P12_neg/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P12_neg_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P15/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P15_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P20/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P20_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P3/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P3_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P9_neg/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P9_neg_0.5K.fasta

# Hazelnut Dataset 2

pullseq -i megahit_subset_output/rhizo_Control_B4/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_Control_B4_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R1P1/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R1P1_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R1P18/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R1P18_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P11/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P11_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P5/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P5_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P14_neg/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P14_neg_0.5K.fasta
pullseq -i megahit_subset_output/rhizo_R3P18_neg/final.contigs.fa -m 500 > megahit_subset_output/reduced_assemblies/rhizo_R3P18_neg_0.5K.fasta
