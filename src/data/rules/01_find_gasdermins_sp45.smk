##
include: "../utils/build_hmm.smk"

rule scan_sp45:
	input:
		sp45="../../data/external/ncbi/SP45/data/GCA_001642005.1/GCA_001642005.1_IntLin1.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp45a="../../data/processed/searches/sp45_exonerate_gasA.tab",
 		sp45b="../../data/processed/searches/sp45_exonerate_gasB.tab",
 		sp45c="../../data/processed/searches/sp45_exonerate_gasC.tab",
		sp45d="../../data/processed/searches/sp45_exonerate_gasD.tab",
		sp45e="../../data/processed/searches/sp45_exonerate_gasE.tab",
		sp45p="../../data/processed/searches/sp45_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp45} {params} > {output.sp45a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp45} {params} > {output.sp45b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp45} {params} > {output.sp45c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp45} {params} > {output.sp45d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp45} {params} > {output.sp45e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp45} {params} > {output.sp45p}")
