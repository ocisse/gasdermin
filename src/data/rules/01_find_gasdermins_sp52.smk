##
# cd ~/data/gasdermins/data/external/ncbi/SP52/data
# cat  */*.fna > all_concat.fas

include: "../utils/build_hmm.smk"

rule scan_sp52:
	input:
		sp52="../../data/external/ncbi/SP52/data/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
# 		sp52a="../../data/processed/searches/sp52_exonerate_gasA.tab",
# 		sp52b="../../data/processed/searches/sp52_exonerate_gasB.tab",
# 		sp52c="../../data/processed/searches/sp52_exonerate_gasC.tab",
#		sp52d="../../data/processed/searches/sp52_exonerate_gasD.tab",
		sp52e="../../data/processed/searches/sp52_exonerate_gasE.tab",
		sp52p="../../data/processed/searches/sp52_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp52} {params} > {output.sp52a}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp52} {params} > {output.sp52b}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp52} {params} > {output.sp52c}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp52} {params} > {output.sp52d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp52} {params} > {output.sp52e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp52} {params} > {output.sp52p}")
