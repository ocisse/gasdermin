##
include: "../utils/build_hmm.smk"

rule scan_sp47:
	input:
		sp47="../../data/external/ncbi/SP47/data/GCA_910592395.1/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp47a="../../data/processed/searches/sp47_exonerate_gasA.tab",
 		sp47b="../../data/processed/searches/sp47_exonerate_gasB.tab",
 		sp47c="../../data/processed/searches/sp47_exonerate_gasC.tab",
		sp47d="../../data/processed/searches/sp47_exonerate_gasD.tab",
		sp47e="../../data/processed/searches/sp47_exonerate_gasE.tab",
		sp47p="../../data/processed/searches/sp47_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp47} {params} > {output.sp47a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp47} {params} > {output.sp47b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp47} {params} > {output.sp47c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp47} {params} > {output.sp47d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp47} {params} > {output.sp47e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp47} {params} > {output.sp47p}")

rule fix_gff:
	input:
		sp47p=rules.scan_sp47.output.sp47p,
	params:
		sp47p="sp47_gasp",
	output:
		sp47p="../../data/processed/searches/sp47_exonerate_gasP.gff"
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp47p} --tag {params.sp47p} > {output.sp47p}")

rule gff3Tofasta:
	input:
		sp47g=rules.scan_sp47.input.sp47,
		sp47p=rules.fix_gff.output.sp47p
	output:
		sp47pt="../../data/processed/searches/sp47_exonerate_gasP_transcripts.fa",
		sp47pp="../../data/processed/searches/sp47_exonerate_gasP_proteins.fa"
	run:
		shell("gffread -w {output.sp47pt} -g {input.sp47g} {input.sp47p}")
		shell("funannotate util gff2prot --gff3 {input.sp47p} --fasta {input.sp47g} > {output.sp47pp}")

