##
include: "../utils/build_hmm.smk"

rule scan_sp60:
	input:
		g1="../../data/external/ncbi/SP60/data/GCA_001663935.1/GCA_001663935.1_Asyluc0.1_genomic.fna",
		g2="../../data/external/ncbi/SP60/data/GCF_001625305.1/unplaced.scaf.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
		db=temp("../../data/external/ncbi/SP60/data/db.fas"),
 		sp60a="../../data/processed/searches/sp60_exonerate_gasA.tab",
 		sp60b="../../data/processed/searches/sp60_exonerate_gasB.tab",
 		sp60c="../../data/processed/searches/sp60_exonerate_gasC.tab",
		sp60d="../../data/processed/searches/sp60_exonerate_gasD.tab",
		sp60e="../../data/processed/searches/sp60_exonerate_gasE.tab",
		sp60p="../../data/processed/searches/sp60_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("cat {input.g1} {input.g2} > {output.db}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {output.db} {params} > {output.sp60a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {output.db} {params} > {output.sp60b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {output.db} {params} > {output.sp60c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {output.db} {params} > {output.sp60d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {output.db} {params} > {output.sp60e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {output.db} {params} > {output.sp60p}")
##

rule fix_gff:
	input:
		sp60p=rules.scan_sp60.output.sp60p
	
	params: sp60p="sp60_gasP",
	output:
		sp60p="../../data/processed/searches/sp60_exonerate_gasP.gff"
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp60p} --tag {params.sp60p} > {output.sp60p}")

rule gff3Tofasta:
	input:
		sp60g=rules.scan_sp60.output.db,
		sp60p=rules.fix_gff.output.sp60p
	output:
		sp60pt="../../data/processed/searches/sp60_exonerate_gasP_transcripts.fa",
		sp60pp="../../data/processed/searches/sp60_exonerate_gasP_proteins.fa"
	run:
		shell("gffread -w {output.sp60pt} -g {input.sp60g} {input.sp60p}")
		shell("funannotate util gff2prot --gff3 {input.sp60p} --fasta {input.sp60g} > {output.sp60pp}")
