##
include: "../utils/build_hmm.smk"

rule scan_sp51:
	input:
		sp51="../../data/external/ncbi/SP51/data/GCA_011109175.1/GCA_011109175.1_ASM1110917v1_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp51a="../../data/processed/searches/sp51_exonerate_gasA.tab",
 		sp51b="../../data/processed/searches/sp51_exonerate_gasB.tab",
 		sp51c="../../data/processed/searches/sp51_exonerate_gasC.tab",
		sp51d="../../data/processed/searches/sp51_exonerate_gasD.tab",
		sp51e="../../data/processed/searches/sp51_exonerate_gasE.tab",
		sp51p="../../data/processed/searches/sp51_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp51} {params} > {output.sp51a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp51} {params} > {output.sp51b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp51} {params} > {output.sp51c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp51} {params} > {output.sp51d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp51} {params} > {output.sp51e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp51} {params} > {output.sp51p}")
