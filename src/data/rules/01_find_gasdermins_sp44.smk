##
include: "../utils/build_hmm.smk"

rule scan_sp44:
	input:
		sp44="../../data/external/ncbi/SP44/data/GCA_002633005.1/GCA_002633005.1_ASM263300v1_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp44a="../../data/processed/searches/sp44_exonerate_gasA.tab",
 		sp44b="../../data/processed/searches/sp44_exonerate_gasB.tab",
 		sp44c="../../data/processed/searches/sp44_exonerate_gasC.tab",
		sp44d="../../data/processed/searches/sp44_exonerate_gasD.tab",
		sp44e="../../data/processed/searches/sp44_exonerate_gasE.tab",
		sp44p="../../data/processed/searches/sp44_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp44} {params} > {output.sp44a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp44} {params} > {output.sp44b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp44} {params} > {output.sp44c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp44} {params} > {output.sp44d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp44} {params} > {output.sp44e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp44} {params} > {output.sp44p}")
