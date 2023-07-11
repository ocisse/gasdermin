##
include: "../utils/build_hmm.smk"

rule scan_sp24:
        input:
                gasBseed=rules.cns.output.b,
                gasCseed=rules.cns.output.c,
		sp24="../../data/external/ncbi/SP24/data/GCF_000230535.1/unplaced.scaf.fna",

#	params: 
#		mod="protein2genome", 
#		p2="5", 
##		b='--showtargetgff Y --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0',
	output:
		sp24b="../../data/processed/searches/sp24_exonerate_gasB.tab",
		sp24c="../../data/processed/searches/sp24_exonerate_gasC.tab",
	run:
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp24}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp24b}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp24}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp24c}")
		
