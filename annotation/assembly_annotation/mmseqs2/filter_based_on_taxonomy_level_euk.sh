#!/bin/bash

# abundance output processed at phylum level
grep 'p_' B2_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B2_phylum_euk.txt
grep 'p_' B3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B3_phylum_euk.txt
grep 'p_' B4_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B4_phylum_euk.txt
grep 'p_' B5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > B5_phylum_euk.txt
grep 'p_' R1P1_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P1_phylum_euk.txt
grep 'p_' R1P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P5_phylum_euk.txt
grep 'p_' R1P9_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P9_phylum_euk.txt
grep 'p_' R1P14_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P14_phylum_euk.txt
grep 'p_' R1P18_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R1P18_phylum_euk.txt
grep 'p_' R3P3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P3_phylum_euk.txt
grep 'p_' R3P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P5_phylum_euk.txt
grep 'p_' R3P11_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P11_phylum_euk.txt
grep 'p_' R3P15_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P15_phylum_euk.txt
grep 'p_' R3P20_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P20_phylum_euk.txt
grep 'p_' R3P9_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P9_neg_phylum_euk.txt
grep 'p_' R3P10_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P10_neg_phylum_euk.txt
grep 'p_' R3P12_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P12_neg_phylum_euk.txt
grep 'p_' R3P14_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P14_neg_phylum_euk.txt
grep 'p_' R3P18_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /p_/ {for(i=1;i<=NF;i++) if($i~"^p_") {sub("^p_", "", $i); print $1 "\t" $i}}' > R3P18_neg_phylum_euk.txt

# abundance output processed at class level
grep 'c_' B2_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B2_class_euk.txt
grep 'c_' B3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B3_class_euk.txt
grep 'c_' B4_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B4_class_euk.txt
grep 'c_' B5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > B5_class_euk.txt
grep 'c_' R1P1_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P1_class_euk.txt
grep 'c_' R1P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P5_class_euk.txt
grep 'c_' R1P9_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P9_class_euk.txt
grep 'c_' R1P14_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P14_class_euk.txt
grep 'c_' R1P18_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R1P18_class_euk.txt
grep 'c_' R3P3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P3_class_euk.txt
grep 'c_' R3P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P5_class_euk.txt
grep 'c_' R3P11_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P11_class_euk.txt
grep 'c_' R3P15_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P15_class_euk.txt
grep 'c_' R3P20_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P20_class_euk.txt
grep 'c_' R3P9_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P9_neg_class_euk.txt
grep 'c_' R3P10_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P10_neg_class_euk.txt
grep 'c_' R3P12_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P12_neg_class_euk.txt
grep 'c_' R3P14_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P14_neg_class_euk.txt
grep 'c_' R3P18_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /c_/ {for(i=1;i<=NF;i++) if($i~"^c_") {sub("^c_", "", $i); print $1 "\t" $i}}' > R3P18_neg_class_euk.txt

# abundance output processed at genus level
grep 'g_' B2_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B2_genus_euk.txt
grep 'g_' B3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B3_genus_euk.txt
grep 'g_' B4_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B4_genus_euk.txt
grep 'g_' B5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > B5_genus_euk.txt
grep 'g_' R1P1_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P1_genus_euk.txt
grep 'g_' R1P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P5_genus_euk.txt
grep 'g_' R1P9_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P9_genus_euk.txt
grep 'g_' R1P14_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P14_genus_euk.txt
grep 'g_' R1P18_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R1P18_genus_euk.txt
grep 'g_' R3P3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P3_genus_euk.txt
grep 'g_' R3P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P5_genus_euk.txt
grep 'g_' R3P11_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P11_genus_euk.txt
grep 'g_' R3P15_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P15_genus_euk.txt
grep 'g_' R3P20_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P20_genus_euk.txt
grep 'g_' R3P9_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P9_neg_genus_euk.txt
grep 'g_' R3P10_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P10_neg_genus_euk.txt
grep 'g_' R3P12_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P12_neg_genus_euk.txt
grep 'g_' R3P14_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P14_neg_genus_euk.txt
grep 'g_' R3P18_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /g_/ {for(i=1;i<=NF;i++) if($i~"^g_") {sub("^g_", "", $i); print $1 "\t" $i}}' > R3P18_neg_genus_euk.txt

# abundance output processed at species level
grep 's_' B2_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B2_species_euk.txt
grep 's_' B3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B3_species_euk.txt
grep 's_' B4_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B4_species_euk.txt
grep 's_' B5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > B5_species_euk.txt
grep 's_' R1P1_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P1_species_euk.txt
grep 's_' R1P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P5_species_euk.txt
grep 's_' R1P9_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P9_species_euk.txt
grep 's_' R1P14_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P14_species_euk.txt
grep 's_' R1P18_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R1P18_species_euk.txt
grep 's_' R3P3_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P3_species_euk.txt
grep 's_' R3P5_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P5_species_euk.txt
grep 's_' R3P11_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P11_species_euk.txt
grep 's_' R3P15_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P15_species_euk.txt
grep 's_' R3P20_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P20_species_euk.txt
grep 's_' R3P9_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P9_neg_species_euk.txt
grep 's_' R3P10_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P10_neg_species_euk.txt
grep 's_' R3P12_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P12_neg_species_euk.txt
grep 's_' R3P14_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P14_neg_species_euk.txt
grep 's_' R3P18_neg_euk.txt | awk 'BEGIN {FS="\t"; OFS="\t"} /s_/ {for(i=1;i<=NF;i++) if($i~"^s_") {sub("^s_", "", $i); print $1 "\t" $i}}' > R3P18_neg_species_euk.txt
