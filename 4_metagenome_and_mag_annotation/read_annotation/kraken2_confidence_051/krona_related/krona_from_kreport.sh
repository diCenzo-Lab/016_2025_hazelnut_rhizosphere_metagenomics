#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

# Combine kreports

python3 combine_kreports.py -r kraken2_output_confidence_0.51/Control_B2.kreport kraken2_output_confidence_0.51/Control_B3.kreport kraken2_output_confidence_0.51/Control_B4.kreport kraken2_output_confidence_0.51/Control_B5.kreport -o kraken2_output_confidence_0.51/Combined_Control.kreport --only-combined
python3 combine_kreports.py -r kraken2_output_confidence_0.51/R1P5.kreport kraken2_output_confidence_0.51/R1P9.kreport kraken2_output_confidence_0.51/R1P14.kreport kraken2_output_confidence_0.51/R1P18.kreport kraken2_output_confidence_0.51/R1P1.kreport -o kraken2_output_confidence_0.51/Combined_R1.kreport --only-combined
python3 combine_kreports.py -r kraken2_output_confidence_0.51/R3P10_neg.kreport kraken2_output_confidence_0.51/R3P12_neg.kreport kraken2_output_confidence_0.51/R3P9_neg.kreport kraken2_output_confidence_0.51/R3P18_neg.kreport kraken2_output_confidence_0.51/R3P14_neg.kreport -o kraken2_output_confidence_0.51/Combined_R3_neg.kreport --only-combined
python3 combine_kreports.py -r kraken2_output_confidence_0.51/R3P15.kreport kraken2_output_confidence_0.51/R3P20.kreport kraken2_output_confidence_0.51/R3P3.kreport kraken2_output_confidence_0.51/R3P11.kreport kraken2_output_confidence_0.51/R3P5.kreport -o kraken2_output_confidence_0.51/Combined_R3.kreport --only-combined 

# Generate krona-compatible TEXT file

python3 kreport2krona.py -r kraken2_output_confidence_0.51/Combined_Control.kreport -o Combined_Control.krona
python3 kreport2krona.py -r kraken2_output_confidence_0.51/Combined_R1.kreport -o Combined_R1.krona
python3 kreport2krona.py -r kraken2_output_confidence_0.51/Combined_R3_neg.kreport -o Combined_R3_neg.krona
python3 kreport2krona.py -r kraken2_output_confidence_0.51/Combined_R3.kreport -o Combined_R3.krona

# Generate krona html from krona-compatible TEXT file

ktImportText Combined_Control.krona -o Combined_Control.krona.html
ktImportText Combined_R1.krona -o Combined_R1.krona.html
ktImportText Combined_R3_neg.krona -o Combined_R3_neg.krona.html
ktImportText Combined_R3.krona -o Combined_R3.krona.html
