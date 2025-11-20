#!/bin/bash

# Create necessary directories

# Reformat
python3 format_megahit.py megahit_subset_output/rhizo_Control_B2_0.5K.fasta megahit_subset_output/rhizo_Control_B2_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_Control_B3_0.5K.fasta megahit_subset_output/rhizo_Control_B3_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_Control_B4_0.5K.fasta megahit_subset_output/rhizo_Control_B4_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_Control_B5_0.5K.fasta megahit_subset_output/rhizo_Control_B5_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R1P1_0.5K.fasta megahit_subset_output/rhizo_R1P1_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R1P5_0.5K.fasta megahit_subset_output/rhizo_R1P5_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R1P9_0.5K.fasta megahit_subset_output/rhizo_R1P9_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R1P14_0.5K.fasta megahit_subset_output/rhizo_R1P14_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R1P18_0.5K.fasta megahit_subset_output/rhizo_R1P18_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P3_0.5K.fasta megahit_subset_output/rhizo_R3P3_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P5_0.5K.fasta megahit_subset_output/rhizo_R3P5_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P11_0.5K.fasta megahit_subset_output/rhizo_R3P11_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P15_0.5K.fasta megahit_subset_output/rhizo_R3P15_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P20_0.5K.fasta megahit_subset_output/rhizo_R3P20_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P9_neg_0.5K.fasta megahit_subset_output/rhizo_R3P9_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P10_neg_0.5K.fasta megahit_subset_output/rhizo_R3P10_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P12_neg_0.5K.fasta megahit_subset_output/rhizo_R3P12_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P14_neg_0.5K.fasta megahit_subset_output/rhizo_R3P14_neg_0.5K_formatted.fasta
python3 format_megahit.py megahit_subset_output/rhizo_R3P18_neg_0.5K.fasta megahit_subset_output/rhizo_R3P18_neg_0.5K_formatted.fasta

# Convert query sequences into query database
mmseqs createdb megahit_subset_output/rhizo_Control_B2_0.5K_formatted.fasta query_DB_subset/Control_B2
mmseqs createdb megahit_subset_output/rhizo_Control_B3_0.5K_formatted.fasta query_DB_subset/Control_B3
mmseqs createdb megahit_subset_output/rhizo_Control_B4_0.5K_formatted.fasta query_DB_subset/Control_B4
mmseqs createdb megahit_subset_output/rhizo_Control_B5_0.5K_formatted.fasta query_DB_subset/Control_B5
mmseqs createdb megahit_subset_output/rhizo_R1P1_0.5K_formatted.fasta query_DB_subset/R1P1
mmseqs createdb megahit_subset_output/rhizo_R1P5_0.5K_formatted.fasta query_DB_subset/R1P5
mmseqs createdb megahit_subset_output/rhizo_R1P9_0.5K_formatted.fasta query_DB_subset/R1P9
mmseqs createdb megahit_subset_output/rhizo_R1P14_0.5K_formatted.fasta query_DB_subset/R1P14
mmseqs createdb megahit_subset_output/rhizo_R1P18_0.5K_formatted.fasta query_DB_subset/R1P18
mmseqs createdb megahit_subset_output/rhizo_R3P3_0.5K_formatted.fasta query_DB_subset/R3P3
mmseqs createdb megahit_subset_output/rhizo_R3P5_0.5K_formatted.fasta query_DB_subset/R3P5
mmseqs createdb megahit_subset_output/rhizo_R3P11_0.5K_formatted.fasta query_DB_subset/R3P11
mmseqs createdb megahit_subset_output/rhizo_R3P15_0.5K_formatted.fasta query_DB_subset/R3P15
mmseqs createdb megahit_subset_output/rhizo_R3P20_0.5K_formatted.fasta query_DB_subset/R3P20
mmseqs createdb megahit_subset_output/rhizo_R3P9_neg_0.5K_formatted.fasta query_DB_subset/R3P9_neg
mmseqs createdb megahit_subset_output/rhizo_R3P10_neg_0.5K_formatted.fasta query_DB_subset/R3P10_neg
mmseqs createdb megahit_subset_output/rhizo_R3P12_neg_0.5K_formatted.fasta query_DB_subset/R3P12_neg
mmseqs createdb megahit_subset_output/rhizo_R3P14_neg_0.5K_formatted.fasta query_DB_subset/R3P14_neg
mmseqs createdb megahit_subset_output/rhizo_R3P18_neg_0.5K_formatted.fasta query_DB_subset/R3P18_neg

# Taxonomy assignment

