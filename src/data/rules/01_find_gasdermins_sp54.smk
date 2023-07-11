##
include: "../utils/build_hmm.smk"

rule scan_sp54:
	input:
		sp54="../../data/external/ncbi/SP54/data/GCF_000485595.1/unplaced.scaf.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp54a="../../data/processed/searches/sp54_exonerate_gasA.tab",
 		sp54b="../../data/processed/searches/sp54_exonerate_gasB.tab",
 		sp54c="../../data/processed/searches/sp54_exonerate_gasC.tab",
		sp54d="../../data/processed/searches/sp54_exonerate_gasD.tab",
		sp54e="../../data/processed/searches/sp54_exonerate_gasE.tab",
		sp54p="../../data/processed/searches/sp54_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp54} {params} > {output.sp54a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp54} {params} > {output.sp54b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp54} {params} > {output.sp54c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp54} {params} > {output.sp54d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp54} {params} > {output.sp54e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp54} {params} > {output.sp54p}")
