# 
include: "01_find_gasdermins_sp31b.smk"

include: "../utils/build_hmm.smk"




rule get_candidates_predictions:
        input:
                gasAseed=rulesbuild_hmm.input.a,
                gasBseed=rules.build_hmm.input.b,
                gasCseed=rules.build_hmm.input.c,
                gasDseed=rules.build_hmm.input.d,
                gasEseed=rules.build_hmm.input.e,
                gasPseed=rules.build_hmm.input.p,
		


		sp31ba=rules.scan_sp31b.output.sp31ba
	output:
		sp31ba="../../data/processed/searches/sp31b_exonerate_gasA.bed"
	run:
		shell("")
