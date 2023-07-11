##
# cd /gpfs/gsfs11/users/cisseoh/gasdermins/data/external/ncbi/SP31b/data
# ls GC* | grep ':' | cut -f 1 -d ':' | while read f; do cd $f && cat *.fna > all_concat.fas && cd ..;done
#
include: "../utils/build_hmm.smk"

rule scan_sp31b:
	input:
		g1="../../data/external/ncbi/SP31b/data/GCA_000238235.1/all_concat.fas",
		g2="../../data/external/ncbi/SP31b/data/GCA_009764475.2/all_concat.fas",
		g3="../../data/external/ncbi/SP31b/data/GCA_012026655.1/all_concat.fas",
		g4="../../data/external/ncbi/SP31b/data/GCA_020745735.1/all_concat.fas",
		g5="../../data/external/ncbi/SP31b/data/GCF_001642345.1/all_concat.fas",
		g6="../../data/external/ncbi/SP31b/data/GCF_004010195.1/all_concat.fas",
		g7="../../data/external/ncbi/SP31b/data/GCF_010909765.2/all_concat.fas",
		g8="../../data/external/ncbi/SP31b/data/GCF_017639515.1/all_concat.fas",
		g9="../../data/external/ncbi/SP31b/data/GCF_902713615.1/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		g1a=protected("../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA.tab"),
 		g1b=protected("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasB.tab"),
 		g1c=protected("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasC.tab"),
		g1d=protected("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasD.tab"),
		g1e=protected("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE.tab"),
		g1p=protected("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP.tab"),
		                
		g2a=protected("../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA.tab"),
                g2b=protected("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasB.tab"),
                g2c=protected("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasC.tab"),
                g2d=protected("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasD.tab"),
                g2e=protected("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE.tab"),
                g2p=protected("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP.tab"),
		                
		g3a=protected("../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA.tab"),
                g3b=protected("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasB.tab"),
                g3c=protected("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasC.tab"),
                g3d=protected("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasD.tab"),
                g3e=protected("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE.tab"),
                g3p=protected("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP.tab"),
		                
		g4a=protected("../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA.tab"),
                g4b=protected("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasB.tab"),
                g4c=protected("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasC.tab"),
                g4d=protected("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD.tab"),
                g4e=protected("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE.tab"),
                g4p=protected("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP.tab"),
		                
		g5a=protected("../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA.tab"),
                g5b=protected("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasB.tab"),
                g5c=protected("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasC.tab"),
                g5d=protected("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasD.tab"),
                g5e=protected("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE.tab"),
                g5p=protected("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP.tab"),
		
		g6a=protected("../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA.tab"),
                g6b=protected("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasB.tab"),
                g6c=protected("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasC.tab"),
                g6d=protected("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD.tab"),
                g6e=protected("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE.tab"),
                g6p=protected("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP.tab"),
		                
		g7a=protected("../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA.tab"),
                g7b=protected("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasB.tab"),
                g7c=protected("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasC.tab"),
                g7d=protected("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasD.tab"),
                g7e=protected("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE.tab"),
                g7p=protected("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP.tab"),
		                
		g8a=protected("../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA.tab"),
                g8b=protected("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasB.tab"),
                g8c=protected("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasC.tab"),
                g8d=protected("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasD.tab"),
                g8e=protected("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE.tab"),
                g8p=protected("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP.tab"),
	                
		g9a=protected("../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA.tab"),
                g9b=protected("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasB.tab"),
                g9c=protected("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasC.tab"),
                g9d=protected("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasD.tab"),
                g9e=protected("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE.tab"),
                g9p=protected("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP.tab"),

	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g1} {params} > {output.g1a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g1} {params} > {output.g1b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g1} {params} > {output.g1c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g1} {params} > {output.g1d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g1} {params} > {output.g1e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g1} {params} > {output.g1p}")

		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g2} {params} > {output.g2a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g2} {params} > {output.g2b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g2} {params} > {output.g2c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g2} {params} > {output.g2d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g2} {params} > {output.g2e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g2} {params} > {output.g2p}")

		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g3} {params} > {output.g3a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g3} {params} > {output.g3b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g3} {params} > {output.g3c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g3} {params} > {output.g3d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g3} {params} > {output.g3e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g3} {params} > {output.g3p}")

		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g4} {params} > {output.g4a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g4} {params} > {output.g4b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g4} {params} > {output.g4c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g4} {params} > {output.g4d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g4} {params} > {output.g4e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g4} {params} > {output.g4p}")

		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g5} {params} > {output.g5a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g5} {params} > {output.g5b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g5} {params} > {output.g5c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g5} {params} > {output.g5d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g5} {params} > {output.g5e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g5} {params} > {output.g5p}")

                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g6} {params} > {output.g6a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g6} {params} > {output.g6b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g6} {params} > {output.g6c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g6} {params} > {output.g6d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g6} {params} > {output.g6e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g6} {params} > {output.g6p}")

		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g7} {params} > {output.g7a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g7} {params} > {output.g7b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g7} {params} > {output.g7c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g7} {params} > {output.g7d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g7} {params} > {output.g7e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g7} {params} > {output.g7p}")
		                
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g8} {params} > {output.g8a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g8} {params} > {output.g8b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g8} {params} > {output.g8c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g8} {params} > {output.g8d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g8} {params} > {output.g8e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g8} {params} > {output.g8p}")

		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.g9} {params} > {output.g9a}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.g9} {params} > {output.g9b}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.g9} {params} > {output.g9c}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.g9} {params} > {output.g9d}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.g9} {params} > {output.g9e}")
                shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g9} {params} > {output.g9p}")

