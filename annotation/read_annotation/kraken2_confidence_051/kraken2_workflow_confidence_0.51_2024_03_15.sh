#!/bin/bash
#SBATCH --time=48:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M


# Hazelnut Rhizosphere Sample B2
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/Control_B2.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_237---IDT_i5_237.B2_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_237---IDT_i5_237.B2_R2.fastq.gz > kraken2_output_confidence_0.51/Control_B2.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B2.kreport -o kraken2_output_confidence_0.51/Control_B2.species.bracken -w kraken2_output_confidence_0.51/Control_B2.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B2.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B2.species.bracken.sorted
# Hazelnut Rhizosphere Sample B3
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/Control_B3.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_249---IDT_i5_249.B3_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_249---IDT_i5_249.B3_R2.fastq.gz > kraken2_output_confidence_0.51/Control_B3.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B3.kreport -o kraken2_output_confidence_0.51/Control_B3.species.bracken -w kraken2_output_confidence_0.51/Control_B3.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B3.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B3.species.bracken.sorted
# Hazelnut Rhizosphere Sample B5
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/Control_B5.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_261---IDT_i5_261.B5_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_261---IDT_i5_261.B5_R2.fastq.gz > kraken2_output_confidence_0.51/Control_B5.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B5.kreport -o kraken2_output_confidence_0.51/Control_B5.species.bracken -w kraken2_output_confidence_0.51/Control_B5.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B5.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B5.species.bracken.sorted
# Hazelnut Rhizosphere Sample R1P14
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R1P14.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_248---IDT_i5_248.R1P14_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_248---IDT_i5_248.R1P14_R2.fastq.gz > kraken2_output_confidence_0.51/R1P14.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P14.kreport -o kraken2_output_confidence_0.51/R1P14.species.bracken -w kraken2_output_confidence_0.51/R1P14.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P14.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P14.species.bracken.sorted
# Hazelnut Rhizosphere Sample R1P5
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R1P5.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_224---IDT_i5_224.R1P5_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_224---IDT_i5_224.R1P5_R2.fastq.gz > kraken2_output_confidence_0.51/R1P5.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P5.kreport -o kraken2_output_confidence_0.51/R1P5.species.bracken -w kraken2_output_confidence_0.51/R1P5.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P5.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P5.species.bracken.sorted
# Hazelnut Rhizosphere Sample R1P9
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R1P9.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_236---IDT_i5_236.R1P9_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_236---IDT_i5_236.R1P9_R2.fastq.gz > kraken2_output_confidence_0.51/R1P9.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P9.kreport -o kraken2_output_confidence_0.51/R1P9.species.bracken -w kraken2_output_confidence_0.51/R1P9.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P9.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P9.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P10 (-)
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P10_neg.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_284---IDT_i5_284.R3P10-_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_284---IDT_i5_284.R3P10-_R2.fastq.gz > kraken2_output_confidence_0.51/R3P10_neg.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P10_neg.kreport -o kraken2_output_confidence_0.51/R3P10_neg.species.bracken -w kraken2_output_confidence_0.51/R3P10_neg.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P10_neg.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P10_neg.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P12 (-)
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P12_neg.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_260---IDT_i5_260.R3P12-_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_260---IDT_i5_260.R3P12-_R2.fastq.gz > kraken2_output_confidence_0.51/R3P12_neg.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P12_neg.kreport -o kraken2_output_confidence_0.51/R3P12_neg.species.bracken -w kraken2_output_confidence_0.51/R3P12_neg.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P12_neg.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P12_neg.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P15
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P15.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_213---IDT_i5_213.R3P15_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_213---IDT_i5_213.R3P15_R2.fastq.gz > kraken2_output_confidence_0.51/R3P15.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P15.kreport -o kraken2_output_confidence_0.51/R3P15.species.bracken -w kraken2_output_confidence_0.51/R3P15.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P15.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P15.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P20
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P20.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_225---IDT_i5_225.R3P20_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_225---IDT_i5_225.R3P20_R2.fastq.gz > kraken2_output_confidence_0.51/R3P20.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P20.kreport -o kraken2_output_confidence_0.51/R3P20.species.bracken -w kraken2_output_confidence_0.51/R3P20.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P20.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P20.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P3
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P3.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_201---IDT_i5_201.R3P3_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_201---IDT_i5_201.R3P3_R2.fastq.gz > kraken2_output_confidence_0.51/R3P3.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P3.kreport -o kraken2_output_confidence_0.51/R3P3.species.bracken -w kraken2_output_confidence_0.51/R3P3.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P3.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P3.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P9 (-)
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P9_neg.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_272---IDT_i5_272.R3P9-_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.2043.003.IDT_i7_272---IDT_i5_272.R3P9-_R2.fastq.gz > kraken2_output_confidence_0.51/R3P9_neg.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P9_neg.kreport -o kraken2_output_confidence_0.51/R3P9_neg.species.bracken -w kraken2_output_confidence_0.51/R3P9_neg.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P9_neg.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P9_neg.species.bracken.sorted

