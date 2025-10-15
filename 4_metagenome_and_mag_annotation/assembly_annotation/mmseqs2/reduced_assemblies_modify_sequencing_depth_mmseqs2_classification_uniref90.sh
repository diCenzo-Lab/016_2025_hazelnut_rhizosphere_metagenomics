#!/bin/bash

# Create necessary directories

# Reformat
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_Control_B2_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_Control_B2_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_Control_B3_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_Control_B3_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_Control_B4_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_Control_B4_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_Control_B5_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_Control_B5_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R1P1_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R1P1_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R1P5_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R1P5_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R1P9_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R1P9_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R1P14_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R1P14_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R1P18_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R1P18_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P3_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P3_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P5_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P5_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P11_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P11_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P15_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P15_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P20_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P20_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P9_neg_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P9_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P10_neg_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P10_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P12_neg_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P12_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P14_neg_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P14_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_assembly/reduced_assemblies/rhizo_R3P18_neg_0.5K.fasta megahit_assembly/reduced_assemblies/rhizo_R3P18_neg_0.5K_formatted.fasta

# Convert query sequences into query database
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_Control_B2_0.5K_formatted.fasta query_DB/Control_B2_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_Control_B3_0.5K_formatted.fasta query_DB/Control_B3_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_Control_B4_0.5K_formatted.fasta query_DB/Control_B4_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_Control_B5_0.5K_formatted.fasta query_DB/Control_B5_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R1P1_0.5K_formatted.fasta query_DB/R1P1_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R1P5_0.5K_formatted.fasta query_DB/R1P5_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R1P9_0.5K_formatted.fasta query_DB/R1P9_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R1P14_0.5K_formatted.fasta query_DB/R1P14_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R1P18_0.5K_formatted.fasta query_DB/R1P18_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P3_0.5K_formatted.fasta query_DB/R3P3_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P5_0.5K_formatted.fasta query_DB/R3P5_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P11_0.5K_formatted.fasta query_DB/R3P11_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P15_0.5K_formatted.fasta query_DB/R3P15_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P20_0.5K_formatted.fasta query_DB/R3P20_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P9_neg_0.5K_formatted.fasta query_DB/R3P9_neg_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P10_neg_0.5K_formatted.fasta query_DB/R3P10_neg_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P12_neg_0.5K_formatted.fasta query_DB/R3P12_neg_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P14_neg_0.5K_formatted.fasta query_DB/R3P14_neg_0.5K
mmseqs createdb megahit_assembly/reduced_assemblies/rhizo_R3P18_neg_0.5K_formatted.fasta query_DB/R3P18_neg_0.5K

# Taxonomy assignment
mmseqs taxonomy query_DB/Control_B2_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/B2_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/Control_B3_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/B3_taxonomy_uniref90_0.5K  tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/Control_B4_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/B4_taxonomy_uniref90_0.5K  tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/Control_B5_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/B5_taxonomy_uniref90_0.5K  tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R1P1_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R1P1_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R1P5_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R1P5_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R1P9_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R1P9_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R1P14_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R1P14_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R1P18_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R1P18_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P3_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P3_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P5_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P5_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P11_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P11_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P15_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P15_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P20_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P20_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P9_neg_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P9_neg_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P10_neg_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P10_neg_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P12_neg_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P12_neg_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P14_neg_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P14_neg_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16
mmseqs taxonomy query_DB/R3P18_neg_0.5K /databasedisk1/mmseqs/uniref90 mmseqs2_output/uniref90/R3P18_neg_taxonomy_uniref90_0.5K tmp_taxonomy_uniref90_0.5K --search-type 2 --tax-lineage 1 --threads 16

# Convert taxonomy assignment output to tsv
mmseqs createtsv query_DB/Control_B2_0.5K mmseqs2_output/uniref90/B2_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/B2_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/Control_B3_0.5K mmseqs2_output/uniref90/B3_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/B3_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/Control_B4_0.5K mmseqs2_output/uniref90/B4_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/B4_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/Control_B5_0.5K mmseqs2_output/uniref90/B5_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/B5_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R1P1_0.5K mmseqs2_output/uniref90/R1P1_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R1P1_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R1P5_0.5K mmseqs2_output/uniref90/R1P5_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R1P5_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R1P9_0.5K mmseqs2_output/uniref90/R1P9_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R1P9_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R1P14_0.5K mmseqs2_output/uniref90/R1P14_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R1P14_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R1P18_0.5K mmseqs2_output/uniref90/R1P18_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R1P18_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P3_0.5K mmseqs2_output/uniref90/R3P3_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P3_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P5_0.5K mmseqs2_output/uniref90/R3P5_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P5_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P11_0.5K mmseqs2_output/uniref90/R3P11_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P11_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P15_0.5K mmseqs2_output/uniref90/R3P15_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P15_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P20_0.5K mmseqs2_output/uniref90/R3P20_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P20_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P9_neg_0.5K mmseqs2_output/uniref90/R3P9_neg_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P9_neg_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P10_neg_0.5K mmseqs2_output/uniref90/R3P10_neg_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P10_neg_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P12_neg_0.5K mmseqs2_output/uniref90/R3P12_neg_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P12_neg_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P14_neg_0.5K mmseqs2_output/uniref90/R3P14_neg_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P14_neg_taxonomy_uniref90_0.5K.tsv
mmseqs createtsv query_DB/R3P18_neg_0.5K mmseqs2_output/uniref90/R3P18_neg_taxonomy_uniref90_0.5K mmseqs2_output/uniref90/R3P18_neg_taxonomy_uniref90_0.5K.tsv

