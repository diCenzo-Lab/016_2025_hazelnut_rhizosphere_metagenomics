# Make new directories and copy all bins to them
mkdir binning/dRep_output/
mkdir binning/dRep_input/DAS_Tool/
cp -r binning/DAS_Tool_output/rhizo*/*DASTool_bins binning/dRep_input/DAS_Tool/

# Rename the rhizo files
rename 's/concoct/rhizo_Control_B2_concoct/' binning/dRep_input/DAS_Tool/rhizo_Control_B2_DASTool_bins/*
rename 's/metabat/rhizo_Control_B2_metabat/' binning/dRep_input/DAS_Tool/rhizo_Control_B2_DASTool_bins/*
rename 's/maxbin/rhizo_Control_B2_maxbin/' binning/dRep_input/DAS_Tool/rhizo_Control_B2_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_Control_B2_semibin/' binning/dRep_input/DAS_Tool/rhizo_Control_B2_DASTool_bins/*
rename 's/concoct/rhizo_Control_B3_concoct/' binning/dRep_input/DAS_Tool/rhizo_Control_B3_DASTool_bins/*
rename 's/metabat/rhizo_Control_B3_metabat/' binning/dRep_input/DAS_Tool/rhizo_Control_B3_DASTool_bins/*
rename 's/maxbin/rhizo_Control_B3_maxbin/' binning/dRep_input/DAS_Tool/rhizo_Control_B3_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_Control_B3_semibin/' binning/dRep_input/DAS_Tool/rhizo_Control_B3_DASTool_bins/*
rename 's/concoct/rhizo_Control_B4_concoct/' binning/dRep_input/DAS_Tool/rhizo_Control_B4_DASTool_bins/*
rename 's/metabat/rhizo_Control_B4_metabat/' binning/dRep_input/DAS_Tool/rhizo_Control_B4_DASTool_bins/*
rename 's/maxbin/rhizo_Control_B4_maxbin/' binning/dRep_input/DAS_Tool/rhizo_Control_B4_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_Control_B4_semibin/' binning/dRep_input/DAS_Tool/rhizo_Control_B4_DASTool_bins/*
rename 's/concoct/rhizo_Control_B5_concoct/' binning/dRep_input/DAS_Tool/rhizo_Control_B5_DASTool_bins/*
rename 's/metabat/rhizo_Control_B5_metabat/' binning/dRep_input/DAS_Tool/rhizo_Control_B5_DASTool_bins/*
rename 's/maxbin/rhizo_Control_B5_maxbin/' binning/dRep_input/DAS_Tool/rhizo_Control_B5_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_Control_B5_semibin/' binning/dRep_input/DAS_Tool/rhizo_Control_B5_DASTool_bins/*

rename 's/concoct/rhizo_R1P1_concoct/' binning/dRep_input/DAS_Tool/rhizo_R1P1_DASTool_bins/*
rename 's/metabat/rhizo_R1P1_metabat/' binning/dRep_input/DAS_Tool/rhizo_R1P1_DASTool_bins/*
rename 's/maxbin/rhizo_R1P1_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R1P1_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R1P1_semibin/' binning/dRep_input/DAS_Tool/rhizo_R1P1_DASTool_bins/*
rename 's/concoct/rhizo_R1P5_concoct/' binning/dRep_input/DAS_Tool/rhizo_R1P5_DASTool_bins/*
rename 's/metabat/rhizo_R1P5_metabat/' binning/dRep_input/DAS_Tool/rhizo_R1P5_DASTool_bins/*
rename 's/maxbin/rhizo_R1P5_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R1P5_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R1P5_semibin/' binning/dRep_input/DAS_Tool/rhizo_R1P5_DASTool_bins/*
rename 's/concoct/rhizo_R1P9_concoct/' binning/dRep_input/DAS_Tool/rhizo_R1P9_DASTool_bins/*
rename 's/metabat/rhizo_R1P9_metabat/' binning/dRep_input/DAS_Tool/rhizo_R1P9_DASTool_bins/*
rename 's/maxbin/rhizo_R1P9_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R1P9_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R1P9_semibin/' binning/dRep_input/DAS_Tool/rhizo_R1P9_DASTool_bins/*
rename 's/concoct/rhizo_R1P14_concoct/' binning/dRep_input/DAS_Tool/rhizo_R1P14_DASTool_bins/*
rename 's/metabat/rhizo_R1P14_metabat/' binning/dRep_input/DAS_Tool/rhizo_R1P14_DASTool_bins/*
rename 's/maxbin/rhizo_R1P14_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R1P14_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R1P14_semibin/' binning/dRep_input/DAS_Tool/rhizo_R1P14_DASTool_bins/*
rename 's/concoct/rhizo_R1P18_concoct/' binning/dRep_input/DAS_Tool/rhizo_R1P18_DASTool_bins/*
rename 's/metabat/rhizo_R1P18_metabat/' binning/dRep_input/DAS_Tool/rhizo_R1P18_DASTool_bins/*
rename 's/maxbin/rhizo_R1P18_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R1P18_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R1P18_semibin/' binning/dRep_input/DAS_Tool/rhizo_R1P18_DASTool_bins/*

rename 's/concoct/rhizo_R3P3_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P3_DASTool_bins/*
rename 's/metabat/rhizo_R3P3_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P3_DASTool_bins/*
rename 's/maxbin/rhizo_R3P3_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P3_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P3_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P3_DASTool_bins/*
rename 's/concoct/rhizo_R3P5_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P5_DASTool_bins/*
rename 's/metabat/rhizo_R3P5_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P5_DASTool_bins/*
rename 's/maxbin/rhizo_R3P5_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P5_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P5_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P5_DASTool_bins/*
rename 's/concoct/rhizo_R3P11_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P11_DASTool_bins/*
rename 's/metabat/rhizo_R3P11_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P11_DASTool_bins/*
rename 's/maxbin/rhizo_R3P11_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P11_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P11_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P11_DASTool_bins/*
rename 's/concoct/rhizo_R3P15_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P15_DASTool_bins/*
rename 's/metabat/rhizo_R3P15_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P15_DASTool_bins/*
rename 's/maxbin/rhizo_R3P15_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P15_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P15_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P15_DASTool_bins/*
rename 's/concoct/rhizo_R3P20_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P20_DASTool_bins/*
rename 's/metabat/rhizo_R3P20_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P20_DASTool_bins/*
rename 's/maxbin/rhizo_R3P20_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P20_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P20_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P20_DASTool_bins/*

rename 's/concoct/rhizo_R3P9_neg_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P9_neg_DASTool_bins/*
rename 's/metabat/rhizo_R3P9_neg_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P9_neg_DASTool_bins/*
rename 's/maxbin/rhizo_R3P9_neg_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P9_neg_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P9_neg_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P9_neg_DASTool_bins/*
rename 's/concoct/rhizo_R3P10_neg_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P10_neg_DASTool_bins/*
rename 's/metabat/rhizo_R3P10_neg_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P10_neg_DASTool_bins/*
rename 's/maxbin/rhizo_R3P10_neg_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P10_neg_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P10_neg_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P10_neg_DASTool_bins/*
rename 's/concoct/rhizo_R3P12_neg_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P12_neg_DASTool_bins/*
rename 's/metabat/rhizo_R3P12_neg_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P12_neg_DASTool_bins/*
rename 's/maxbin/rhizo_R3P12_neg_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P12_neg_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P12_neg_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P12_neg_DASTool_bins/*
rename 's/concoct/rhizo_R3P14_neg_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P14_neg_DASTool_bins/*
rename 's/metabat/rhizo_R3P14_neg_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P14_neg_DASTool_bins/*
rename 's/maxbin/rhizo_R3P14_neg_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P14_neg_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P14_neg_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P14_neg_DASTool_bins/*
rename 's/concoct/rhizo_R3P18_neg_concoct/' binning/dRep_input/DAS_Tool/rhizo_R3P18_neg_DASTool_bins/*
rename 's/metabat/rhizo_R3P18_neg_metabat/' binning/dRep_input/DAS_Tool/rhizo_R3P18_neg_DASTool_bins/*
rename 's/maxbin/rhizo_R3P18_neg_maxbin/' binning/dRep_input/DAS_Tool/rhizo_R3P18_neg_DASTool_bins/*
rename 's/semibin_SemiBin/rhizo_R3P18_neg_semibin/' binning/dRep_input/DAS_Tool/rhizo_R3P18_neg_DASTool_bins/*

# Copy files from vamb and DASTool to directory
mkdir binning/dRep_input/combined/
cp -r binning/dRep_input/DAS_Tool/*/*.fa binning/dRep_input/combined/
cp -r binning/dRep_input/bins_vamb/*.fna binning/dRep_input/combined/

# Run dRep
dRep dereplicate binning/dRep_output/ -g binning/dRep_input/combined/*.f* -p 8 -comp 70 -con 10

# Rename MAGs
mkdir binning/final_MAGs/
perl rename_MAGs.pl rhizo_MAG binning/dRep_output/dereplicated_genomes/ binning/final_MAGs/
