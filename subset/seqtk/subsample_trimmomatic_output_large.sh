#!/bin/bash
#SBATCH --time=48:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

# make output directory
mkdir trimmomatic_output_28206741_read_sample

# unzip the trimmomatic fastq.gz files
gunzip -c trimmomatic_output/rhizo_Control_B2_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B2_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B2_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B2_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B3_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B3_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B3_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B3_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B4_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B4_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B4_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B4_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B5_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B5_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_Control_B5_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_Control_B5_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P1_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P1_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P1_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P1_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P5_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P5_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P5_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P5_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P9_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P9_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P9_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P9_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P11_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P11_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P11_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P11_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P14_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P14_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P14_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P14_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P18_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P18_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R1P18_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R1P18_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P3_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P3_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P3_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P3_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P5_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P5_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P5_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P5_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P11_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P11_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P11_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P11_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P15_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P15_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P15_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P15_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P20_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P20_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P20_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P20_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P9_neg_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P9_neg_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P9_neg_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P9_neg_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P10_neg_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P10_neg_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P10_neg_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P10_neg_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P12_neg_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P12_neg_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P12_neg_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P12_neg_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P14_neg_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P14_neg_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P14_neg_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P14_neg_R2.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P18_neg_R1.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P18_neg_R1.bbduk.trimmed.fastq
gunzip -c trimmomatic_output/rhizo_R3P18_neg_R2.bbduk.trimmed.fastq.gz > trimmomatic_output_unzipped/rhizo_R3P18_neg_R2.bbduk.trimmed.fastq

# subsample 28206741 (90% of reads from smallest file)  reads from two large paired FASTQ files
seqtk sample -s99 trimmomatic_output_unzipped/rhizo_Control_B2_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B2_R1.bbduk.trimmed.fastq
seqtk sample -s99 trimmomatic_output_unzipped/rhizo_Control_B2_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B2_R2.bbduk.trimmed.fastq
seqtk sample -s98 trimmomatic_output_unzipped/rhizo_Control_B3_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B3_R1.bbduk.trimmed.fastq
seqtk sample -s98 trimmomatic_output_unzipped/rhizo_Control_B3_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B3_R2.bbduk.trimmed.fastq
seqtk sample -s97 trimmomatic_output_unzipped/rhizo_Control_B4_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B4_R1.bbduk.trimmed.fastq
seqtk sample -s97 trimmomatic_output_unzipped/rhizo_Control_B4_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B4_R2.bbduk.trimmed.fastq
seqtk sample -s96 trimmomatic_output_unzipped/rhizo_Control_B5_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B5_R1.bbduk.trimmed.fastq
seqtk sample -s96 trimmomatic_output_unzipped/rhizo_Control_B5_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_Control_B5_R2.bbduk.trimmed.fastq
seqtk sample -s95 trimmomatic_output_unzipped/rhizo_R1P1_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P1_R1.bbduk.trimmed.fastq
seqtk sample -s95 trimmomatic_output_unzipped/rhizo_R1P1_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P1_R2.bbduk.trimmed.fastq
seqtk sample -s94 trimmomatic_output_unzipped/rhizo_R1P5_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P5_R1.bbduk.trimmed.fastq
seqtk sample -s94 trimmomatic_output_unzipped/rhizo_R1P5_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P5_R2.bbduk.trimmed.fastq
seqtk sample -s93 trimmomatic_output_unzipped/rhizo_R1P9_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P9_R1.bbduk.trimmed.fastq
seqtk sample -s93 trimmomatic_output_unzipped/rhizo_R1P9_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P9_R2.bbduk.trimmed.fastq
seqtk sample -s92 trimmomatic_output_unzipped/rhizo_R3P11_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P11_R1.bbduk.trimmed.fastq
seqtk sample -s92 trimmomatic_output_unzipped/rhizo_R3P11_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P11_R2.bbduk.trimmed.fastq
seqtk sample -s91 trimmomatic_output_unzipped/rhizo_R1P14_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P14_R1.bbduk.trimmed.fastq
seqtk sample -s91 trimmomatic_output_unzipped/rhizo_R1P14_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P14_R2.bbduk.trimmed.fastq
seqtk sample -s90 trimmomatic_output_unzipped/rhizo_R1P18_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P18_R1.bbduk.trimmed.fastq
seqtk sample -s90 trimmomatic_output_unzipped/rhizo_R1P18_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R1P18_R2.bbduk.trimmed.fastq
seqtk sample -s89 trimmomatic_output_unzipped/rhizo_R3P3_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P3_R1.bbduk.trimmed.fastq
seqtk sample -s89 trimmomatic_output_unzipped/rhizo_R3P3_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P3_R2.bbduk.trimmed.fastq
seqtk sample -s88 trimmomatic_output_unzipped/rhizo_R3P5_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P5_R1.bbduk.trimmed.fastq
seqtk sample -s88 trimmomatic_output_unzipped/rhizo_R3P5_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P5_R2.bbduk.trimmed.fastq
seqtk sample -s87 trimmomatic_output_unzipped/rhizo_R3P11_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P11_R1.bbduk.trimmed.fastq
seqtk sample -s87 trimmomatic_output_unzipped/rhizo_R3P11_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P11_R2.bbduk.trimmed.fastq
seqtk sample -s86 trimmomatic_output_unzipped/rhizo_R3P15_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P15_R1.bbduk.trimmed.fastq
seqtk sample -s86 trimmomatic_output_unzipped/rhizo_R3P15_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P15_R2.bbduk.trimmed.fastq
seqtk sample -s85 trimmomatic_output_unzipped/rhizo_R3P20_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P20_R1.bbduk.trimmed.fastq
seqtk sample -s85 trimmomatic_output_unzipped/rhizo_R3P20_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P20_R2.bbduk.trimmed.fastq
seqtk sample -s84 trimmomatic_output_unzipped/rhizo_R3P9_neg_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P9_neg_R1.bbduk.trimmed.fastq
seqtk sample -s84 trimmomatic_output_unzipped/rhizo_R3P9_neg_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P9_neg_R2.bbduk.trimmed.fastq
seqtk sample -s83 trimmomatic_output_unzipped/rhizo_R3P10_neg_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P10_neg_R1.bbduk.trimmed.fastq
seqtk sample -s83 trimmomatic_output_unzipped/rhizo_R3P10_neg_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P10_neg_R2.bbduk.trimmed.fastq
seqtk sample -s82 trimmomatic_output_unzipped/rhizo_R3P12_neg_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P12_neg_R1.bbduk.trimmed.fastq
seqtk sample -s82 trimmomatic_output_unzipped/rhizo_R3P12_neg_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P12_neg_R2.bbduk.trimmed.fastq
seqtk sample -s81 trimmomatic_output_unzipped/rhizo_R3P14_neg_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P14_neg_R1.bbduk.trimmed.fastq
seqtk sample -s81 trimmomatic_output_unzipped/rhizo_R3P14_neg_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P14_neg_R2.bbduk.trimmed.fastq
seqtk sample -s80 trimmomatic_output_unzipped/rhizo_R3P18_neg_R1.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P18_neg_R1.bbduk.trimmed.fastq
seqtk sample -s80 trimmomatic_output_unzipped/rhizo_R3P18_neg_R2.bbduk.trimmed.fastq 28206741 > trimmomatic_output_28206741_read_sample/rhizo_R3P18_neg_R2.bbduk.trimmed.fastq