mmseqs taxonomy query_DB_subset/Control_B2 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/B2_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/Control_B3 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/B3_taxonomy_uniref90  tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/Control_B4 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/B4_taxonomy_uniref90  tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/Control_B5 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/B5_taxonomy_uniref90  tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R1P1 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R1P1_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R1P5 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R1P5_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R1P9 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R1P9_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R1P14 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R1P14_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R1P18 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R1P18_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P3 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P3_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P5 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P5_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P11 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P11_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P15 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P15_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P20 /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P20_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P9_neg /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P9_neg_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P10_neg /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P10_neg_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P12_neg /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P12_neg_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P14_neg /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P14_neg_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8
mmseqs taxonomy query_DB_subset/R3P18_neg /databasedisk1/mmseqs/uniref90 mmseqs2_output_subset/uniref90/R3P18_neg_taxonomy_uniref90 tmp_taxonomy_uniref90_subset --search-type 2 --tax-lineage 1 --threads 8

# Convert taxonomy assignment output to tsv
mmseqs createtsv query_DB_subset/Control_B2 mmseqs2_output_subset/uniref90/B2_taxonomy_uniref90 mmseqs2_output_subset/uniref90/B2_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/Control_B3 mmseqs2_output_subset/uniref90/B3_taxonomy_uniref90 mmseqs2_output_subset/uniref90/B3_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/Control_B4 mmseqs2_output_subset/uniref90/B4_taxonomy_uniref90 mmseqs2_output_subset/uniref90/B4_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/Control_B5 mmseqs2_output_subset/uniref90/B5_taxonomy_uniref90 mmseqs2_output_subset/uniref90/B5_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R1P1 mmseqs2_output_subset/uniref90/R1P1_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R1P1_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R1P5 mmseqs2_output_subset/uniref90/R1P5_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R1P5_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R1P9 mmseqs2_output_subset/uniref90/R1P9_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R1P9_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R1P14 mmseqs2_output_subset/uniref90/R1P14_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R1P14_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R1P18 mmseqs2_output_subset/uniref90/R1P18_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R1P18_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P3 mmseqs2_output_subset/uniref90/R3P3_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P3_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P5 mmseqs2_output_subset/uniref90/R3P5_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P5_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P11 mmseqs2_output_subset/uniref90/R3P11_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P11_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P15 mmseqs2_output_subset/uniref90/R3P15_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P15_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P20 mmseqs2_output_subset/uniref90/R3P20_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P20_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P9_neg mmseqs2_output_subset/uniref90/R3P9_neg_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P9_neg_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P10_neg mmseqs2_output_subset/uniref90/R3P10_neg_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P10_neg_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P12_neg mmseqs2_output_subset/uniref90/R3P12_neg_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P12_neg_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P14_neg mmseqs2_output_subset/uniref90/R3P14_neg_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P14_neg_taxonomy_uniref90.tsv
mmseqs createtsv query_DB_subset/R3P18_neg mmseqs2_output_subset/uniref90/R3P18_neg_taxonomy_uniref90 mmseqs2_output_subset/uniref90/R3P18_neg_taxonomy_uniref90.tsv


# Calculate abundance of each scaffold
grep 'd_' mmseqs2_output_subset/uniref90/B2_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/B2_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/B3_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/B3_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/B4_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/B4_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/B5_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/B5_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P1_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R1P1_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P5_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R1P5_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P9_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R1P9_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P14_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R1P14_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P18_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R1P18_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P3_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P3_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P5_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P5_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P11_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P11_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P15_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P15_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P20_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P20_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P9_neg_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P9_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P10_neg_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P10_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P12_neg_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P12_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P14_neg_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P14_neg_taxonomy_scaffold_abundance.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P18_neg_taxonomy_uniref90.tsv | cut -f1 | cut -f4,6 -d'_' | sed 's/_/\t/' | awk '{ print $1 * $2 }' > tmp_taxonomy_uniref90_subset/R3P18_neg_taxonomy_scaffold_abundance.txt

# Get the taxonomy of each scaffold
grep 'd_' mmseqs2_output_subset/uniref90/B2_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/B2_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/B3_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/B3_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/B4_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/B4_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/B5_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/B5_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P1_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R1P1_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P5_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R1P5_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P9_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R1P9_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P14_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R1P14_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R1P18_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R1P18_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P3_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P3_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P5_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P5_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P11_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P11_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P15_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P15_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P20_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P20_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P9_neg_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P9_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P10_neg_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P10_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P12_neg_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P12_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P14_neg_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P14_neg_scaffold_full_taxonomy.txt
grep 'd_' mmseqs2_output_subset/uniref90/R3P18_neg_taxonomy_uniref90.tsv | cut -f9 | sed 's/-_cellular organisms;//g' | sed "s/;/\t/g" > tmp_taxonomy_uniref90_subset/R3P18_neg_scaffold_full_taxonomy.txt

