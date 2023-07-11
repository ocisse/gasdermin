##
include: "../utils/build_hmm.smk"

rule scan_sp55:
	input:
		g1="../../data/external/ncbi/SP55/data/GCA_001949185.1/GCA_001949185.1_Rvar_4.0_genomic.fna",
		g2="../../data/external/ncbi/SP55/data/GCA_002082055.1/GCA_002082055.1_nHd_3.1_genomic.fna",
		g3="../../data/external/ncbi/SP55/data/GCA_019649055.1/GCA_019649055.1_Prichtersi_v1.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
		db=temp("../../data/external/ncbi/SP55/data/db.fas"),
 		sp55a="../../data/processed/searches/sp55_exonerate_gasA.tab",
 		sp55b="../../data/processed/searches/sp55_exonerate_gasB.tab",
 		sp55c="../../data/processed/searches/sp55_exonerate_gasC.tab",
		sp55d="../../data/processed/searches/sp55_exonerate_gasD.tab",
		sp55e="../../data/processed/searches/sp55_exonerate_gasE.tab",
		sp55p="../../data/processed/searches/sp55_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("cat {input.g1} {input.g2} {input.g3} > {output.db}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {output.db} {params} > {output.sp55a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {output.db} {params} > {output.sp55b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {output.db} {params} > {output.sp55c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {output.db} {params} > {output.sp55d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {output.db} {params} > {output.sp55e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {output.db} {params} > {output.sp55p}")
