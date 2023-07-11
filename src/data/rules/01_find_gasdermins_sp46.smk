##
include: "../utils/build_hmm.smk"

rule scan_sp46:
	input:
		sp46="../../data/external/ncbi/SP46/data/GCA_017591395.1/GCA_017591395.1_ASM1759139v1_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp46a="../../data/processed/searches/sp46_exonerate_gasA.tab",
 		sp46b="../../data/processed/searches/sp46_exonerate_gasB.tab",
 		sp46c="../../data/processed/searches/sp46_exonerate_gasC.tab",
		sp46d="../../data/processed/searches/sp46_exonerate_gasD.tab",
		sp46e="../../data/processed/searches/sp46_exonerate_gasE.tab",
		sp46p="../../data/processed/searches/sp46_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp46} {params} > {output.sp46a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp46} {params} > {output.sp46b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp46} {params} > {output.sp46c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp46} {params} > {output.sp46d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp46} {params} > {output.sp46e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp46} {params} > {output.sp46p}")
