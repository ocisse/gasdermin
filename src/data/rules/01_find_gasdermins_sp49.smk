##
include: "../utils/build_hmm.smk"

rule scan_sp49:
	input:
		sp49="../../data/external/ncbi/SP49/data/GCA_010799875.2/GCA_010799875.2_ASM1079987v2_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp49a="../../data/processed/searches/sp49_exonerate_gasA.tab",
 		sp49b="../../data/processed/searches/sp49_exonerate_gasB.tab",
 		sp49c="../../data/processed/searches/sp49_exonerate_gasC.tab",
		sp49d="../../data/processed/searches/sp49_exonerate_gasD.tab",
		sp49e="../../data/processed/searches/sp49_exonerate_gasE.tab",
		sp49p="../../data/processed/searches/sp49_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp49} {params} > {output.sp49a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp49} {params} > {output.sp49b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp49} {params} > {output.sp49c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp49} {params} > {output.sp49d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp49} {params} > {output.sp49e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp49} {params} > {output.sp49p}")
