#!/usr/bin/bash

contig_qc () {

        stats.sh in=data/"$1".fasta\
                gchist=data/"$1"_assembly_gchist.tsv\
                minscaf=1000 n90=t extended=t format=3 gcformat=1 overwrite=t > data/"$1"_contig_qc.tsv

}

### Run QC stats on vlp contigs

contigs=("spades_vlp" "spades_whole" "megahit_vlp" "megahit_whole" "megahit_coassembly_vlp" "megahit_coassembly_whole")

for type in ${contigs[@]}; do

        echo "Running stats on $type"
        echo
	contig_qc "$type"

done

### Make contig stats figures

echo "Building Figures"

Rscript code/contig_comparison.R

echo "Done!"
