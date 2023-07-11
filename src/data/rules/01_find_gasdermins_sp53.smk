##
include: "../utils/build_hmm.smk"

rule scan_sp53:
	input:
		sp53="../../data/external/ncbi/SP53/data/GCA_003024985.2/GCA_003024985.2_Erow_1.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp53a="../../data/processed/searches/sp53_exonerate_gasA.tab",
 		sp53b="../../data/processed/searches/sp53_exonerate_gasB.tab",
 		sp53c="../../data/processed/searches/sp53_exonerate_gasC.tab",
		sp53d="../../data/processed/searches/sp53_exonerate_gasD.tab",
		sp53e="../../data/processed/searches/sp53_exonerate_gasE.tab",
		sp53p="../../data/processed/searches/sp53_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp53} {params} > {output.sp53a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp53} {params} > {output.sp53b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp53} {params} > {output.sp53c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp53} {params} > {output.sp53d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp53} {params} > {output.sp53e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp53} {params} > {output.sp53p}")

rule fix_gff:
        input:
                sp53p=rules.scan_sp53.output.sp53p

        params: sp53p="sp53_gasp",
        output:
                sp53p="../../data/processed/searches/sp53_exonerate_gasP.gff"
        run:
                shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp53p} --tag {params.sp53p} > {output.sp53p}")

rule gff3Tofasta:
        input:
                sp53g=rules.scan_sp53.input.sp53,
                sp53p=rules.fix_gff.output.sp53p
        output:
                sp53pt="../../data/processed/searches/sp53_exonerate_gasP_transcripts.fa",
                sp53pp="../../data/processed/searches/sp53_exonerate_gasP_proteins.fa"
        run:
                shell("gffread -w {output.sp53pt} -g {input.sp53g} {input.sp53p}")
                shell("funannotate util gff2prot --gff3 {input.sp53p} --fasta {input.sp53g} > {output.sp53pp}")