rule gff2bed:
	input:
		g1a=rules.scan_sp31b.output.g1a,
		g1e=rules.scan_sp31b.output.g1e,
		g1p=rules.scan_sp31b.output.g1p,
		
		g2a=rules.scan_sp31b.output.g2a,
		g2e=rules.scan_sp31b.output.g2e,
		g2p=rules.scan_sp31b.output.g2p,

		g3a=rules.scan_sp31b.output.g3a,
		g3b=rules.scan_sp31b.output.g3b,
		g3c=rules.scan_sp31b.output.g3c,
		g3d=rules.scan_sp31b.output.g3d,
		g3e=rules.scan_sp31b.output.g3e,
		g3p=rules.scan_sp31b.output.g3p,	
	
		g4a=rules.scan_sp31b.output.g4a,
		g4b=rules.scan_sp31b.output.g4b,
		g4c=rules.scan_sp31b.output.g4c,
		g4d=rules.scan_sp31b.output.g4d,
		g4e=rules.scan_sp31b.output.g4e,
		g4p=rules.scan_sp31b.output.g4p,

		g5a=rules.scan_sp31b.output.g5a,
		g5b=rules.scan_sp31b.output.g5b,
		g5c=rules.scan_sp31b.output.g5c,
		g5d=rules.scan_sp31b.output.g5d,
		g5e=rules.scan_sp31b.output.g5e,
		g5p=rules.scan_sp31b.output.g5p,

		g6a=rules.scan_sp31b.output.g6a,
                g6b=rules.scan_sp31b.output.g6b,
		g6c=rules.scan_sp31b.output.g6c,
		g6d=rules.scan_sp31b.output.g6d,
		g6e=rules.scan_sp31b.output.g6e,
		g6p=rules.scan_sp31b.output.g6p,
		
		g7a=rules.scan_sp31b.output.g7a,
		g7b=rules.scan_sp31b.output.g7b,
		g7c=rules.scan_sp31b.output.g7c,
		g7d=rules.scan_sp31b.output.g7d,
		g7e=rules.scan_sp31b.output.g7e,
		g7p=rules.scan_sp31b.output.g7p,
		
		g8a=rules.scan_sp31b.output.g8a,
		g8b=rules.scan_sp31b.output.g8b,
                g8c=rules.scan_sp31b.output.g8c,
                g8d=rules.scan_sp31b.output.g8d,
                g8e=rules.scan_sp31b.output.g8e,
                g8p=rules.scan_sp31b.output.g8p,

		g9a=rules.scan_sp31b.output.g9a,
		g9b=rules.scan_sp31b.output.g9b,
		g9c=rules.scan_sp31b.output.g9c,
		g9d=rules.scan_sp31b.output.g9d,
		g9e=rules.scan_sp31b.output.g9e,
		g9p=rules.scan_sp31b.output.g9p,
	output:
		g1a=temp("../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA.bed"),
                g1e=temp("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE.bed"),
                g1p=temp("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP.bed"),

                g2a=temp("../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA.bed"),
                g2e=temp("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE.bed"),
                g2p=temp("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP.bed"),

		g3a=temp("../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA.bed"),
                g3e=temp("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE.bed"),
                g3p=temp("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP.bed"),
#
                g4a=temp("../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA.bed"),
                g4d=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD.bed"),
                g4e=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE.bed"),
                g4p=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP.bed"),

                g5a=temp("../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA.bed"),
                g5e=temp("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE.bed"),
                g5p=temp("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP.bed"),

                g6a=temp("../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA.bed"),
                g6d=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD.bed"),
                g6e=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE.bed"),
                g6p=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP.bed"),
#
                g7a=temp("../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA.bed"),
                g7e=temp("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE.bed"),
                g7p=temp("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP.bed"),

                g8a=temp("../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA.bed"),
                g8e=temp("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE.bed"),
                g8p=temp("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP.bed"),

                g9a=temp("../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA.bed"),
                g9e=temp("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE.bed"),
                g9p=temp("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP.bed"),
	
	run:
           	shell("grep -v \'^#\' {input.g1a} | cut -f 1,4,5,7 | sort -u > {output.g1a}")
		shell("grep -v \'^#\' {input.g1e} | cut -f 1,4,5,7 | sort -u > {output.g1e}")
		shell("grep -v \'^#\' {input.g1p} | cut -f 1,4,5,7 | sort -u > {output.g1p}")

		shell("grep -v \'^#\' {input.g2a} | cut -f 1,4,5,7 | sort -u > {output.g2a}")
		shell("grep -v \'^#\' {input.g2e} | cut -f 1,4,5,7 | sort -u > {output.g2e}")
		shell("grep -v \'^#\' {input.g2p} | cut -f 1,4,5,7 | sort -u > {output.g2p}")

		shell("grep -v \'^#\' {input.g3a} | cut -f 1,4,5,7 | sort -u > {output.g3a}")
                shell("grep -v \'^#\' {input.g3e} | cut -f 1,4,5,7 | sort -u > {output.g3e}")
                shell("grep -v \'^#\' {input.g3p} | cut -f 1,4,5,7 | sort -u > {output.g3p}")

		shell("grep -v \'^#\' {input.g4a} | cut -f 1,4,5,7 | sort -u > {output.g4a}")
		shell("grep -v \'^#\' {input.g4d} | cut -f 1,4,5,7 | sort -u > {output.g4d}")
		shell("grep -v \'^#\' {input.g4e} | cut -f 1,4,5,7 | sort -u > {output.g4e}")
		shell("grep -v \'^#\' {input.g4p} | cut -f 1,4,5,7 | sort -u > {output.g4p}")

		shell("grep -v \'^#\' {input.g5a} | cut -f 1,4,5,7 | sort -u > {output.g5a}")
		shell("grep -v \'^#\' {input.g5e} | cut -f 1,4,5,7 | sort -u > {output.g5e}")
		shell("grep -v \'^#\' {input.g5p} | cut -f 1,4,5,7 | sort -u > {output.g5p}")

		shell("grep -v \'^#\' {input.g6a} | cut -f 1,4,5,7 | sort -u > {output.g6a}")
		shell("grep -v \'^#\' {input.g6d} | cut -f 1,4,5,7 | sort -u > {output.g6d}")
		shell("grep -v \'^#\' {input.g6e} | cut -f 1,4,5,7 | sort -u > {output.g6e}")
		shell("grep -v \'^#\' {input.g6p} | cut -f 1,4,5,7 | sort -u > {output.g6p}")

		shell("grep -v \'^#\' {input.g7a} | cut -f 1,4,5,7 | sort -u > {output.g7a}")
		shell("grep -v \'^#\' {input.g7e} | cut -f 1,4,5,7 | sort -u > {output.g7e}")
		shell("grep -v \'^#\' {input.g7p} | cut -f 1,4,5,7 | sort -u > {output.g7p}")

		shell("grep -v \'^#\' {input.g8a} | cut -f 1,4,5,7 | sort -u > {output.g8a}")
		shell("grep -v \'^#\' {input.g8e} | cut -f 1,4,5,7 | sort -u > {output.g8e}")
		shell("grep -v \'^#\' {input.g8p} | cut -f 1,4,5,7 | sort -u > {output.g8p}")

		shell("grep -v \'^#\' {input.g9a} | cut -f 1,4,5,7 | sort -u > {output.g9a}")
		shell("grep -v \'^#\' {input.g9e} | cut -f 1,4,5,7 | sort -u > {output.g9e}")
		shell("grep -v \'^#\' {input.g9p} | cut -f 1,4,5,7 | sort -u > {output.g9p}")
	

