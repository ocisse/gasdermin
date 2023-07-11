##
include: "../utils/build_hmm.smk"

rule scan_sp38:
	input:
		sp38="../../data/external/ncbi/SP38/data/GCF_000150275.1/unplaced.scaf.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
	output:
 		sp38a="../../data/processed/searches/sp38_exonerate_gasA.tab",
 		sp38b="../../data/processed/searches/sp38_exonerate_gasB.tab",
 		sp38c="../../data/processed/searches/sp38_exonerate_gasC.tab",
		sp38d="../../data/processed/searches/sp38_exonerate_gasD.tab",
		sp38e="../../data/processed/searches/sp38_exonerate_gasE.tab",
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp38} {params} > {output.sp38a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp38} {params} > {output.sp38b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp38} {params} > {output.sp38c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp38} {params} > {output.sp38d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp38} {params} > {output.sp38e}")

rule scan_sp38b:
	input:
		sp38="../../data/external/ncbi/SP38b/data/GCA_003344405.1/GCA_003344405.1_TrispH2_1.0_genomic.fna",
                gasAseed=rules.cns.output.a,
                gasBseed=rules.cns.output.b,
                gasCseed=rules.cns.output.c,
                gasDseed=rules.cns.output.d,
                gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
                sp38a="../../data/processed/searches/sp38b_exonerate_gasA.tab",
                sp38b="../../data/processed/searches/sp38b_exonerate_gasB.tab",
                sp38c="../../data/processed/searches/sp38b_exonerate_gasC.tab",
                sp38d="../../data/processed/searches/sp38b_exonerate_gasD.tab",
                sp38e="../../data/processed/searches/sp38b_exonerate_gasE.tab",
		sp38p="../../data/processed/searches/sp38b_exonerate_gasP.tab",
	params:
                "--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp38} {params} > {output.sp38a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp38} {params} > {output.sp38b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp38} {params} > {output.sp38c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp38} {params} > {output.sp38d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp38} {params} > {output.sp38e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp38} {params} > {output.sp38p}")
