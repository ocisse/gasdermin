##
include: "../utils/build_hmm.smk"

rule scan_sp50:
	input:
		sp50="../../data/external/ncbi/SP50/data/GCA_012934845.1/GCA_012934845.1_ASM1293484v1_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp50a="../../data/processed/searches/sp50_exonerate_gasA.tab",
 		sp50b="../../data/processed/searches/sp50_exonerate_gasB.tab",
 		sp50c="../../data/processed/searches/sp50_exonerate_gasC.tab",
		sp50d="../../data/processed/searches/sp50_exonerate_gasD.tab",
		sp50e="../../data/processed/searches/sp50_exonerate_gasE.tab",
		sp50p="../../data/processed/searches/sp50_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp50} {params} > {output.sp50a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp50} {params} > {output.sp50b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp50} {params} > {output.sp50c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp50} {params} > {output.sp50d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp50} {params} > {output.sp50e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp50} {params} > {output.sp50p}")
