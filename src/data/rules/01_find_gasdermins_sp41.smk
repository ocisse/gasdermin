##
include: "../utils/build_hmm.smk"

rule scan_sp41:
	input:
		sp41="../../data/external/ncbi/SP41/data/GCA_001703475.1/GCA_001703475.1_H_elegans_v1.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp41a="../../data/processed/searches/sp41_exonerate_gasA.tab",
 		sp41b="../../data/processed/searches/sp41_exonerate_gasB.tab",
 		sp41c="../../data/processed/searches/sp41_exonerate_gasC.tab",
		sp41d="../../data/processed/searches/sp41_exonerate_gasD.tab",
		sp41e="../../data/processed/searches/sp41_exonerate_gasE.tab",
		sp41p="../../data/processed/searches/sp41_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp41} {params} > {output.sp41a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp41} {params} > {output.sp41b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp41} {params} > {output.sp41c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp41} {params} > {output.sp41d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp41} {params} > {output.sp41e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp41} {params} > {output.sp41p}")
