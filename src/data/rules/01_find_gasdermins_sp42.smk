##
include: "../utils/build_hmm.smk"

rule scan_sp42:
	input:
		sp42="../../data/external/ncbi/SP42/data/GCA_019095985.1/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp42a="../../data/processed/searches/sp42_exonerate_gasA.tab",
 		sp42b="../../data/processed/searches/sp42_exonerate_gasB.tab",
 		sp42c="../../data/processed/searches/sp42_exonerate_gasC.tab",
		sp42d="../../data/processed/searches/sp42_exonerate_gasD.tab",
		sp42e="../../data/processed/searches/sp42_exonerate_gasE.tab",
		sp42p="../../data/processed/searches/sp42_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp42} {params} > {output.sp42a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp42} {params} > {output.sp42b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp42} {params} > {output.sp42c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp42} {params} > {output.sp42d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp42} {params} > {output.sp42e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp42} {params} > {output.sp42p}")

rule fix_gff:
	input:
		sp42e=rules.scan_sp42.output.sp42e,
		sp42p=rules.scan_sp42.output.sp42p,
	params: 
		sp42e="sp42_gase",
		sp42p="sp42_gasp",
	output:
		sp42e="../../data/processed/searches/sp42_exonerate_gasE.gff",
		sp42p="../../data/processed/searches/sp42_exonerate_gasP.gff"
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp42p} --tag {params.sp42e} > {output.sp42e}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp42p} --tag {params.sp42p} > {output.sp42p}")

rule gff3Tofasta:
	input:
                sp42g=rules.scan_sp42.input.sp42,
		sp42e=rules.fix_gff.output.sp42e,
                sp42p=rules.fix_gff.output.sp42p
	output:
		sp42et="../../data/processed/searches/sp42_exonerate_gasE_transcripts.fa",
		sp42ep="../../data/processed/searches/sp42_exonerate_gasE_proteins.fa",
		sp42pt="../../data/processed/searches/sp42_exonerate_gasP_transcripts.fa",
		sp42pp="../../data/processed/searches/sp42_exonerate_gasP_proteins.fa"
	run:
		shell("gffread -w {output.sp42et} -g {input.sp42g} {input.sp42e}")
		shell("funannotate util gff2prot --gff3 {input.sp42e} --fasta {input.sp42g} > {output.sp42ep}")
		shell("gffread -w {output.sp42pt} -g {input.sp42g} {input.sp42p}")
		shell("funannotate util gff2prot --gff3 {input.sp42p} --fasta {input.sp42g} > {output.sp42pp}")