rule generate_genome_file:
	input:
		g1=rules.scan_sp31b.input.g1,
		g2=rules.scan_sp31b.input.g2,
		g3=rules.scan_sp31b.input.g3,
		g4=rules.scan_sp31b.input.g4,
		g5=rules.scan_sp31b.input.g5,
		g6=rules.scan_sp31b.input.g6,
		g7=rules.scan_sp31b.input.g7,
		g8=rules.scan_sp31b.input.g8,
		g9=rules.scan_sp31b.input.g9,

	output:
		g1="../../data/external/ncbi/SP31b/data/GCA_000238235.1/all_concat.txt",
		g2="../../data/external/ncbi/SP31b/data/GCA_009764475.2/all_concat.txt",
                g3="../../data/external/ncbi/SP31b/data/GCA_012026655.1/all_concat.txt",
                g4="../../data/external/ncbi/SP31b/data/GCA_020745735.1/all_concat.txt",
                g5="../../data/external/ncbi/SP31b/data/GCF_001642345.1/all_concat.txt",
                g6="../../data/external/ncbi/SP31b/data/GCF_004010195.1/all_concat.txt",
                g7="../../data/external/ncbi/SP31b/data/GCF_010909765.2/all_concat.txt",
                g8="../../data/external/ncbi/SP31b/data/GCF_017639515.1/all_concat.txt",
                g9="../../data/external/ncbi/SP31b/data/GCF_902713615.1/all_concat.txt",

	run:
           	shell("seqtk comp {input.g1} | cut -f 1,2 > {output.g1}")
		shell("seqtk comp {input.g2} | cut -f 1,2 > {output.g2}")
		shell("seqtk comp {input.g3} | cut -f 1,2 > {output.g3}")
		shell("seqtk comp {input.g4} | cut -f 1,2 > {output.g4}")
		shell("seqtk comp {input.g5} | cut -f 1,2 > {output.g5}")
		shell("seqtk comp {input.g6} | cut -f 1,2 > {output.g6}")
		shell("seqtk comp {input.g7} | cut -f 1,2 > {output.g7}")
		shell("seqtk comp {input.g8} | cut -f 1,2 > {output.g8}")
		shell("seqtk comp {input.g9} | cut -f 1,2 > {output.g9}")
		
