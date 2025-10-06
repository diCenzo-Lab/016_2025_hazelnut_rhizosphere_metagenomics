import argparse

def format_fasta(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            if line.startswith('>'):
                header = line.strip()
                header_parts = header.split()
                contig_id = header_parts[0][1:]  # Extract the contig ID without the leading '>'
                length = header_parts[-1].split('=')[1]  # Extract the length value
                multi = header_parts[2].split('=')[1]  # Extract the multi value

                new_header = f">{contig_id}_length_{length}_multi_{multi}" 

                outfile.write(new_header + '\n')
            else:
                outfile.write(line)

if __name__ == "__main__":
    # Create an argument parser
    parser = argparse.ArgumentParser(description="Script to format FASTA headers.")
    parser.add_argument("input", help="Input FASTA file path.")
    parser.add_argument("output", help="Output formatted FASTA file path.")

    # Parse the arguments from the command line
    args = parser.parse_args()

    # Call the format_fasta function with the specified input and output files
    format_fasta(args.input, args.output)
