##
include: "../utils/build_hmm.smk"

rule scan_sp31:
	input:
		sp31="../../data/external/ncbi/SP31/data/GCF_018977255.1/unplaced.scaf.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
	output:
 		sp31a="../../data/processed/searches/sp31_exonerate_gasA.tab",
 		sp31b="../../data/processed/searches/sp31_exonerate_gasB.tab",
 		sp31c="../../data/processed/searches/sp31_exonerate_gasC.tab",
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp31}"
 		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp31a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp31}"
 		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp31b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp31}"
 		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp31c}")

rule fix_gff:
	input:
		sp31a=rules.scan_sp31.output.sp31a
	
	params: sp31a="sp31_gasA",
	output:
		sp31a="../../data/processed/searches/sp31_exonerate_gasA.gff"
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp31a} --tag {params.sp31a} > {output.sp31a}")

rule gff3Tofasta:
	input:
		sp31g=rules.scan_sp31.input.sp31,
		sp31a=rules.fix_gff.output.sp31a
	output:
		sp31at="../../data/processed/searches/sp31_exonerate_gasA_transcripts.fa",
		sp31ap="../../data/processed/searches/sp31_exonerate_gasA_proteins.fa"
	run:
		shell("gffread -w {output.sp31at} -g {input.sp31g} {input.sp31a}")
		shell("funannotate util gff2prot --gff3 {input.sp31a} --fasta {input.sp31g} > {output.sp31ap}")