## From second rhizosphere data set

# Hazelnut Rhizosphere Sample B4
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/Control_B4.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0081_i7---UDP0081_i5.B4_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0081_i7---UDP0081_i5.B4_R2.fastq.gz > kraken2_output_confidence_0.51/Control_B4.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B4.kreport -o kraken2_output_confidence_0.51/Control_B4.species.bracken -w kraken2_output_confidence_0.51/Control_B4.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B4.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B4.species.bracken.sorted
# Hazelnut Rhizosphere Sample R1P1
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R1P1.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0082_i7---UDP0082_i5.R1P1_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0082_i7---UDP0082_i5.R1P1_R2.fastq.gz > kraken2_output_confidence_0.51/R1P1.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P1.kreport -o kraken2_output_confidence_0.51/R1P1.species.bracken -w kraken2_output_confidence_0.51/R1P1.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P1.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P1.species.bracken.sorted
# Hazelnut Rhizosphere Sample R1P18
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R1P18.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0083_i7---UDP0083_i5.R1P18_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0083_i7---UDP0083_i5.R1P18_R2.fastq.gz > kraken2_output_confidence_0.51/R1P18.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P18.kreport -o kraken2_output_confidence_0.51/R1P18.species.bracken -w kraken2_output_confidence_0.51/R1P18.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P18.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P18.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P11
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P11.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0085_i7---UDP0085_i5.R3P11_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0085_i7---UDP0085_i5.R3P11_R2.fastq.gz > kraken2_output_confidence_0.51/R3P11.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P11.kreport -o kraken2_output_confidence_0.51/R3P11.species.bracken -w kraken2_output_confidence_0.51/R3P11.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P11.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P11.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P5
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P5.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0084V3_i7---UDP0084V3_i5.R3P5_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0084V3_i7---UDP0084V3_i5.R3P5_R2.fastq.gz > kraken2_output_confidence_0.51/R3P5.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P5.kreport -o kraken2_output_confidence_0.51/R3P5.species.bracken -w kraken2_output_confidence_0.51/R3P5.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P5.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P5.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P14 (-)
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P14_neg.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0086_i7---UDP0086_i5.R3P14-_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0086_i7---UDP0086_i5.R3P14-_R2.fastq.gz > kraken2_output_confidence_0.51/R3P14_neg.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P14_neg.kreport -o kraken2_output_confidence_0.51/R3P14_neg.species.bracken -w kraken2_output_confidence_0.51/R3P14_neg.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P14_neg.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P14_neg.species.bracken.sorted
# Hazelnut Rhizosphere Sample R3P18 (-)
kraken2 --db /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ --threads 32 --confidence 0.51 --paired --report kraken2_output_confidence_0.51/R3P18_neg.kreport /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0087_i7---UDP0087_i5.R3P18-_R1.fastq.gz /home/jkr22/scratch/hazelnut_metagenomics/illumina_data_combined/NS.LH00487_0009.007.UDP0087_i7---UDP0087_i5.R3P18-_R2.fastq.gz > kraken2_output_confidence_0.51/R3P18_neg.kraken
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P18_neg.kreport -o kraken2_output_confidence_0.51/R3P18_neg.species.bracken -w kraken2_output_confidence_0.51/R3P18_neg.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P18_neg.species.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P18_neg.species.bracken.sorted

