#!/bin/bash
set -x
set -e

#Default values
input_list="binning_input.txt"
thread_count=6 #specify thread count
minContig=1500
min_contig_suffix=$(awk "BEGIN { printf \"%.1fK\", "$minContig" / 1000 }")
maxbin_iter=50
megahit=1
vamb=1
cuda=0
RAM=80
usage() {
  echo "Usage: binning.sh [--input_list <file>] [--thread_count <num>] [--minContig <num>] [--maxbin_iter <num>] [--megahit <0|1>] [--vamb <0|1>] [--cuda <0|1>] [--RAM <num>]"
  echo "Options:"
  echo "  -i <file>:      Path to the input file list formatted as a tab-delimited file consisting of three columns: (i) the name of the sample, (ii) the name of the forward read fastq file, (iii) the name of the reverse read fastq file"
  echo "  -t <num>:       Number of threads to use (default: 8)"
  echo "  -m <num>:       Minimum contig length to use for binning (default: 2500)"
  echo "  -x <num>:       Maximum number of iterations that maxbin2 should run (default: 50)"
  echo "  -M <0|1>:       Use megahit as the assembler instead of SPAdes (default: use spades)" 
  echo "  -v <0|1>:       Use vamb as an additional binner (default: 1 (true))"
  echo "  -c <0|1>:       Use cuda parameter in vamb to use GPU to train & cluster (default: 0 (false))"
  echo "  -R <num>:       Specify RAM (default: 100 Gb)"
}
# Parse command-line arguments
while getopts ":i:t:m:x:M:v:c:R:" option; do
  case "$option" in
    i) input_list=$OPTARG ;;
    t) thread_count=$OPTARG ;;
    m) minContig=$OPTARG ;;
    x) maxbin_iter=$OPTARG ;;
    M) megahit=$OPTARG ;;
    v) vamb=$OPTARG ;;
    c) cuda=$OPTARG ;;
    R) RAM=$OPTARG ;;
    \?) echo "Error: Invalid option -$OPTARG" >&2
        usage
        exit 1 ;;
  esac
done
shift $((OPTIND - 1))
RAM_samtools=$(("$RAM" / "$thread_count"))

#Make directories
# List of directories to create
directories=("binning" "binning/renamed_scaffolds" "binning/bowtie2_indexes" "binning/read_mapping" "binning/depth" "binning/metabat2_bins" "binning/cut_scaffolds" "binning/coverage" "binning/concoct_binning" "binning/concoct_bins" "binning/abundance" "binning/maxbins2_bins" "binning/DAS_Tool_input" "binning/DAS_Tool_output" "binning/dRep_input/bins_vamb")
# Create directories if they don't exist
for dir in "${directories[@]}"; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
  fi
done
while IFS=$'\t' read -r sample_name forward_reads reverse_reads
do
  echo "Sample Name: $sample_name"
  echo "Forward Reads: $forward_reads"
  echo "Reverse Reads: $reverse_reads"
binning_directories=("binning/read_mapping/$sample_name" "binning/concoct_binning/$sample_name" "binning/concoct_bins/$sample_name" "binning/abundance/$sample_name" "binning/maxbins2_bins/$sample_name" "binning/DAS_Tool_input/$sample_name" "binning/DAS_Tool_output/$sample_name" "binning/dRep_input/bins_vamb")
for dir in "${binning_directories[@]}"; do
  if [ ! -d "$dir" ]; then                                                                
    mkdir "$dir"
  fi