rule bed2extendedbed:
	input:
		g1=rules.generate_genome_file.output.g1,
		g2=rules.generate_genome_file.output.g2,
		g3=rules.generate_genome_file.output.g3,
		g4=rules.generate_genome_file.output.g4,
		g5=rules.generate_genome_file.output.g5,
		g6=rules.generate_genome_file.output.g6,
		g7=rules.generate_genome_file.output.g7,
		g8=rules.generate_genome_file.output.g8,
		g9=rules.generate_genome_file.output.g9,
		g1a=rules.gff2bed.output.g1a,g1e=rules.gff2bed.output.g1e,g1p=rules.gff2bed.output.g1p,
		g2a=rules.gff2bed.output.g2a,g2e=rules.gff2bed.output.g2e,g2p=rules.gff2bed.output.g2p,
		g3a=rules.gff2bed.output.g3a,g3e=rules.gff2bed.output.g3e,g3p=rules.gff2bed.output.g3p,
		g4a=rules.gff2bed.output.g4a,g4d=rules.gff2bed.output.g4d,g4e=rules.gff2bed.output.g4e,g4p=rules.gff2bed.output.g4p,
		g5a=rules.gff2bed.output.g5a,g5e=rules.gff2bed.output.g5e,g5p=rules.gff2bed.output.g5p,
		g6a=rules.gff2bed.output.g6a,g6d=rules.gff2bed.output.g6d,g6e=rules.gff2bed.output.g6e,g6p=rules.gff2bed.output.g6p,
		g7a=rules.gff2bed.output.g7a,g7e=rules.gff2bed.output.g7e,g7p=rules.gff2bed.output.g7p,
		g8a=rules.gff2bed.output.g8a,g8e=rules.gff2bed.output.g8e,g8p=rules.gff2bed.output.g8p,
		g9a=rules.gff2bed.output.g9a,g9e=rules.gff2bed.output.g9e,g9p=rules.gff2bed.output.g9p,

	params: "10000" # 10kb
	output:
		g1a=temp("../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA_ext.bed"),
                g1e=temp("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE_ext.bed"),
                g1p=temp("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP_ext.bed"),

                g2a=temp("../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA_ext.bed"),
                g2e=temp("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE_ext.bed"),
                g2p=temp("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP_ext.bed"),

                g3a=temp("../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA_ext.bed"),
                g3e=temp("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE_ext.bed"),
                g3p=temp("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP_ext.bed"),
                
		g4a=temp("../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA_ext.bed"),
                g4d=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD_ext.bed"),
                g4e=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE_ext.bed"),
                g4p=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP_ext.bed"),

                g5a=temp("../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA_ext.bed"),
                g5e=temp("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE_ext.bed"),
                g5p=temp("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP_ext.bed"),

                g6a=temp("../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA_ext.bed"),
                g6d=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD_ext.bed"),
                g6e=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE_ext.bed"),
                g6p=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP_ext.bed"),
                
		g7a=temp("../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA_ext.bed"),
                g7e=temp("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE_ext.bed"),
                g7p=temp("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP_ext.bed"),

                g8a=temp("../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA_ext.bed"),
                g8e=temp("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE_ext.bed"),
                g8p=temp("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP_ext.bed"),

                g9a=temp("../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA_ext.bed"),
                g9e=temp("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE_ext.bed"),
                g9p=temp("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP_ext.bed"),

	run:
                shell("bedtools slop -i {input.g1a} -g {input.g1} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g1a}")
		shell("bedtools slop -i {input.g1a} -g {input.g1} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g1a}")
		shell("bedtools slop -i {input.g2a} -g {input.g2} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g2a}")
		shell("bedtools slop -i {input.g3a} -g {input.g3} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g3a}")
		shell("bedtools slop -i {input.g4a} -g {input.g4} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g4a}")
		shell("bedtools slop -i {input.g5a} -g {input.g5} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g5a}")
		shell("bedtools slop -i {input.g6a} -g {input.g6} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g6a}")
		shell("bedtools slop -i {input.g7a} -g {input.g7} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g7a}")
		shell("bedtools slop -i {input.g8a} -g {input.g8} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g8a}")
		shell("bedtools slop -i {input.g9a} -g {input.g9} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g9a}")

		shell("bedtools slop -i {input.g4d} -g {input.g4} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g4d}")
		shell("bedtools slop -i {input.g6d} -g {input.g6} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g6d}")

		shell("bedtools slop -i {input.g1e} -g {input.g1} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g1e}")
		shell("bedtools slop -i {input.g2e} -g {input.g2} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g2e}")
		shell("bedtools slop -i {input.g3e} -g {input.g3} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g3e}")
		shell("bedtools slop -i {input.g4e} -g {input.g4} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g4e}")
		shell("bedtools slop -i {input.g5e} -g {input.g5} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g5e}")
		shell("bedtools slop -i {input.g6e} -g {input.g6} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g6e}")
		shell("bedtools slop -i {input.g7e} -g {input.g7} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g7e}")
		shell("bedtools slop -i {input.g8e} -g {input.g8} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g8e}")
		shell("bedtools slop -i {input.g9e} -g {input.g9} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g9e}")

		shell("bedtools slop -i {input.g1p} -g {input.g1} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g1p}")
		shell("bedtools slop -i {input.g2p} -g {input.g2} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g2p}")
		shell("bedtools slop -i {input.g3p} -g {input.g3} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g3p}")
		shell("bedtools slop -i {input.g4p} -g {input.g4} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g4p}")
		shell("bedtools slop -i {input.g5p} -g {input.g5} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g5p}")
		shell("bedtools slop -i {input.g6p} -g {input.g6} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g6p}")
		shell("bedtools slop -i {input.g7p} -g {input.g7} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g7p}")
		shell("bedtools slop -i {input.g8p} -g {input.g8} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g8p}")
		shell("bedtools slop -i {input.g9p} -g {input.g9} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g9p}")


