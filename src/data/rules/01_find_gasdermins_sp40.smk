##
include: "../utils/build_hmm.smk"

rule scan_sp40:
	input:
		sp40="../../data/external/ncbi/SP40/data/GCA_903813345.1/GCA_903813345.1_Owenia_assembly_annotated_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp40a="../../data/processed/searches/sp40_exonerate_gasA.tab",
 		sp40b="../../data/processed/searches/sp40_exonerate_gasB.tab",
 		sp40c="../../data/processed/searches/sp40_exonerate_gasC.tab",
		sp40d="../../data/processed/searches/sp40_exonerate_gasD.tab",
		sp40e="../../data/processed/searches/sp40_exonerate_gasE.tab",
		sp40p="../../data/processed/searches/sp40_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp40} {params} > {output.sp40a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp40} {params} > {output.sp40b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp40} {params} > {output.sp40c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp40} {params} > {output.sp40d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp40} {params} > {output.sp40e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp40} {params} > {output.sp40p}")
