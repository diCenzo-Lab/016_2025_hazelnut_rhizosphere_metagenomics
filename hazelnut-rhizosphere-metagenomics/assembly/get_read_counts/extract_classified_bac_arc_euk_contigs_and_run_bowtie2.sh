#!/bin/bash
#SBATCH --time=72:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

# Use awk to extract contig names for contigs that have been classified, fix format of output, pull out contigs with pullseq and map initial reads with bowtie2
while IFS=$'\t' read -r sample_name_1 sample_name_2 forward_reads reverse_reads
do
 # Filter mmseqs2 contig identities with awk
 awk -F'\t' '$2 != 0 {print $1}' mmseqs2_output/uniref90/"$sample_name_2"_taxonomy_uniref90_0.5K.tsv > mmseqs2_output/uniref90/"$sample_name_2"_classified.txt
 awk -F'_' '{print $1 "_" $2}' mmseqs2_output/uniref90/"$sample_name_2"_classified.txt > mmseqs2_output/uniref90/"$sample_name_2"_classified_fixed.txt
 awk '/Bacteria/' mmseqs2_output/uniref90/"$sample_name_2"_taxonomy_uniref90_0.5K.tsv > mmseqs2_output/uniref90/"$sample_name_2"_bac_classified.txt
 awk -F'_' '{print $1 "_" $2}' mmseqs2_output/uniref90/"$sample_name_2"_bac_classified.txt > mmseqs2_output/uniref90/"$sample_name_2"_bac_classified_fixed.txt
 awk '/Archaea/' mmseqs2_output/uniref90/"$sample_name_2"_taxonomy_uniref90_0.5K.tsv > mmseqs2_output/uniref90/"$sample_name_2"_arc_classified.txt
 awk -F'_' '{print $1 "_" $2}' mmseqs2_output/uniref90/"$sample_name_2"_arc_classified.txt > mmseqs2_output/uniref90/"$sample_name_2"_arc_classified_fixed.txt
 awk '/Eukaryota/' mmseqs2_output/uniref90/"$sample_name_2"_taxonomy_uniref90_0.5K.tsv > mmseqs2_output/uniref90/"$sample_name_2"_euk_classified.txt
 awk -F'_' '{print $1 "_" $2}' mmseqs2_output/uniref90/"$sample_name_2"_euk_classified.txt > mmseqs2_output/uniref90/"$sample_name_2"_euk_classified_fixed.txt
 # Filter subset of contigs that match identifiers with pullseq
 pullseq -i megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K.fasta -n mmseqs2_output/uniref90/"$sample_name_2"_classified_fixed.txt > megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_classified.fasta
 pullseq -i megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K.fasta -n mmseqs2_output/uniref90/"$sample_name_2"_bac_classified_fixed.txt > megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_bac_classified.fasta
 pullseq -i megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K.fasta -n mmseqs2_output/uniref90/"$sample_name_2"_arc_classified_fixed.txt > megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_arc_classified.fasta
 pullseq -i megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K.fasta -n mmseqs2_output/uniref90/"$sample_name_2"_euk_classified_fixed.txt > megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_euk_classified.fasta
 # Map reads to respective contig subsets with bowtie2
 bowtie2-build --threads 32 --large-index megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_classified.fasta bowtie2_indexes/"$sample_name_1"_0.5K_classified
 bowtie2 --threads 32 -x bowtie2_indexes/"$sample_name_1"_0.5K_classified -1 raw_illumina/"$forward_reads" -2 raw_illumina/"$reverse_reads" -S bowtie2_related/"$sample_name_1"_0.5K_classified.sam 2> bowtie2_related/bowtie2_log/"$sample_name_1"_0.5K_classified_stats.txt
 bowtie2-build --threads 32 --large-index megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_bac_classified.fasta bowtie2_indexes/"$sample_name_1"_0.5K_bac_classified
 bowtie2 --threads 32 -x bowtie2_indexes/"$sample_name_1"_0.5K_bac_classified -1 raw_illumina/"$forward_reads" -2 raw_illumina/"$reverse_reads" -S bowtie2_related/"$sample_name_1"_0.5K_bac_classified.sam 2> bowtie2_related/bowtie2_log/"$sample_name_1"_0.5K_bac_classified_stats.txt
 bowtie2-build --threads 32 --large-index megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_arc_classified.fasta bowtie2_indexes/"$sample_name_1"_0.5K_arc_classified
 bowtie2 --threads 32 -x bowtie2_indexes/"$sample_name_1"_0.5K_arc_classified -1 raw_illumina/"$forward_reads" -2 raw_illumina/"$reverse_reads" -S bowtie2_related/"$sample_name_1"_0.5K_arc_classified.sam 2> bowtie2_related/bowtie2_log/"$sample_name_1"_0.5K_arc_classified_stats.txt
 bowtie2-build --threads 32 --large-index megahit_assembly/reduced_assemblies/"$sample_name_1"_0.5K_euk_classified.fasta bowtie2_indexes/"$sample_name_1"_0.5K_euk_classified
 bowtie2 --threads 32 -x bowtie2_indexes/"$sample_name_1"_0.5K_euk_classified -1 raw_illumina/"$forward_reads" -2 raw_illumina/"$reverse_reads" -S bowtie2_related/"$sample_name_1"_0.5K_euk_classified.sam 2> bowtie2_related/bowtie2_log/"$sample_name_1"_0.5K_euk_classified_stats.txt
done < samples_for_bowtie2.txt