# Domain level
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B2.kreport -o kraken2_output_confidence_0.51/Control_B2.domain.bracken -w kraken2_output_confidence_0.51/Control_B2.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B3.kreport -o kraken2_output_confidence_0.51/Control_B3.domain.bracken -w kraken2_output_confidence_0.51/Control_B3.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B5.kreport -o kraken2_output_confidence_0.51/Control_B5.domain.bracken -w kraken2_output_confidence_0.51/Control_B5.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P14.kreport -o kraken2_output_confidence_0.51/R1P14.domain.bracken -w kraken2_output_confidence_0.51/R1P14.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P5.kreport -o kraken2_output_confidence_0.51/R1P5.domain.bracken -w kraken2_output_confidence_0.51/R1P5.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P9.kreport -o kraken2_output_confidence_0.51/R1P9.domain.bracken -w kraken2_output_confidence_0.51/R1P9.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P10_neg.kreport -o kraken2_output_confidence_0.51/R3P10_neg.domain.bracken -w kraken2_output_confidence_0.51/R3P10_neg.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P12_neg.kreport -o kraken2_output_confidence_0.51/R3P12_neg.domain.bracken -w kraken2_output_confidence_0.51/R3P12_neg.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P15.kreport -o kraken2_output_confidence_0.51/R3P15.domain.bracken -w kraken2_output_confidence_0.51/R3P15.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P20.kreport -o kraken2_output_confidence_0.51/R3P20.domain.bracken -w kraken2_output_confidence_0.51/R3P20.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P3.kreport -o kraken2_output_confidence_0.51/R3P3.domain.bracken -w kraken2_output_confidence_0.51/R3P3.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P9_neg.kreport -o kraken2_output_confidence_0.51/R3P9_neg.domain.bracken -w kraken2_output_confidence_0.51/R3P9_neg.domain.kreport2 -r 151 -l D

sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B2.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B2.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B3.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B3.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B5.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B5.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P14.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P14.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P5.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P5.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P9.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P9.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P10_neg.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P10_neg.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P12_neg.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P12_neg.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P15.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P15.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P20.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P20.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P3.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P3.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P9_neg.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P9_neg.domain.bracken.sorted

# Domain level data set 2
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B4.kreport -o kraken2_output_confidence_0.51/Control_B4.domain.bracken -w kraken2_output_confidence_0.51/Control_B4.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P1.kreport -o kraken2_output_confidence_0.51/R1P1.domain.bracken -w kraken2_output_confidence_0.51/R1P1.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P18.kreport -o kraken2_output_confidence_0.51/R1P18.domain.bracken -w kraken2_output_confidence_0.51/R1P18.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P11.kreport -o kraken2_output_confidence_0.51/R3P11.domain.bracken -w kraken2_output_confidence_0.51/R3P11.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P5.kreport -o kraken2_output_confidence_0.51/R3P5.domain.bracken -w kraken2_output_confidence_0.51/R3P5.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P14_neg.kreport -o kraken2_output_confidence_0.51/R3P14_neg.domain.bracken -w kraken2_output_confidence_0.51/R3P14_neg.domain.kreport2 -r 151 -l D
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P18_neg.kreport -o kraken2_output_confidence_0.51/R3P18_neg.domain.bracken -w kraken2_output_confidence_0.51/R3P18_neg.domain.kreport2 -r 151 -l D

sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B4.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B4.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P1.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P1.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P18.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P18.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P11.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P11.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P5.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P5.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P14_neg.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P14_neg.domain.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P18_neg.domain.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P18_neg.domain.bracken.sorted