done
  # Rename scaffolds
 sed "s/>/>${sample_name}_/g" megahit_assembly/reduced_assemblies/"$sample_name"_"$min_contig_suffix".fasta > binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta
  # Build bowtie2 index
  bowtie2-build --threads "$thread_count" binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta binning/bowtie2_indexes/"$sample_name"
 # Map all reads
  bowtie2 -p "$thread_count" -x binning/bowtie2_indexes/"$sample_name" -1 trimmomatic_output/"$(basename "$forward_reads")" -2 trimmomatic_output/"$(basename "$reverse_reads")" --no-unal 2> binning/read_mapping/"$sample_name"/"$sample_name"_to_"$sample_name".txt | samtools view -Sb -@ 2 -o binning/read_mapping/"$sample_name"/"$sample_name"_to_"$sample_name".bam
  samtools sort -@ "$thread_count" -m "$RAM_samtools"G binning/read_mapping/"$sample_name"/"$sample_name"_to_"$sample_name".bam -o binning/read_mapping/"$sample_name"/"$sample_name"_to_"$sample_name".sorted.bam
  samtools index binning/read_mapping/"$sample_name"/"$sample_name"_to_"$sample_name".sorted.bam
  #Compare input file with the other (non-identical) files in the input list 
  while IFS=$'\t' read -r compare_sample_name compare_forward_reads compare_reverse_reads
 do
     echo "Comparison Sample Name: $compare_sample_name"
     echo "Comparison Forward Reads: $compare_forward_reads"
     echo "Comparison Reverse Reads: $compare_reverse_reads"
  if [ "$sample_name" != "$compare_sample_name" ]; then
    bowtie2 -p "$thread_count" -x "binning/bowtie2_indexes/$sample_name" -1 "trimmomatic_output/$(basename "$compare_forward_reads")" -2 "trimmomatic_output/$(basename "$compare_reverse_reads")" --no-unal 2> "binning/read_mapping/$sample_name/${compare_sample_name}_to_${sample_name}.txt" | samtools view -Sb -@ "$thread_count" -o "binning/read_mapping/$sample_name/${compare_sample_name}_to_${sample_name}.bam"
    samtools sort -@ "$thread_count" -m "$RAM_samtools"G "binning/read_mapping/$sample_name/${compare_sample_name}_to_${sample_name}.bam" -o "binning/read_mapping/$sample_name/${compare_sample_name}_to_${sample_name}.sorted.bam"
    samtools index "binning/read_mapping/$sample_name/${compare_sample_name}_to_${sample_name}.sorted.bam"
  fi
 done < "$input_list"
 ls binning/read_mapping/"$sample_name"/*.sorted.bam | parallel samtools index '{}'
 #Delete files that are not needed 
 find binning/read_mapping/"$sample_name" -type f ! \( -name '*.sorted.bam' -o -name '*.sorted.bam.bai' \) -delete
  # Generate MetaBat2 bins
  jgi_summarize_bam_contig_depths --outputDepth binning/depth/"$sample_name"_depth.txt binning/read_mapping/"$sample_name"/*.sorted.bam
  metabat2 -i binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta -a binning/depth/"$sample_name"_depth.txt -t "$thread_count" -o binning/metabat2_bins/"$sample_name"/ -m "$minContig" 
  for file in binning/metabat2_bins/"$sample_name"/.[^.]*; do
    mv "$file" "${file%/*}/${file##*/.}"
  done
  # Generate CONCOCT bins
  python3 /usr/local/bin/cut_up_fasta.py binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta -c 10000 -o 0 --merge_last -b binning/cut_scaffolds/"$sample_name"_"$min_contig_suffix".renamed_10K.bed > binning/cut_scaffolds/"$sample_name"_"$min_contig_suffix".renamed_10K.fa
  python3 /usr/local/bin/concoct_coverage_table.py binning/cut_scaffolds/"$sample_name"_"$min_contig_suffix".renamed_10K.bed binning/read_mapping/"$sample_name"/*.sorted.bam > binning/coverage/"$sample_name"_concoct_coverage_table.tsv
  python3 /usr/local/bin/concoct --composition_file binning/cut_scaffolds/"$sample_name"_"$min_contig_suffix".renamed_10K.fa --coverage_file binning/coverage/"$sample_name"_concoct_coverage_table.tsv -b binning/concoct_binning/"$sample_name"/"$sample_name" -t "$thread_count"
  python3 /usr/local/bin/merge_cutup_clustering.py binning/concoct_binning/"$sample_name"/"$sample_name"_clustering_gt1000.csv > binning/concoct_binning/"$sample_name"/"$sample_name"_clustering_merged.csv
  python3 /usr/local/bin/extract_fasta_bins.py binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta binning/concoct_binning/"$sample_name"/"$sample_name"_clustering_merged.csv --output_path binning/concoct_bins/"$sample_name"/
  # Generate MaxBin2 bins
  num_samples=$(wc -l < "$input_list")
  for N in $(seq 4 2 $((2 * num_samples + 2)))
  do
    NAME=$(cut -f${N},${N} binning/depth/"$sample_name"_depth.txt | sed 's/\.sorted\.bam//' | head -1)
    awk -v i="$N" '{print $1"\t"$i}' binning/depth/"$sample_name"_depth.txt | sed "s/$NAME.sorted.bam/abundance/g" | sed 's/contigName/contig header/g' > binning/abundance/"$sample_name"/${NAME}_abundance.txt
  done
  find binning/abundance/"$sample_name"/*abundance.txt > binning/abundance/"$sample_name"/abundance_list.txt
  run_MaxBin.pl -contig binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta -out binning/maxbins2_bins/"$sample_name"/"$sample_name" -abund_list binning/abundance/"$sample_name"/abundance_list.txt -thread "$thread_count" -max_iteration "$maxbin_iter"
  
  # Generate bins with SemiBin2
  
  echo "Running SemiBin2..."
for sample_dir in binning/read_mapping/$sample_name; do
  if [ -d "$sample_dir" ]; then
    contig_file=binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta
    bam_files=$(find "$sample_dir" -name "*.sorted.bam" -print | tr '\n' ' ')
    semibin_output_dir="binning/semibin_bins/$sample_name"
    mkdir -p "$semibin_output_dir"
    SemiBin2 single_easy_bin \
        -i "$contig_file" \
        -o "$semibin_output_dir" \
        -b $bam_files \
	-t "$thread_count"
  fi
done
  
  
  # Get final bins with DAS_Tool
  if [ ! -d binning/DAS_Tool_input/"$sample_name" ]; then
    mkdir binning/DAS_Tool_input/"$sample_name"
  fi
  if [ ! -d binning/DAS_Tool_output/"$sample_name" ]; then
    mkdir binning/DAS_Tool_output/"$sample_name"
  fi
  Fasta_to_Contig2Bin.sh -i binning/metabat2_bins/"$sample_name"/ -e fa > binning/DAS_Tool_input/"$sample_name"/"$sample_name"_Metabat_bins.tsv
  if [[ $megahit == 1 ]]; then
    Fasta_to_Contig2Bin.sh -i binning/concoct_bins/"$sample_name"/ -e fa | sed "s/ /\t/g" | cut -f1,5 > binning/DAS_Tool_input/"$sample_name"/"$sample_name"_concoct_bins.tsv
  else
    Fasta_to_Contig2Bin.sh -i binning/concoct_bins/"$sample_name"/ -e fa > binning/DAS_Tool_input/"$sample_name"/"$sample_name"_concoct_bins.tsv
  fi
  Fasta_to_Contig2Bin.sh -i binning/maxbins2_bins/"$sample_name"/ -e fasta > binning/DAS_Tool_input/"$sample_name"/"$sample_name"_Maxbin_bins.tsv
  gunzip binning/semibin_bins/"$sample_name"/output_bins/*
  Fasta_to_Contig2Bin.sh -i binning/semibin_bins/"$sample_name"/output_bins/ -e fa > binning/DAS_Tool_input/"$sample_name"/"$sample_name"_Semibin_bins.tsv


  DAS_Tool -i binning/DAS_Tool_input/"$sample_name"/"$sample_name"_Metabat_bins.tsv,binning/DAS_Tool_input/"$sample_name"/"$sample_name"_concoct_bins.tsv,binning/DAS_Tool_input/"$sample_name"/"$sample_name"_Maxbin_bins.tsv,binning/DAS_Tool_input/"$sample_name"/"$sample_name"_Semibin_bins.tsv \
         -l metabat,concoct,maxbin,semibin \
         -c binning/renamed_scaffolds/"$sample_name"_"$min_contig_suffix".renamed.fasta \
         --threads "$thread_count" \
         --write_bins \
         -o binning/DAS_Tool_output/"$sample_name"/"$sample_name"
  done < "$input_list"        
	##Generate VAMB bins
if [[ "$vamb" == "1" ]]; then
  sample_files=(binning/renamed_scaffolds/*_"$min_contig_suffix".renamed.fasta)
  mkdir binning/vamb_bins binning/read_mapping/vamb
  python3.10 /home/Bioinformatics_programs/vamb/src/concatenate.py binning/vamb_bins/catalogue.fna.gz "${sample_files[@]}"
  minimap2 -d catalogue.mmi binning/vamb_bins/catalogue.fna.gz # make index
  while IFS=$'\t' read -r sample_name forward_reads reverse_reads
  do
    minimap2 -t "$thread_count" -N 5 -ax sr catalogue.mmi --split-prefix mmsplit trimmomatic_output/"$(basename "$forward_reads")" trimmomatic_output/"$(basename "$reverse_reads")" | samtools view -F 3584 -b --threads "$thread_count" > binning/read_mapping/vamb/"$sample_name".bam
    samtools sort -@ "$thread_count" -m "$RAM_samtools"G binning/read_mapping/vamb/"$sample_name".bam -o binning/read_mapping/vamb/"$sample_name".sorted.bam
    samtools index binning/read_mapping/vamb/"$sample_name".sorted.bam
  done < "$input_list"
 if [[ "$cuda" == "1" ]]; then
    vamb --outdir binning/vamb_bins/vamb_output --fasta binning/vamb_bins/catalogue.fna.gz --bamfiles binning/read_mapping/vamb/*.sorted.bam  -o C -p "$thread_count" --minfasta 250000 --cuda
  else
    vamb --outdir binning/vamb_bins/vamb_output --fasta binning/vamb_bins/catalogue.fna.gz --bamfiles binning/read_mapping/vamb/*.sorted.bam  -o C -p "$thread_count" --minfasta 250000
  fi
  cp binning/vamb_bins/vamb_output/bins/*/*.fna binning/dRep_input/bins_vamb/
fi
