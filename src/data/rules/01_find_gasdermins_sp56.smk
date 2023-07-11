##
include: "../utils/build_hmm.smk"

rule scan_sp56:
	input:
		sp56="../../data/external/ncbi/SP56/data/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
# 		sp56a="../../data/processed/searches/sp56_exonerate_gasA.tab",
# 		sp56b="../../data/processed/searches/sp56_exonerate_gasB.tab",
 		sp56c="../../data/processed/searches/sp56_exonerate_gasC.tab",
		sp56d="../../data/processed/searches/sp56_exonerate_gasD.tab",
		sp56e="../../data/processed/searches/sp56_exonerate_gasE.tab",
		sp56p="../../data/processed/searches/sp56_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp56} {params} > {output.sp56a}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp56} {params} > {output.sp56b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp56} {params} > {output.sp56c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp56} {params} > {output.sp56d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp56} {params} > {output.sp56e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp56} {params} > {output.sp56p}")
