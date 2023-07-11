##
include: "../utils/build_hmm.smk"

rule scan_sp15:
	input:
		sp15g1="../../data/external/ncbi/SP15/data/GCF_000002275.2/all_chrs.fna",
		sp15g2="../../data/external/ncbi/SP15/data/GCF_004115215.2/all_chrs.fna",
		
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
		db=temp("../../data/external/ncbi/SP15/data/merged.db"),
 		sp15a="../../data/processed/searches/sp15_exonerate_gasA.tab",
 		sp15b="../../data/processed/searches/sp15_exonerate_gasB.tab",
 		sp15c="../../data/processed/searches/sp15_exonerate_gasC.tab",
		sp15d="../../data/processed/searches/sp15_exonerate_gasD.tab",
		sp15e="../../data/processed/searches/sp15_exonerate_gasE.tab",
		sp15p="../../data/processed/searches/sp15_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("cat {input.sp15g1} {input.sp15g2} > {output.db}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {output.db} {params} > {output.sp15a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {output.db} {params} > {output.sp15b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {output.db} {params} > {output.sp15c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {output.db} {params} > {output.sp15d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {output.db} {params} > {output.sp15e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {output.db} {params} > {output.sp15p}")
##

rule fix_gff:
	input:
		a=rules.scan_sp15.output.sp15a, 
		b=rules.scan_sp15.output.sp15b,
		c=rules.scan_sp15.output.sp15c,
		d=rules.scan_sp15.output.sp15d,
		e=rules.scan_sp15.output.sp15e,
		p=rules.scan_sp15.output.sp15p,
	params: 
		a="sp15_gasA", b="sp15_gasB", c="sp15_gasC", d="sp15_gasD",
		e="sp15_gasE", p="sp15_gasP",
	output:
		a="../../data/processed/searches/sp15_exonerate_gasA.gff",
		b="../../data/processed/searches/sp15_exonerate_gasB.gff",
		c="../../data/processed/searches/sp15_exonerate_gasC.gff",
		d="../../data/processed/searches/sp15_exonerate_gasD.gff",
		e="../../data/processed/searches/sp15_exonerate_gasE.gff",
		p="../../data/processed/searches/sp15_exonerate_gasP.gff",
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.a} --tag {params.a} > {output.a}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.b} --tag {params.b} > {output.b}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.c} --tag {params.c} > {output.c}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.d} --tag {params.d} > {output.d}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.e} --tag {params.e} > {output.e}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.p} --tag {params.p} > {output.p}")

rule gff3Tofasta:
	input:
		g=rules.scan_sp15.output.db,
		a=rules.fix_gff.output.a,
		b=rules.fix_gff.output.b,
		c=rules.fix_gff.output.c,
		d=rules.fix_gff.output.d,
		e=rules.fix_gff.output.e,
		p=rules.fix_gff.output.p,
	output:
		at="../../data/processed/searches/sp15_exonerate_gasA.transcripts.fa",
		bt="../../data/processed/searches/sp15_exonerate_gasB.transcripts.fa",
		ct="../../data/processed/searches/sp15_exonerate_gasC.transcripts.fa",
		dt="../../data/processed/searches/sp15_exonerate_gasD.transcripts.fa",
		et="../../data/processed/searches/sp15_exonerate_gasE.transcripts.fa",
		pt="../../data/processed/searches/sp15_exonerate_gasP.transcripts.fa",
	run:
		shell("gffread -w {output.at} -g {input.g} {input.a}")
		shell("gffread -w {output.bt} -g {input.g} {input.b}")
		shell("gffread -w {output.ct} -g {input.g} {input.c}")
		shell("gffread -w {output.dt} -g {input.g} {input.d}")
		shell("gffread -w {output.et} -g {input.g} {input.e}")
		shell("gffread -w {output.pt} -g {input.g} {input.p}")
		
#		shell("funannotate util gff2prot --gff3 {input.a1} --fasta {input.sp15g} > {output.a1p}")