# Phylum level
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B2.kreport -o kraken2_output_confidence_0.51/Control_B2.phylum.bracken -w kraken2_output_confidence_0.51/Control_B2.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B3.kreport -o kraken2_output_confidence_0.51/Control_B3.phylum.bracken -w kraken2_output_confidence_0.51/Control_B3.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B5.kreport -o kraken2_output_confidence_0.51/Control_B5.phylum.bracken -w kraken2_output_confidence_0.51/Control_B5.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P14.kreport -o kraken2_output_confidence_0.51/R1P14.phylum.bracken -w kraken2_output_confidence_0.51/R1P14.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P5.kreport -o kraken2_output_confidence_0.51/R1P5.phylum.bracken -w kraken2_output_confidence_0.51/R1P5.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P9.kreport -o kraken2_output_confidence_0.51/R1P9.phylum.bracken -w kraken2_output_confidence_0.51/R1P9.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P10_neg.kreport -o kraken2_output_confidence_0.51/R3P10_neg.phylum.bracken -w kraken2_output_confidence_0.51/R3P10_neg.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P12_neg.kreport -o kraken2_output_confidence_0.51/R3P12_neg.phylum.bracken -w kraken2_output_confidence_0.51/R3P12_neg.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P15.kreport -o kraken2_output_confidence_0.51/R3P15.phylum.bracken -w kraken2_output_confidence_0.51/R3P15.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P20.kreport -o kraken2_output_confidence_0.51/R3P20.phylum.bracken -w kraken2_output_confidence_0.51/R3P20.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P3.kreport -o kraken2_output_confidence_0.51/R3P3.phylum.bracken -w kraken2_output_confidence_0.51/R3P3.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P9_neg.kreport -o kraken2_output_confidence_0.51/R3P9_neg.phylum.bracken -w kraken2_output_confidence_0.51/R3P9_neg.phylum.kreport2 -r 151 -l P

sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B2.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B2.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B3.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B3.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B5.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B5.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P14.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P14.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P5.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P5.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P9.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P9.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P10_neg.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P10_neg.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P12_neg.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P12_neg.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P15.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P15.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P20.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P20.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P3.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P3.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P9_neg.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P9_neg.phylum.bracken.sorted

# Phylum level, data set 2
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B4.kreport -o kraken2_output_confidence_0.51/Control_B4.phylum.bracken -w kraken2_output_confidence_0.51/Control_B4.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P1.kreport -o kraken2_output_confidence_0.51/R1P1.phylum.bracken -w kraken2_output_confidence_0.51/R1P1.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P18.kreport -o kraken2_output_confidence_0.51/R1P18.phylum.bracken -w kraken2_output_confidence_0.51/R1P18.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P11.kreport -o kraken2_output_confidence_0.51/R3P11.phylum.bracken -w kraken2_output_confidence_0.51/R3P11.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P5.kreport -o kraken2_output_confidence_0.51/R3P5.phylum.bracken -w kraken2_output_confidence_0.51/R3P5.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P14_neg.kreport -o kraken2_output_confidence_0.51/R3P14_neg.phylum.bracken -w kraken2_output_confidence_0.51/R3P14_neg.phylum.kreport2 -r 151 -l P
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P18_neg.kreport -o kraken2_output_confidence_0.51/R3P18_neg.phylum.bracken -w kraken2_output_confidence_0.51/R3P18_neg.phylum.kreport2 -r 151 -l P

sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B4.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B4.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P1.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P1.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P18.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P18.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P11.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P11.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P5.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P5.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P14_neg.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P14_neg.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P18_neg.phylum.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P18_neg.phylum.bracken.sorted


