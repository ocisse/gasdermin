##
include: "../utils/build_hmm.smk"

rule scan_sp39:
	input:
		sp39="../../data/external/ncbi/SP39/data/GCA_904063045.1/GCA_904063045.1_Dgyrociliatus_assembly_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp39a="../../data/processed/searches/sp39_exonerate_gasA.tab",
 		sp39b="../../data/processed/searches/sp39_exonerate_gasB.tab",
 		sp39c="../../data/processed/searches/sp39_exonerate_gasC.tab",
		sp39d="../../data/processed/searches/sp39_exonerate_gasD.tab",
		sp39e="../../data/processed/searches/sp39_exonerate_gasE.tab",
		sp39p="../../data/processed/searches/sp39_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp39} {params} > {output.sp39a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp39} {params} > {output.sp39b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp39} {params} > {output.sp39c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp39} {params} > {output.sp39d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp39} {params} > {output.sp39e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp39} {params} > {output.sp39p}")