rule bed2fasta:
	input:
		g1=rules.scan_sp31b.input.g1,
                g2=rules.scan_sp31b.input.g2,
                g3=rules.scan_sp31b.input.g3,
                g4=rules.scan_sp31b.input.g4,
                g5=rules.scan_sp31b.input.g5,
                g6=rules.scan_sp31b.input.g6,
                g7=rules.scan_sp31b.input.g7,
                g8=rules.scan_sp31b.input.g8,
                g9=rules.scan_sp31b.input.g9,
		g1a=rules.bed2extendedbed.output.g1a,g1e=rules.bed2extendedbed.output.g1e,g1p=rules.bed2extendedbed.output.g1p,
                g2a=rules.bed2extendedbed.output.g2a,g2e=rules.bed2extendedbed.output.g2e,g2p=rules.bed2extendedbed.output.g2p,
                g3a=rules.bed2extendedbed.output.g3a,g3e=rules.bed2extendedbed.output.g3e,g3p=rules.bed2extendedbed.output.g3p,
                g4a=rules.bed2extendedbed.output.g4a,g4d=rules.bed2extendedbed.output.g4d,g4e=rules.bed2extendedbed.output.g4e,g4p=rules.bed2extendedbed.output.g4p,
                g5a=rules.bed2extendedbed.output.g5a,g5e=rules.bed2extendedbed.output.g5e,g5p=rules.bed2extendedbed.output.g5p,
                g6a=rules.bed2extendedbed.output.g6a,g6d=rules.bed2extendedbed.output.g6d,g6e=rules.bed2extendedbed.output.g6e,g6p=rules.bed2extendedbed.output.g6p,
                g7a=rules.bed2extendedbed.output.g7a,g7e=rules.bed2extendedbed.output.g7e,g7p=rules.bed2extendedbed.output.g7p,
                g8a=rules.bed2extendedbed.output.g8a,g8e=rules.bed2extendedbed.output.g8e,g8p=rules.bed2extendedbed.output.g8p,
                g9a=rules.bed2extendedbed.output.g9a,g9e=rules.bed2extendedbed.output.g9e,g9p=rules.bed2extendedbed.output.g9p,

	output:
		g1a="../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA_ext.fa",
                g1e="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE_ext.fa",
                g1p="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP_ext.fa",

                g2a="../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA_ext.fa",
                g2e="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE_ext.fa",
                g2p="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP_ext.fa",

                g3a="../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA_ext.fa",
                g3e="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE_ext.fa",
                g3p="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP_ext.fa",

                g4a="../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA_ext.fa",
                g4d="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD_ext.fa",
                g4e="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE_ext.fa",
                g4p="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP_ext.fa",

                g5a="../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA_ext.fa",
                g5e="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE_ext.fa",
                g5p="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP_ext.fa",

                g6a="../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA_ext.fa",
                g6d="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD_ext.fa",
                g6e="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE_ext.fa",
                g6p="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP_ext.fa",

                g7a="../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA_ext.fa",
                g7e="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE_ext.fa",
                g7p="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP_ext.fa",

                g8a="../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA_ext.fa",
                g8e="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE_ext.fa",
                g8p="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP_ext.fa",

                g9a="../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA_ext.fa",
                g9e="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE_ext.fa",
                g9p="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP_ext.fa",

	run:
		shell("bedtools getfasta -fi {input.g1} -bed {input.g1a} -fo {output.g1a}") #
		shell("bedtools getfasta -fi {input.g1} -bed {input.g1e} -fo {output.g1e}")
		shell("bedtools getfasta -fi {input.g1} -bed {input.g1p} -fo {output.g1p}")

		shell("bedtools getfasta -fi {input.g2} -bed {input.g2a} -fo {output.g2a}")
                shell("bedtools getfasta -fi {input.g2} -bed {input.g2e} -fo {output.g2e}")
                shell("bedtools getfasta -fi {input.g2} -bed {input.g2p} -fo {output.g2p}")

		shell("bedtools getfasta -fi {input.g3} -bed {input.g3a} -fo {output.g3a}")
                shell("bedtools getfasta -fi {input.g3} -bed {input.g3e} -fo {output.g3e}")
                shell("bedtools getfasta -fi {input.g3} -bed {input.g3p} -fo {output.g3p}")
		
		shell("bedtools getfasta -fi {input.g4} -bed {input.g4a} -fo {output.g4a}")
                shell("bedtools getfasta -fi {input.g4} -bed {input.g4d} -fo {output.g4d}")
		shell("bedtools getfasta -fi {input.g4} -bed {input.g4e} -fo {output.g4e}")
                shell("bedtools getfasta -fi {input.g4} -bed {input.g4p} -fo {output.g4p}")
			
		shell("bedtools getfasta -fi {input.g5} -bed {input.g5a} -fo {output.g5a}")
                shell("bedtools getfasta -fi {input.g5} -bed {input.g5e} -fo {output.g5e}")
                shell("bedtools getfasta -fi {input.g5} -bed {input.g5p} -fo {output.g5p}")
	
		shell("bedtools getfasta -fi {input.g6} -bed {input.g6a} -fo {output.g6a}")
                shell("bedtools getfasta -fi {input.g6} -bed {input.g6d} -fo {output.g6d}")
		shell("bedtools getfasta -fi {input.g6} -bed {input.g6e} -fo {output.g6e}")
                shell("bedtools getfasta -fi {input.g6} -bed {input.g6p} -fo {output.g6p}")

		shell("bedtools getfasta -fi {input.g7} -bed {input.g7a} -fo {output.g7a}")
                shell("bedtools getfasta -fi {input.g7} -bed {input.g7e} -fo {output.g7e}")
                shell("bedtools getfasta -fi {input.g7} -bed {input.g7p} -fo {output.g7p}")
	
		shell("bedtools getfasta -fi {input.g8} -bed {input.g8a} -fo {output.g8a}")
                shell("bedtools getfasta -fi {input.g8} -bed {input.g8e} -fo {output.g8e}")
                shell("bedtools getfasta -fi {input.g8} -bed {input.g8p} -fo {output.g8p}")

		shell("bedtools getfasta -fi {input.g9} -bed {input.g9a} -fo {output.g9a}")
                shell("bedtools getfasta -fi {input.g9} -bed {input.g9e} -fo {output.g9e}")
                shell("bedtools getfasta -fi {input.g9} -bed {input.g9p} -fo {output.g9p}")
			