# Calculate abundance of each scaffold
grep 'd_' mmseqs2_output/uniref90/B2_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/B2_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/B3_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/B3_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/B4_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/B4_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/B5_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/B5_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R1P1_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R1P1_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R1P5_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R1P5_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R1P9_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R1P9_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R1P14_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R1P14_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R1P18_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R1P18_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P3_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P3_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P5_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P5_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P11_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P11_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P15_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P15_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P20_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P20_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P9_neg_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P9_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P10_neg_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P10_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P12_neg_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P12_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P14_neg_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P14_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output/uniref90/R3P18_neg_taxonomy_uniref90_0.5K.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_0.5K/R3P18_neg_taxonomy_scaffold_abundance.txt

# Get the taxonomy of each scaffold
grep 'd_' mmseqs2_output/uniref90/B2_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/B2_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/B3_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/B3_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/B4_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/B4_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/B5_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/B5_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R1P1_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R1P1_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R1P5_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R1P5_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R1P9_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R1P9_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R1P14_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R1P14_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R1P18_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R1P18_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P3_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P3_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P5_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P5_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P11_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P11_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P15_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P15_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P20_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P20_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P9_neg_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P9_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P10_neg_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P10_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P12_neg_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P12_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P14_neg_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P14_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output/uniref90/R3P18_neg_taxonomy_uniref90_0.5K.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_0.5K/R3P18_neg_scaffold_full_taxonomy.txt

# Remove unwanted taxonomic levels from the taxonomy
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/B2_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/B2_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/B3_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/B3_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/B4_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/B4_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/B5_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/B5_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R1P1_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R1P1_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R1P5_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R1P5_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R1P9_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R1P9_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R1P14_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R1P14_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R1P18_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R1P18_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P3_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P3_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P5_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P5_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P11_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P11_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P15_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P15_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P20_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P20_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P9_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P9_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P10_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P10_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P12_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P12_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P14_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P14_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_0.5K/R3P18_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_0.5K/R3P18_neg_scaffold_fixed_taxonomy.txt

# Merge scaffold_abundance.txt with fixed_taxonomy.txt into the krona_input.txt
paste tmp_taxonomy_uniref90_0.5K/B2_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/B2_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/B2.txt
paste tmp_taxonomy_uniref90_0.5K/B3_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/B3_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/B3.txt
paste tmp_taxonomy_uniref90_0.5K/B4_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/B4_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/B4.txt
paste tmp_taxonomy_uniref90_0.5K/B5_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/B5_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/B5.txt
paste tmp_taxonomy_uniref90_0.5K/R1P1_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R1P1_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R1P1.txt
paste tmp_taxonomy_uniref90_0.5K/R1P5_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R1P5_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R1P5.txt
paste tmp_taxonomy_uniref90_0.5K/R1P9_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R1P9_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R1P9.txt
paste tmp_taxonomy_uniref90_0.5K/R1P14_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R1P14_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R1P14.txt
paste tmp_taxonomy_uniref90_0.5K/R1P18_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R1P18_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R1P18.txt
paste tmp_taxonomy_uniref90_0.5K/R3P3_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P3_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P3.txt
paste tmp_taxonomy_uniref90_0.5K/R3P5_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P5_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P5.txt
paste tmp_taxonomy_uniref90_0.5K/R3P11_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P11_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P11.txt
paste tmp_taxonomy_uniref90_0.5K/R3P15_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P15_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P15.txt
paste tmp_taxonomy_uniref90_0.5K/R3P20_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P20_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P20.txt
paste tmp_taxonomy_uniref90_0.5K/R3P9_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P9_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P9_neg.txt
paste tmp_taxonomy_uniref90_0.5K/R3P10_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P10_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P10_neg.txt
paste tmp_taxonomy_uniref90_0.5K/R3P12_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P12_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P12_neg.txt
paste tmp_taxonomy_uniref90_0.5K/R3P14_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P14_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P14_neg.txt
paste tmp_taxonomy_uniref90_0.5K/R3P18_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_0.5K/R3P18_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output/uniref90/krona_input/R3P18_neg.txt

# Generate krona plots
#ktImportText -o mmseqs2_output/uniref90/krona_output/B2.html mmseqs2_output/uniref90/krona_input/B2.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/B3.html mmseqs2_output/uniref90/krona_input/B3.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/B4.html mmseqs2_output/uniref90/krona_input/B4.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/B5.html mmseqs2_output/uniref90/krona_input/B5.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R1P1.html mmseqs2_output/uniref90/krona_input/R1P1.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R1P5.html mmseqs2_output/uniref90/krona_input/R1P5.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R1P9.html mmseqs2_output/uniref90/krona_input/R1P9.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R1P14.html mmseqs2_output/uniref90/krona_input/R1P14.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R1P18.html mmseqs2_output/uniref90/krona_input/R1P18.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P3.html mmseqs2_output/uniref90/krona_input/R3P3.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P5.html mmseqs2_output/uniref90/krona_input/R3P5.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P11.html mmseqs2_output/uniref90/krona_input/R3P11.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P15.html mmseqs2_output/uniref90/krona_input/R3P15.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P20.html mmseqs2_output/uniref90/krona_input/R3P20.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P9_neg.html mmseqs2_output/uniref90/krona_input/R3P9_neg.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P10_neg.html mmseqs2_output/uniref90/krona_input/R3P10_neg.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P12_neg.html mmseqs2_output/uniref90/krona_input/R3P12_neg.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P14_neg.html mmseqs2_output/uniref90/krona_input/R3P14_neg.txt
#ktImportText -o mmseqs2_output/uniref90/krona_output/R3P18_neg.html mmseqs2_output/uniref90/krona_input/R3P18_neg.txt

# Remove the temporary directory
rm -r tmp_taxonomy_uniref90_0.5K
