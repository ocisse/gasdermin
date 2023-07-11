##
include: "../utils/build_hmm.smk"

rule scan_sp43:
	input:
		sp43="../../data/external/ncbi/SP43/data/GCA_009193005.1/GCA_009193005.1_LLUY_1.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp43a="../../data/processed/searches/sp43_exonerate_gasA.tab",
 		sp43b="../../data/processed/searches/sp43_exonerate_gasB.tab",
 		sp43c="../../data/processed/searches/sp43_exonerate_gasC.tab",
		sp43d="../../data/processed/searches/sp43_exonerate_gasD.tab",
		sp43e="../../data/processed/searches/sp43_exonerate_gasE.tab",
		sp43p="../../data/processed/searches/sp43_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp43} {params} > {output.sp43a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp43} {params} > {output.sp43b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp43} {params} > {output.sp43c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp43} {params} > {output.sp43d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp43} {params} > {output.sp43e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp43} {params} > {output.sp43p}")
