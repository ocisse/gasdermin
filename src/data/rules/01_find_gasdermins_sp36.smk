##
include: "../utils/build_hmm.smk"

rule scan_sp36:
	input:
		sp36="../../data/external/ncbi/SP36/data/GCF_001039355.2/GCF_001039355.2_LinAna2.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
	output:
 		sp36a="../../data/processed/searches/sp36_exonerate_gasA.tab",
 		sp36b="../../data/processed/searches/sp36_exonerate_gasB.tab",
 		sp36c="../../data/processed/searches/sp36_exonerate_gasC.tab",
		sp36d="../../data/processed/searches/sp36_exonerate_gasD.tab",
		sp36e="../../data/processed/searches/sp36_exonerate_gasE.tab",
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp36} {params} > {output.sp36a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp36} {params} > {output.sp36b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp36} {params} > {output.sp36c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp36} {params} > {output.sp36d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp36} {params} > {output.sp36e}")
