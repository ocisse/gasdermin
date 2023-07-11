##
include: "../utils/build_hmm.smk"

rule scan_sp59:
	input:
		sp59="../../data/external/ncbi/SP59/data/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp59a="../../data/processed/searches/sp59_exonerate_gasA.tab",
 		sp59b="../../data/processed/searches/sp59_exonerate_gasB.tab",
 		sp59c="../../data/processed/searches/sp59_exonerate_gasC.tab",
		sp59d="../../data/processed/searches/sp59_exonerate_gasD.tab",
		sp59e="../../data/processed/searches/sp59_exonerate_gasE.tab",
		sp59p="../../data/processed/searches/sp59_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp59} {params} > {output.sp59a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp59} {params} > {output.sp59b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp59} {params} > {output.sp59c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp59} {params} > {output.sp59d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp59} {params} > {output.sp59e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp59} {params} > {output.sp59p}")