rule fastBlockSearch:
	input:
		aprl=rules.build_prfl.output.a,
		bprl=rules.build_prfl.output.b,
		cprl=rules.build_prfl.output.c,
		dprl=rules.build_prfl.output.d,
		eprl=rules.build_prfl.output.e,
		pprl=rules.build_prfl.output.p,
		g1a=rules.bed2fasta.output.g1a,g1e=rules.bed2fasta.output.g1e,g1p=rules.bed2fasta.output.g1p,
                g2a=rules.bed2fasta.output.g2a,g2e=rules.bed2fasta.output.g2e,g2p=rules.bed2fasta.output.g2p,
                g3a=rules.bed2fasta.output.g3a,g3e=rules.bed2fasta.output.g3e,g3p=rules.bed2fasta.output.g3p,
                g4a=rules.bed2fasta.output.g4a,g4d=rules.bed2fasta.output.g4d,g4e=rules.bed2fasta.output.g4e,g4p=rules.bed2fasta.output.g4p,
                g5a=rules.bed2fasta.output.g5a,g5e=rules.bed2fasta.output.g5e,g5p=rules.bed2fasta.output.g5p,
                g6a=rules.bed2fasta.output.g6a,g6d=rules.bed2fasta.output.g6d,g6e=rules.bed2fasta.output.g6e,g6p=rules.bed2fasta.output.g6p,
                g7a=rules.bed2fasta.output.g7a,g7e=rules.bed2fasta.output.g7e,g7p=rules.bed2fasta.output.g7p,
                g8a=rules.bed2fasta.output.g8a,g8e=rules.bed2fasta.output.g8e,g8p=rules.bed2fasta.output.g8p,
                g9a=rules.bed2fasta.output.g9a,g9e=rules.bed2fasta.output.g9e,g9p=rules.bed2fasta.output.g9p,

	output:
		g1a=temp("../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA_ext.tmp"),
                g1e=temp("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE_ext.tmp"),
                g1p=temp("../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP_ext.tmp"),

                g2a=temp("../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA_ext.tmp"),
                g2e=temp("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE_ext.tmp"),
                g2p=temp("../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP_ext.tmp"),

                g3a=temp("../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA_ext.tmp"),
                g3e=temp("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE_ext.tmp"),
                g3p=temp("../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP_ext.tmp"),

                g4a=temp("../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA_ext.tmp"),
                g4d=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD_ext.tmp"),
                g4e=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE_ext.tmp"),
                g4p=temp("../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP_ext.tmp"),

                g5a=temp("../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA_ext.tmp"),
                g5e=temp("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE_ext.tmp"),
                g5p=temp("../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP_ext.tmp"),

                g6a=temp("../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA_ext.tmp"),
                g6d=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD_ext.tmp"),
                g6e=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE_ext.tmp"),
                g6p=temp("../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP_ext.tmp"),

                g7a=temp("../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA_ext.tmp"),
                g7e=temp("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE_ext.tmp"),
                g7p=temp("../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP_ext.tmp"),

                g8a=temp("../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA_ext.tmp"),
                g8e=temp("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE_ext.tmp"),
                g8p=temp("../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP_ext.tmp"),

                g9a=temp("../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA_ext.tmp"),
                g9e=temp("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE_ext.tmp"),
                g9p=temp("../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP_ext.tmp"),

	params: 
		c="1.1"
	run:
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g1a} {input.aprl} > {output.g1a}")
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g1e} {input.eprl} > {output.g1e}")
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g1p} {input.pprl} > {output.g1p}")
	
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g2a} {input.aprl} > {output.g2a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g2e} {input.eprl} > {output.g2e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g2p} {input.pprl} > {output.g2p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g3a} {input.aprl} > {output.g3a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g3e} {input.eprl} > {output.g3e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g3p} {input.pprl} > {output.g3p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g4a} {input.aprl} > {output.g4a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g4d} {input.dprl} > {output.g4d}")
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g4e} {input.eprl} > {output.g4e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g4p} {input.pprl} > {output.g4p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g5a} {input.aprl} > {output.g5a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g5e} {input.eprl} > {output.g5e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g5p} {input.pprl} > {output.g5p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g6a} {input.aprl} > {output.g6a}")
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g6d} {input.dprl} > {output.g6d}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g6e} {input.eprl} > {output.g6e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g6p} {input.pprl} > {output.g6p}")

		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g7a} {input.aprl} > {output.g7a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g7e} {input.eprl} > {output.g7e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g7p} {input.pprl} > {output.g7p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g8a} {input.aprl} > {output.g8a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g8e} {input.eprl} > {output.g8e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g8p} {input.pprl} > {output.g8p}")

		shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g9a} {input.aprl} > {output.g9a}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g9e} {input.eprl} > {output.g9e}")
                shell("/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input.g9p} {input.pprl} > {output.g9p}")
	
