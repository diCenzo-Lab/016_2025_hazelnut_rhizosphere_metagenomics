#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

# combine input files
cat B2.txt B3.txt B4.txt B5.txt > control_combined.txt
cat R1P1.txt R1P5.txt R1P9.txt R1P14.txt R1P18.txt > native_combined.txt
cat R3P3.txt R3P5.txt R3P11.txt R3P15.txt R3P20.txt > susc_combined.txt
cat R3P9_neg.txt R3P10_neg.txt R3P12_neg.txt R3P14_neg.txt R3P18_neg.txt > res_combined.txt

# generate krona plots
ktImportText -o control_combined.html control_combined.txt
ktImportText -o native_combined.html native_combined.txt
ktImportText -o susc_combined.html susc_combined.txt
ktImportText -o res_combined.html res_combined.txt
