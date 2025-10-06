#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --account=def-gd38
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem-per-cpu=3500M

# abundance output processed at phylum level
grep 'p_' B2.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B2_phylum.txt
grep 'p_' B3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B3_phylum.txt
grep 'p_' B4.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B4_phylum.txt
grep 'p_' B5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B5_phylum.txt
grep 'p_' R1P1.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P1_phylum.txt
grep 'p_' R1P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P5_phylum.txt
grep 'p_' R1P9.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P9_phylum.txt
grep 'p_' R1P14.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P14_phylum.txt
grep 'p_' R1P18.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P18_phylum.txt
grep 'p_' R3P3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P3_phylum.txt
grep 'p_' R3P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P5_phylum.txt
grep 'p_' R3P11.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P11_phylum.txt
grep 'p_' R3P15.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P15_phylum.txt
grep 'p_' R3P20.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P20_phylum.txt
grep 'p_' R3P9_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P9_neg_phylum.txt
grep 'p_' R3P10_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P10_neg_phylum.txt
grep 'p_' R3P12_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P12_neg_phylum.txt
grep 'p_' R3P14_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P14_neg_phylum.txt
grep 'p_' R3P18_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P18_neg_phylum.txt

# abundance output processed at class level
grep 'c_' B2.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B2_class.txt
grep 'c_' B3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B3_class.txt
grep 'c_' B4.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B4_class.txt
grep 'c_' B5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B5_class.txt
grep 'c_' R1P1.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P1_class.txt
grep 'c_' R1P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P5_class.txt
grep 'c_' R1P9.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P9_class.txt
grep 'c_' R1P14.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P14_class.txt
grep 'c_' R1P18.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P18_class.txt
grep 'c_' R3P3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P3_class.txt
grep 'c_' R3P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P5_class.txt
grep 'c_' R3P11.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P11_class.txt
grep 'c_' R3P15.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P15_class.txt
grep 'c_' R3P20.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P20_class.txt
grep 'c_' R3P9_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P9_neg_class.txt
grep 'c_' R3P10_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P10_neg_class.txt
grep 'c_' R3P12_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P12_neg_class.txt
grep 'c_' R3P14_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P14_neg_class.txt
grep 'c_' R3P18_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P18_neg_class.txt

# abundance output processed at genus level
grep 'g_' B2.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B2_genus.txt
grep 'g_' B3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B3_genus.txt
grep 'g_' B4.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B4_genus.txt
grep 'g_' B5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B5_genus.txt
grep 'g_' R1P1.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P1_genus.txt
grep 'g_' R1P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P5_genus.txt
grep 'g_' R1P9.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P9_genus.txt
grep 'g_' R1P14.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P14_genus.txt
grep 'g_' R1P18.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P18_genus.txt
grep 'g_' R3P3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P3_genus.txt
grep 'g_' R3P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P5_genus.txt
grep 'g_' R3P11.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P11_genus.txt
grep 'g_' R3P15.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P15_genus.txt
grep 'g_' R3P20.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P20_genus.txt
grep 'g_' R3P9_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P9_neg_genus.txt
grep 'g_' R3P10_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P10_neg_genus.txt
grep 'g_' R3P12_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P12_neg_genus.txt
grep 'g_' R3P14_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P14_neg_genus.txt
grep 'g_' R3P18_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P18_neg_genus.txt

# abundance output processed at species level
grep 's_' B2.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B2_species.txt
grep 's_' B3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B3_species.txt
grep 's_' B4.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B4_species.txt
grep 's_' B5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B5_species.txt
grep 's_' R1P1.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P1_species.txt
grep 's_' R1P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P5_species.txt
grep 's_' R1P9.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P9_species.txt
grep 's_' R1P14.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P14_species.txt
grep 's_' R1P18.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P18_species.txt
grep 's_' R3P3.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P3_species.txt
grep 's_' R3P5.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P5_species.txt
grep 's_' R3P11.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P11_species.txt
grep 's_' R3P15.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P15_species.txt
grep 's_' R3P20.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P20_species.txt
grep 's_' R3P9_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P9_neg_species.txt
grep 's_' R3P10_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P10_neg_species.txt
grep 's_' R3P12_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P12_neg_species.txt
grep 's_' R3P14_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P14_neg_species.txt
grep 's_' R3P18_neg.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P18_neg_species.txt