rule augppx_pred:
	input:
		aprl=rules.build_prfl.output.a,
                bprl=rules.build_prfl.output.b,
                cprl=rules.build_prfl.output.c,
                dprl=rules.build_prfl.output.d,
                eprl=rules.build_prfl.output.e,
                pprl=rules.build_prfl.output.p,
		cfg="/gpfs/gsfs11/users/cisseoh/gasdermins/src/tools/ppx.cfg",
                g1a=rules.bed2fasta.output.g1a,g1e=rules.bed2fasta.output.g1e,g1p=rules.bed2fasta.output.g1p,
                g2a=rules.bed2fasta.output.g2a,g2e=rules.bed2fasta.output.g2e,g2p=rules.bed2fasta.output.g2p,
                g3a=rules.bed2fasta.output.g3a,g3e=rules.bed2fasta.output.g3e,g3p=rules.bed2fasta.output.g3p,
                g4a=rules.bed2fasta.output.g4a,g4d=rules.bed2fasta.output.g4d,g4e=rules.bed2fasta.output.g4e,g4p=rules.bed2fasta.output.g4p,
                g5a=rules.bed2fasta.output.g5a,g5e=rules.bed2fasta.output.g5e,g5p=rules.bed2fasta.output.g5p,
                g6a=rules.bed2fasta.output.g6a,g6d=rules.bed2fasta.output.g6d,g6e=rules.bed2fasta.output.g6e,g6p=rules.bed2fasta.output.g6p,
                g7a=rules.bed2fasta.output.g7a,g7e=rules.bed2fasta.output.g7e,g7p=rules.bed2fasta.output.g7p,
                g8a=rules.bed2fasta.output.g8a,g8e=rules.bed2fasta.output.g8e,g8p=rules.bed2fasta.output.g8p,
                g9a=rules.bed2fasta.output.g9a,g9e=rules.bed2fasta.output.g9e,g9p=rules.bed2fasta.output.g9p,

	output:
		g1a="../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA_ext.gff",
                g1e="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE_ext.gff",
                g1p="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP_ext.gff",

                g2a="../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA_ext.gff",
                g2e="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE_ext.gff",
                g2p="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP_ext.gff",

                g3a="../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA_ext.gff",
                g3e="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE_ext.gff",
                g3p="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP_ext.gff",

                g4a="../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA_ext.gff",
                g4d="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD_ext.gff",
                g4e="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE_ext.gff",
                g4p="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP_ext.gff",

                g5a="../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA_ext.gff",
                g5e="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE_ext.gff",
                g5p="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP_ext.gff",

                g6a="../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA_ext.gff",
                g6d="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD_ext.gff",
                g6e="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE_ext.gff",
                g6p="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP_ext.gff",

                g7a="../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA_ext.gff",
                g7e="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE_ext.gff",
                g7p="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP_ext.gff",

                g8a="../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA_ext.gff",
                g8e="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE_ext.gff",
                g8p="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP_ext.gff",

                g9a="../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA_ext.gff",
                g9e="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE_ext.gff",
                g9p="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP_ext.gff",

	run:
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g1a} > {output.g1a}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g1e} > {output.g1e}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g1p} > {output.g1p}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g1a}  --seqfile={input.g1a}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g1e}  --seqfile={input.g1e}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g1p}  --seqfile={input.g1p}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g2a} > {output.g2a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g2e} > {output.g2e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g2p} > {output.g2p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g2a}  --seqfile={input.g2a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g2e}  --seqfile={input.g2e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g2p}  --seqfile={input.g2p}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g3a} > {output.g3a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g3e} > {output.g3e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g3p} > {output.g3p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g3a}  --seqfile={input.g3a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g3e}  --seqfile={input.g3e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g3p}  --seqfile={input.g3p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g4a} > {output.g4a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g4d} > {output.g4d}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g4e} > {output.g4e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g4p} > {output.g4p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g4a}  --seqfile={input.g4a}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g4d}  --seqfile={input.g4d}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g4e}  --seqfile={input.g4e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g4p}  --seqfile={input.g4p}")
			
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g5a} > {output.g5a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g5e} > {output.g5e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g5p} > {output.g5p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g5a}  --seqfile={input.g5a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g5e}  --seqfile={input.g5e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g5p}  --seqfile={input.g5p}")
	
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g6a} > {output.g6a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g6d} > {output.g6d}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g6e} > {output.g6e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g6p} > {output.g6p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g6a}  --seqfile={input.g6a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g6d}  --seqfile={input.g6d}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g6e}  --seqfile={input.g6e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g6p}  --seqfile={input.g6p}")
			
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g7a} > {output.g7a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g7e} > {output.g7e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g7p} > {output.g7p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7a}  --seqfile={input.g7a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7e}  --seqfile={input.g7e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7p}  --seqfile={input.g7p}")
		
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g8a} > {output.g8a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g8e} > {output.g8e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g8p} > {output.g8p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g8a}  --seqfile={input.g8a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g8e}  --seqfile={input.g8e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g8p}  --seqfile={input.g8p}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g9a} > {output.g9a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g9e} > {output.g9e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g9p} > {output.g9p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9a}  --seqfile={input.g9a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9e}  --seqfile={input.g9e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9p}  --seqfile={input.g9p}")

	
rule insert_id:
	input:
		g1a="../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA_ext.aa",
                g1e="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE_ext.aa",
                g1p="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP_ext.aa",

                g2a="../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA_ext.aa",
                g2e="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE_ext.aa",
                g2p="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP_ext.aa",

                g3a="../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA_ext.aa",
                g3e="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE_ext.aa",
                g3p="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP_ext.aa",

                g4a="../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA_ext.aa",
                g4d="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD_ext.aa",
                g4e="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE_ext.aa",
                g4p="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP_ext.aa",

                g5a="../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA_ext.aa",
                g5e="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE_ext.aa",
                g5p="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP_ext.aa",

                g6a="../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA_ext.aa",
                g6d="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD_ext.aa",
                g6e="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE_ext.aa",
                g6p="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP_ext.aa",

                g7a="../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA_ext.aa",
                g7e="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE_ext.aa",
                g7p="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP_ext.aa",

                g8a="../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA_ext.aa",
                g8e="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE_ext.aa",
                g8p="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP_ext.aa",

                g9a="../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA_ext.aa",
                g9e="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE_ext.aa",
                g9p="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP_ext.aa",
		
	output:
		g1a="../../data/processed/searches/SP31b/GCA_000238235.1_exonerate_gasA_ext_tag.aa",
                g1e="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasE_ext_tag.aa",
                g1p="../../data/processed/searches/sp31b/GCA_000238235.1_exonerate_gasP_ext_tag.aa",

                g2a="../../data/processed/searches/SP31b/GCA_009764475.2_exonerate_gasA_ext_tag.aa",
                g2e="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasE_ext_tag.aa",
                g2p="../../data/processed/searches/sp31b/GCA_009764475.2_exonerate_gasP_ext_tag.aa",

                g3a="../../data/processed/searches/SP31b/GCA_012026655.1_exonerate_gasA_ext_tag.aa",
                g3e="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasE_ext_tag.aa",
                g3p="../../data/processed/searches/sp31b/GCA_012026655.1_exonerate_gasP_ext_tag.aa",

                g4a="../../data/processed/searches/SP31b/GCA_020745735.1_exonerate_gasA_ext_tag.aa",
                g4d="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasD_ext_tag.aa",
                g4e="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasE_ext_tag.aa",
                g4p="../../data/processed/searches/sp31b/GCA_020745735.1_exonerate_gasP_ext_tag.aa",

                g5a="../../data/processed/searches/SP31b/GCF_001642345.1_exonerate_gasA_ext_tag.aa",
                g5e="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasE_ext_tag.aa",
                g5p="../../data/processed/searches/sp31b/GCF_001642345.1_exonerate_gasP_ext_tag.aa",

                g6a="../../data/processed/searches/SP31b/GCF_004010195.1_exonerate_gasA_ext_tag.aa",
                g6d="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasD_ext_tag.aa",
                g6e="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasE_ext_tag.aa",
                g6p="../../data/processed/searches/sp31b/GCF_004010195.1_exonerate_gasP_ext_tag.aa",

                g7a="../../data/processed/searches/SP31b/GCF_010909765.2_exonerate_gasA_ext_tag.aa",
                g7e="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasE_ext_tag.aa",
                g7p="../../data/processed/searches/sp31b/GCF_010909765.2_exonerate_gasP_ext_tag.aa",

                g8a="../../data/processed/searches/SP31b/GCF_017639515.1_exonerate_gasA_ext_tag.aa",
                g8e="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasE_ext_tag.aa",
                g8p="../../data/processed/searches/sp31b/GCF_017639515.1_exonerate_gasP_ext_tag.aa",

                g9a="../../data/processed/searches/SP31b/GCF_902713615.1_exonerate_gasA_ext_tag.aa",
                g9e="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasE_ext_tag.aa",
                g9p="../../data/processed/searches/sp31b/GCF_902713615.1_exonerate_gasP_ext_tag.aa",
	
	params: "sp31b"
	run:
		shell("perl ../scripts/insert_tag.pl --fasta {input.g1a} --tag {params} > {output.g1a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g1e} --tag {params} > {output.g1e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g1p} --tag {params} > {output.g1p}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g2a} --tag {params} > {output.g2a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g2e} --tag {params} > {output.g2e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g2p} --tag {params} > {output.g2p}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g3a} --tag {params} > {output.g3a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g3e} --tag {params} > {output.g3e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g3p} --tag {params} > {output.g3p}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g4a} --tag {params} > {output.g4a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g4d} --tag {params} > {output.g4d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g4e} --tag {params} > {output.g4e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g4p} --tag {params} > {output.g4p}")
		
		shell("perl ../scripts/insert_tag.pl --fasta {input.g5a} --tag {params} > {output.g5a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g5e} --tag {params} > {output.g5e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g5p} --tag {params} > {output.g5p}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g6a} --tag {params} > {output.g6a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g6d} --tag {params} > {output.g6d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g6e} --tag {params} > {output.g6e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g6p} --tag {params} > {output.g6p}")
			
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7a} --tag {params} > {output.g7a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g7e} --tag {params} > {output.g7e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g7p} --tag {params} > {output.g7p}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g8a} --tag {params} > {output.g8a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g8e} --tag {params} > {output.g8e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g8p} --tag {params} > {output.g8p}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g9a} --tag {params} > {output.g9a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9e} --tag {params} > {output.g9e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9p} --tag {params} > {output.g9p}")