# Remove unwanted taxonomic levels from the taxonomy
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/B2_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/B2_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/B3_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/B3_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/B4_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/B4_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/B5_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/B5_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R1P1_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R1P1_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R1P5_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R1P5_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R1P9_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R1P9_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R1P14_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R1P14_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R1P18_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R1P18_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P3_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P3_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P5_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P5_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P11_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P11_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P15_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P15_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P20_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P20_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P9_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P9_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P10_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P10_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P12_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P12_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P14_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P14_neg_scaffold_fixed_taxonomy.txt
perl fix_mmseqs_taxonomy.pl tmp_taxonomy_uniref90_subset/R3P18_neg_scaffold_full_taxonomy.txt > tmp_taxonomy_uniref90_subset/R3P18_neg_scaffold_fixed_taxonomy.txt

# Merge scaffold_abundance.txt with fixed_taxonomy.txt into the krona_input.txt
paste tmp_taxonomy_uniref90_subset/B2_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/B2_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/B2.txt
paste tmp_taxonomy_uniref90_subset/B3_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/B3_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/B3.txt
paste tmp_taxonomy_uniref90_subset/B4_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/B4_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/B4.txt
paste tmp_taxonomy_uniref90_subset/B5_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/B5_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/B5.txt
paste tmp_taxonomy_uniref90_subset/R1P1_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R1P1_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R1P1.txt
paste tmp_taxonomy_uniref90_subset/R1P5_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R1P5_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R1P5.txt
paste tmp_taxonomy_uniref90_subset/R1P9_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R1P9_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R1P9.txt
paste tmp_taxonomy_uniref90_subset/R1P14_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R1P14_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R1P14.txt
paste tmp_taxonomy_uniref90_subset/R1P18_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R1P18_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R1P18.txt
paste tmp_taxonomy_uniref90_subset/R3P3_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P3_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P3.txt
paste tmp_taxonomy_uniref90_subset/R3P5_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P5_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P5.txt
paste tmp_taxonomy_uniref90_subset/R3P11_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P11_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P11.txt
paste tmp_taxonomy_uniref90_subset/R3P15_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P15_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P15.txt
paste tmp_taxonomy_uniref90_subset/R3P20_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P20_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P20.txt
paste tmp_taxonomy_uniref90_subset/R3P9_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P9_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P9_neg.txt
paste tmp_taxonomy_uniref90_subset/R3P10_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P10_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P10_neg.txt
paste tmp_taxonomy_uniref90_subset/R3P12_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P12_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P12_neg.txt
paste tmp_taxonomy_uniref90_subset/R3P14_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P14_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P14_neg.txt
paste tmp_taxonomy_uniref90_subset/R3P18_neg_taxonomy_scaffold_abundance.txt tmp_taxonomy_uniref90_subset/R3P18_neg_scaffold_fixed_taxonomy.txt > mmseqs2_output_subset/uniref90/krona_input/R3P18_neg.txt

# Generate krona plots
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/B2.html mmseqs2_output_subset/uniref90/krona_input/B2.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/B3.html mmseqs2_output_subset/uniref90/krona_input/B3.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/B4.html mmseqs2_output_subset/uniref90/krona_input/B4.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/B5.html mmseqs2_output_subset/uniref90/krona_input/B5.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R1P1.html mmseqs2_output_subset/uniref90/krona_input/R1P1.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R1P5.html mmseqs2_output_subset/uniref90/krona_input/R1P5.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R1P9.html mmseqs2_output_subset/uniref90/krona_input/R1P9.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R1P14.html mmseqs2_output_subset/uniref90/krona_input/R1P14.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R1P18.html mmseqs2_output_subset/uniref90/krona_input/R1P18.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P3.html mmseqs2_output_subset/uniref90/krona_input/R3P3.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P5.html mmseqs2_output_subset/uniref90/krona_input/R3P5.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P11.html mmseqs2_output_subset/uniref90/krona_input/R3P11.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P15.html mmseqs2_output_subset/uniref90/krona_input/R3P15.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P20.html mmseqs2_output_subset/uniref90/krona_input/R3P20.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P9_neg.html mmseqs2_output_subset/uniref90/krona_input/R3P9_neg.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P10_neg.html mmseqs2_output_subset/uniref90/krona_input/R3P10_neg.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P12_neg.html mmseqs2_output_subset/uniref90/krona_input/R3P12_neg.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P14_neg.html mmseqs2_output_subset/uniref90/krona_input/R3P14_neg.txt
#ktImportText -o mmseqs2_output_subset/uniref90/krona_output/R3P18_neg.html mmseqs2_output_subset/uniref90/krona_input/R3P18_neg.txt

# Remove the temporary directory
rm -r tmp_taxonomy_uniref90_subset
