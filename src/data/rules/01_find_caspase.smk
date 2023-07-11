# extract caspase proteins for the 7 selected species

# cat ../../data/processed/casp/list_of_7species.txt \
# | while read f; do grep $f ../../data/external/Merops/C14/c14a.lib >> ../../data/processed/casp/list_of_7species.tmp;done
rule extract_seqs:
    input:
        db="../../data/external/Merops/C14/c14a.lib",

        seqs="../../data/processed/casp/list_of_7species.tmp",
    output:
#	clean="../../data/processed/casp/caps_seqs_7species.clean",	
	seqs="../../data/processed/casp/caps_seqs_7species.txt",
#    run:
#	shell("cat {input.seqs} | cut -f 1 -d ' ' | sort -u > {output.clean}")
#        shell("seqtk subseq {input.db} {output.clean} > {output.seqs}")