# quick test to see
#  module load orthofinder
rule merge_sp31b:
	input:
		a="../../data/raw/Stephen/MSA/GsdmA.fst",
                b="../../data/raw/Stephen/MSA/GsdmB.fst",
                c="../../data/raw/Stephen/MSA/GsdmC.fst",
                d="../../data/raw/Stephen/MSA/GsdmD.fst",
                e="../../data/raw/Stephen/MSA/GsdmE.fst",
                p="../../data/raw/Stephen/MSA/Pjvk.fst",

		g1a=rules.insert_id.output.g1a, 
		g1e=rules.insert_id.output.g1e,
		g1p=rules.insert_id.output.g1p,

		g2a=rules.insert_id.output.g2a,
                g2e=rules.insert_id.output.g2e,
                g2p=rules.insert_id.output.g2p,
	
		g3a=rules.insert_id.output.g3a,
                g3e=rules.insert_id.output.g3e,
                g3p=rules.insert_id.output.g3p,
			
		g4a=rules.insert_id.output.g4a,
                g4d=rules.insert_id.output.g4d,
		g4e=rules.insert_id.output.g4e,
                g4p=rules.insert_id.output.g4p,

		g5a=rules.insert_id.output.g5a,
                g5e=rules.insert_id.output.g5e,
                g5p=rules.insert_id.output.g5p,
		
		g6a=rules.insert_id.output.g6a,
                g6d=rules.insert_id.output.g6d,
                g6e=rules.insert_id.output.g6e,
                g6p=rules.insert_id.output.g6p,
		                
		g7a=rules.insert_id.output.g7a,
                g7e=rules.insert_id.output.g7e,
                g7p=rules.insert_id.output.g7p,
		
		g8a=rules.insert_id.output.g8a,
                g8e=rules.insert_id.output.g8e,
                g8p=rules.insert_id.output.g8p,
		
		g9a=rules.insert_id.output.g9a,
                g9e=rules.insert_id.output.g9e,
                g9p=rules.insert_id.output.g9p,
		
	output:
		all="../../data/processed/searches/SP31b/sp31b_allpreds.fasta",
		
	shell:
		"cat {input.g1a}  {input.g1e} {input.g1p} "
		"{input.g2a}  {input.g2e} {input.g2p} "
		"{input.g3a}  {input.g3e} {input.g3p} "
		"{input.g4a}  {input.g4d} {input.g4e} {input.g4p} "
		"{input.g5a}  {input.g5e} {input.g5p} "
		"{input.g6a}  {input.g6d} {input.g6e} {input.g6p} "
		"{input.g7a}  {input.g7e} {input.g7p} "
		"{input.g8a}  {input.g8e} {input.g8p} "
		"{input.g9a}  {input.g9e} {input.g9p} "
		"> {output.all}"

rule orthofinder:
    input:
    output:
        dir=directory("../../data/processed/Orthofinder_results")
    threads: 12
    params:
        n='210910'

    shell:
        "orthofinder -z -t {threads} -p ../../data/processed/Orthodb/tmp_ortho -o {output.dir} -f  ../../data/processed/Orthodb"

# after first run, manual curation, these sequences are irrelevant
rule clean_up_31b:
	input:
		torem="../../data/processed/searches/SP31b/sequences2remove.txt",
		all=rules.merge_sp31b.output.all, 
	output:
		clean="../../data/processed/searches/SP31b/sp31b_allpreds_clean.fasta"
	run:
		shell("filterbyname.sh in={input.all} out={output.c} names={input.torem}")
		