# Genus level
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B2.kreport -o kraken2_output_confidence_0.51/Control_B2.genus.bracken -w kraken2_output_confidence_0.51/Control_B2.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B3.kreport -o kraken2_output_confidence_0.51/Control_B3.genus.bracken -w kraken2_output_confidence_0.51/Control_B3.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B5.kreport -o kraken2_output_confidence_0.51/Control_B5.genus.bracken -w kraken2_output_confidence_0.51/Control_B5.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P14.kreport -o kraken2_output_confidence_0.51/R1P14.genus.bracken -w kraken2_output_confidence_0.51/R1P14.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P5.kreport -o kraken2_output_confidence_0.51/R1P5.genus.bracken -w kraken2_output_confidence_0.51/R1P5.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P9.kreport -o kraken2_output_confidence_0.51/R1P9.genus.bracken -w kraken2_output_confidence_0.51/R1P9.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P10_neg.kreport -o kraken2_output_confidence_0.51/R3P10_neg.genus.bracken -w kraken2_output_confidence_0.51/R3P10_neg.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P12_neg.kreport -o kraken2_output_confidence_0.51/R3P12_neg.genus.bracken -w kraken2_output_confidence_0.51/R3P12_neg.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P15.kreport -o kraken2_output_confidence_0.51/R3P15.genus.bracken -w kraken2_output_confidence_0.51/R3P15.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P20.kreport -o kraken2_output_confidence_0.51/R3P20.genus.bracken -w kraken2_output_confidence_0.51/R3P20.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P3.kreport -o kraken2_output_confidence_0.51/R3P3.genus.bracken -w kraken2_output_confidence_0.51/R3P3.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P9_neg.kreport -o kraken2_output_confidence_0.51/R3P9_neg.genus.bracken -w kraken2_output_confidence_0.51/R3P9_neg.genus.kreport2 -r 151 -l G

sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B2.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B2.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B3.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B3.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B5.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B5.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P14.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P14.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P5.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P5.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P9.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P9.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P10_neg.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P10_neg.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P12_neg.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P12_neg.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P15.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P15.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P20.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P20.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P3.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P3.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P9_neg.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P9_neg.genus.bracken.sorted

# Genus level, data set 2
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/Control_B4.kreport -o kraken2_output_confidence_0.51/Control_B4.genus.bracken -w kraken2_output_confidence_0.51/Control_B4.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P1.kreport -o kraken2_output_confidence_0.51/R1P1.genus.bracken -w kraken2_output_confidence_0.51/R1P1.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R1P18.kreport -o kraken2_output_confidence_0.51/R1P18.genus.bracken -w kraken2_output_confidence_0.51/R1P18.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P11.kreport -o kraken2_output_confidence_0.51/R3P11.genus.bracken -w kraken2_output_confidence_0.51/R3P11.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P5.kreport -o kraken2_output_confidence_0.51/R3P5.genus.bracken -w kraken2_output_confidence_0.51/R3P5.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P14_neg.kreport -o kraken2_output_confidence_0.51/R3P14_neg.genus.bracken -w kraken2_output_confidence_0.51/R3P14_neg.genus.kreport2 -r 151 -l G
bracken -d /home/jkr22/scratch/hazelnut_metagenomics/kraken_database_diCenzo_server/ -i kraken2_output_confidence_0.51/R3P18_neg.kreport -o kraken2_output_confidence_0.51/R3P18_neg.genus.bracken -w kraken2_output_confidence_0.51/R3P18_neg.genus.kreport2 -r 151 -l G

sed 's/ /_/g' kraken2_output_confidence_0.51/Control_B4.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/Control_B4.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P1.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P1.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R1P18.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R1P18.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P11.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P11.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P5.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P5.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P14_neg.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P14_neg.genus.bracken.sorted
sed 's/ /_/g' kraken2_output_confidence_0.51/R3P18_neg.genus.bracken | sort -g -r -k7,7 > kraken2_output_confidence_0.51/R3P18_neg.genus.bracken.sorted

python2.7 /home/jkr22/scratch/hazelnut_metagenomics/combine_bracken_outputs.py --files kraken2_output_confidence_0.51/*.species.bracken -o kraken2_output_confidence_0.51/combined.species.bracken
python2.7 /home/jkr22/scratch/hazelnut_metagenomics/combine_bracken_outputs.py --files kraken2_output_confidence_0.51/*.domain.bracken -o kraken2_output_confidence_0.51/combined.domain.bracken
python2.7 /home/jkr22/scratch/hazelnut_metagenomics/combine_bracken_outputs.py --files kraken2_output_confidence_0.51/*.phylum.bracken -o kraken2_output_confidence_0.51/combined.phylum.bracken
python2.7 /home/jkr22/scratch/hazelnut_metagenomics/combine_bracken_outputs.py --files kraken2_output_confidence_0.51/*.genus.bracken -o kraken2_output_confidence_0.51/combined.genus.bracken



#Compress kraken output
pigz -p 32 kraken2_output_confidence_0.51/*.kraken
