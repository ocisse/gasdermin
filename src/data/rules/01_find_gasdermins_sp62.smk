##
include: "../utils/build_hmm.smk"

rule scan_sp62:
	input:
		g1="../../data/external/ncbi/SP62/data/GCA_014621495.2/all_seq.fas",
		g2="../../data/external/ncbi/SP62/data/GCA_015708825.1/all_seq.fas",
		g3="../../data/external/ncbi/SP62/data/GCA_018977245.1/all_seq.fas",
		g4="../../data/external/ncbi/SP62/data/GCA_900186335.2/all_seq.fas",
		g5="../../data/external/ncbi/SP62/data/GCF_010993605.1/all_seq.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		g1a="../../data/processed/searches/sp62/GCA_014621495_gasA.tab",
		g1b="../../data/processed/searches/sp62/GCA_014621495_gasB.tab",
		g1c="../../data/processed/searches/sp62/GCA_014621495_gasC.tab",
		g1d="../../data/processed/searches/sp62/GCA_014621495_gasD.tab",
		g1e="../../data/processed/searches/sp62/GCA_014621495_gasE.tab",
		g1p="../../data/processed/searches/sp62/GCA_014621495_gasP.tab",
		
		g2a="../../data/processed/searches/sp62/GCA_015708825_gasA.tab",
                g2b="../../data/processed/searches/sp62/GCA_015708825_gasB.tab",
                g2c="../../data/processed/searches/sp62/GCA_015708825_gasC.tab",
                g2d="../../data/processed/searches/sp62/GCA_015708825_gasD.tab",
                g2e="../../data/processed/searches/sp62/GCA_015708825_gasE.tab",
                g2p="../../data/processed/searches/sp62/GCA_015708825_gasP.tab",

		g3a="../../data/processed/searches/sp62/GCA_018977245_gasA.tab",
                g3b="../../data/processed/searches/sp62/GCA_018977245_gasB.tab",
                g3c="../../data/processed/searches/sp62/GCA_018977245_gasC.tab",
                g3d="../../data/processed/searches/sp62/GCA_018977245_gasD.tab",
                g3e="../../data/processed/searches/sp62/GCA_018977245_gasE.tab",
                g3p="../../data/processed/searches/sp62/GCA_018977245_gasP.tab",
		 
		g4a="../../data/processed/searches/sp62/GCA_900186335_gasA.tab",
                g4b="../../data/processed/searches/sp62/GCA_900186335_gasB.tab",
                g4c="../../data/processed/searches/sp62/GCA_900186335_gasC.tab",
                g4d="../../data/processed/searches/sp62/GCA_900186335_gasD.tab",
                g4e="../../data/processed/searches/sp62/GCA_900186335_gasE.tab",
                g4p="../../data/processed/searches/sp62/GCA_900186335_gasP.tab",
		                
		g5a="../../data/processed/searches/sp62/GCF_010993605_gasA.tab",
                g5b="../../data/processed/searches/sp62/GCF_010993605_gasB.tab",
                g5c="../../data/processed/searches/sp62/GCF_010993605_gasC.tab",
                g5d="../../data/processed/searches/sp62/GCF_010993605_gasD.tab",
                g5e="../../data/processed/searches/sp62/GCF_010993605_gasE.tab",
                g5p="../../data/processed/searches/sp62/GCF_010993605_gasP.tab",


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


rule gff2bed_sp62:
	input:
		g1a=rules.scan_sp62.output.g1a,
		g2a=rules.scan_sp62.output.g2a,
		g3a=rules.scan_sp62.output.g3a,
		g4a=rules.scan_sp62.output.g4a,
		g5a=rules.scan_sp62.output.g5a,

		g1b=rules.scan_sp62.output.g1b,
		g2b=rules.scan_sp62.output.g2b,
		g3b=rules.scan_sp62.output.g3b,
		g4b=rules.scan_sp62.output.g4b,
		g5b=rules.scan_sp62.output.g5b,

		g1c=rules.scan_sp62.output.g1c,
		g2c=rules.scan_sp62.output.g2c,
		g3c=rules.scan_sp62.output.g3c,
		g4c=rules.scan_sp62.output.g4c,
		g5c=rules.scan_sp62.output.g5c,

		g1d=rules.scan_sp62.output.g1d,
		g2d=rules.scan_sp62.output.g2d,
		g3d=rules.scan_sp62.output.g3d,
		g4d=rules.scan_sp62.output.g4d,
		g5d=rules.scan_sp62.output.g5d,

		g1e=rules.scan_sp62.output.g1e,
		g2e=rules.scan_sp62.output.g2e,
		g3e=rules.scan_sp62.output.g3e,
		g4e=rules.scan_sp62.output.g4e,
		g5e=rules.scan_sp62.output.g5e,

		g1p=rules.scan_sp62.output.g1p,
		g2p=rules.scan_sp62.output.g2p,
		g3p=rules.scan_sp62.output.g3p,
		g4p=rules.scan_sp62.output.g4p,
		g5p=rules.scan_sp62.output.g5p,

	output:
                g1e=temp("../../data/processed/searches/sp62/GCA_014621495_gasE.bed"),
                g1p=temp("../../data/processed/searches/sp62/GCA_014621495_gasP.bed"),

                g2e=temp("../../data/processed/searches/sp62/GCA_015708825_gasE.bed"),
                g2p=temp("../../data/processed/searches/sp62/GCA_015708825_gasP.bed"),

                g3e=temp("../../data/processed/searches/sp62/GCA_018977245_gasE.bed"),
                g3p=temp("../../data/processed/searches/sp62/GCA_018977245_gasP.bed"),

                g4e=temp("../../data/processed/searches/sp62/GCA_900186335_gasE.bed"),
                g4p=temp("../../data/processed/searches/sp62/GCA_900186335_gasP.bed"),

                g5a=temp("../../data/processed/searches/sp62/GCF_010993605_gasA.bed"),
                g5e=temp("../../data/processed/searches/sp62/GCF_010993605_gasE.bed"),
                g5p=temp("../../data/processed/searches/sp62/GCF_010993605_gasP.bed"),

	run:
		shell("grep -v \'^#\' {input.g1e} | cut -f 1,4,5,7 | sort -u > {output.g1e}")
		shell("grep -v \'^#\' {input.g1p} | cut -f 1,4,5,7 | sort -u > {output.g1p}")

                shell("grep -v \'^#\' {input.g2e} | cut -f 1,4,5,7 | sort -u > {output.g2e}")
                shell("grep -v \'^#\' {input.g2p} | cut -f 1,4,5,7 | sort -u > {output.g2p}")
	
                shell("grep -v \'^#\' {input.g3e} | cut -f 1,4,5,7 | sort -u > {output.g3e}")
                shell("grep -v \'^#\' {input.g3p} | cut -f 1,4,5,7 | sort -u > {output.g3p}")

                shell("grep -v \'^#\' {input.g4e} | cut -f 1,4,5,7 | sort -u > {output.g4e}")
                shell("grep -v \'^#\' {input.g4p} | cut -f 1,4,5,7 | sort -u > {output.g4p}")

		shell("grep -v \'^#\' {input.g5a} | cut -f 1,4,5,7 | sort -u > {output.g5a}")
                shell("grep -v \'^#\' {input.g5e} | cut -f 1,4,5,7 | sort -u > {output.g5e}")
                shell("grep -v \'^#\' {input.g5p} | cut -f 1,4,5,7 | sort -u > {output.g5p}")


rule generate_genome_file_sp62:
	input:
		g1=rules.scan_sp62.input.g1, 
		g2=rules.scan_sp62.input.g2,
		g3=rules.scan_sp62.input.g3,
		g4=rules.scan_sp62.input.g4,
		g5=rules.scan_sp62.input.g5,
		
	output:
		g1="../../data/external/ncbi/SP62/data/GCA_014621495.2/all_seq.txt",
                g2="../../data/external/ncbi/SP62/data/GCA_015708825.1/all_seq.txt",
                g3="../../data/external/ncbi/SP62/data/GCA_018977245.1/all_seq.txt",
                g4="../../data/external/ncbi/SP62/data/GCA_900186335.2/all_seq.txt",
                g5="../../data/external/ncbi/SP62/data/GCF_010993605.1/all_seq.txt",

	run:
           	shell(" seqtk comp {input.g1} | cut -f 1,2 > {output.g1}")
		shell(" seqtk comp {input.g2} | cut -f 1,2 > {output.g2}")
		shell(" seqtk comp {input.g3} | cut -f 1,2 > {output.g3}")
		shell(" seqtk comp {input.g4} | cut -f 1,2 > {output.g4}")
		shell(" seqtk comp {input.g5} | cut -f 1,2 > {output.g5}")

rule bed2extendedbed_sp62:
        input:
                g1=rules.generate_genome_file_sp62.output.g1,
                g2=rules.generate_genome_file_sp62.output.g2,
                g3=rules.generate_genome_file_sp62.output.g3,
                g4=rules.generate_genome_file_sp62.output.g4,
                g5=rules.generate_genome_file_sp62.output.g5,
		g1e=rules.gff2bed_sp62.output.g1e,g1p=rules.gff2bed_sp62.output.g1p,
		g2e=rules.gff2bed_sp62.output.g2e,g2p=rules.gff2bed_sp62.output.g2p,
		g3e=rules.gff2bed_sp62.output.g3e,g3p=rules.gff2bed_sp62.output.g3p,
		g4e=rules.gff2bed_sp62.output.g4e,g4p=rules.gff2bed_sp62.output.g4p,
		g5a=rules.gff2bed_sp62.output.g5a,g5e=rules.gff2bed_sp62.output.g5e,g5p=rules.gff2bed_sp62.output.g5p,

	params: "10000" # 10kb
	output:
                g1e=temp("../../data/processed/searches/sp62/GCA_014621495_gasE_ext.bed"),
                g1p=temp("../../data/processed/searches/sp62/GCA_014621495_gasP_ext.bed"),

                g2e=temp("../../data/processed/searches/sp62/GCA_015708825_gasE_ext.bed"),
                g2p=temp("../../data/processed/searches/sp62/GCA_015708825_gasP_ext.bed"),

                g3e=temp("../../data/processed/searches/sp62/GCA_018977245_gasE_ext.bed"),
                g3p=temp("../../data/processed/searches/sp62/GCA_018977245_gasP_ext.bed"),

                g4e=temp("../../data/processed/searches/sp62/GCA_900186335_gasE_ext.bed"),
                g4p=temp("../../data/processed/searches/sp62/GCA_900186335_gasP_ext.bed"),

                g5a=temp("../../data/processed/searches/sp62/GCF_010993605_gasA_ext.bed"),
                g5e=temp("../../data/processed/searches/sp62/GCF_010993605_gasE_ext.bed"),
                g5p=temp("../../data/processed/searches/sp62/GCF_010993605_gasP_ext.bed"),
	run:
                shell("bedtools slop -i {input.g5a} -g {input.g5} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g5a}")


                shell("bedtools slop -i {input.g1e} -g {input.g1} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g1e}")
                shell("bedtools slop -i {input.g2e} -g {input.g2} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g2e}")
                shell("bedtools slop -i {input.g3e} -g {input.g3} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g3e}")
                shell("bedtools slop -i {input.g4e} -g {input.g4} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g4e}")
                shell("bedtools slop -i {input.g5e} -g {input.g5} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g5e}")
                shell("bedtools slop -i {input.g1p} -g {input.g1} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g1p}")
                shell("bedtools slop -i {input.g2p} -g {input.g2} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g2p}")
                shell("bedtools slop -i {input.g3p} -g {input.g3} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g3p}")
                shell("bedtools slop -i {input.g4p} -g {input.g4} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g4p}")
                shell("bedtools slop -i {input.g5p} -g {input.g5} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g5p}")

rule bed2fasta_sp62:
	input:
		g1=rules.scan_sp62.input.g1,
                g2=rules.scan_sp62.input.g2,
                g3=rules.scan_sp62.input.g3,
                g4=rules.scan_sp62.input.g4,
                g5=rules.scan_sp62.input.g5,
		g1e=rules.bed2extendedbed_sp62.output.g1e,g1p=rules.bed2extendedbed_sp62.output.g1p,
		g2e=rules.bed2extendedbed_sp62.output.g2e,g2p=rules.bed2extendedbed_sp62.output.g2p,
		g3e=rules.bed2extendedbed_sp62.output.g3e,g3p=rules.bed2extendedbed_sp62.output.g3p,
		g4e=rules.bed2extendedbed_sp62.output.g4e,g4p=rules.bed2extendedbed_sp62.output.g4p,
                g5a=rules.bed2extendedbed_sp62.output.g5a,g5e=rules.bed2extendedbed_sp62.output.g5e,g5p=rules.bed2extendedbed_sp62.output.g5p,
	output:
		g1e="../../data/processed/searches/sp62/GCA_014621495_gasE_ext.fa",
                g1p="../../data/processed/searches/sp62/GCA_014621495_gasP_ext.fa",

                g2e="../../data/processed/searches/sp62/GCA_015708825_gasE_ext.fa",
                g2p="../../data/processed/searches/sp62/GCA_015708825_gasP_ext.fa",

                g3e="../../data/processed/searches/sp62/GCA_018977245_gasE_ext.fa",
                g3p="../../data/processed/searches/sp62/GCA_018977245_gasP_ext.fa",

                g4e="../../data/processed/searches/sp62/GCA_900186335_gasE_ext.fa",
                g4p="../../data/processed/searches/sp62/GCA_900186335_gasP_ext.fa",

                g5a="../../data/processed/searches/sp62/GCF_010993605_gasA_ext.fa",
                g5e="../../data/processed/searches/sp62/GCF_010993605_gasE_ext.fa",
                g5p="../../data/processed/searches/sp62/GCF_010993605_gasP_ext.fa",
	run:
		shell("bedtools getfasta -fi {input.g1} -bed {input.g1e} -fo {output.g1e}")
                shell("bedtools getfasta -fi {input.g1} -bed {input.g1p} -fo {output.g1p}")

                shell("bedtools getfasta -fi {input.g2} -bed {input.g2e} -fo {output.g2e}")
                shell("bedtools getfasta -fi {input.g2} -bed {input.g2p} -fo {output.g2p}")

                shell("bedtools getfasta -fi {input.g3} -bed {input.g3e} -fo {output.g3e}")
                shell("bedtools getfasta -fi {input.g3} -bed {input.g3p} -fo {output.g3p}")

                shell("bedtools getfasta -fi {input.g4} -bed {input.g4e} -fo {output.g4e}")
                shell("bedtools getfasta -fi {input.g4} -bed {input.g4p} -fo {output.g4p}")

                shell("bedtools getfasta -fi {input.g5} -bed {input.g5a} -fo {output.g5a}")
                shell("bedtools getfasta -fi {input.g5} -bed {input.g5e} -fo {output.g5e}")
                shell("bedtools getfasta -fi {input.g5} -bed {input.g5p} -fo {output.g5p}")

rule augppx_pred_sp62:
        input:
                aprl=rules.build_prfl.output.a,
                bprl=rules.build_prfl.output.b,
                cprl=rules.build_prfl.output.c,
                dprl=rules.build_prfl.output.d,
                eprl=rules.build_prfl.output.e,
                pprl=rules.build_prfl.output.p,
                cfg="/gpfs/gsfs11/users/cisseoh/gasdermins/src/tools/ppx.cfg",
		g1e=rules.bed2fasta_sp62.output.g1e,g1p=rules.bed2fasta_sp62.output.g1p,
                g2e=rules.bed2fasta_sp62.output.g2e,g2p=rules.bed2fasta_sp62.output.g2p,
                g3e=rules.bed2fasta_sp62.output.g3e,g3p=rules.bed2fasta_sp62.output.g3p,
                g4e=rules.bed2fasta_sp62.output.g4e,g4p=rules.bed2fasta_sp62.output.g4p,
                g5a=rules.bed2fasta_sp62.output.g5a,g5e=rules.bed2fasta_sp62.output.g5e,g5p=rules.bed2fasta_sp62.output.g5p,
	output:
		g1e="../../data/processed/searches/sp62/GCA_014621495_gasE_ext.gff",
                g1p="../../data/processed/searches/sp62/GCA_014621495_gasP_ext.gff",

                g2e="../../data/processed/searches/sp62/GCA_015708825_gasE_ext.gff",
                g2p="../../data/processed/searches/sp62/GCA_015708825_gasP_ext.gff",

                g3e="../../data/processed/searches/sp62/GCA_018977245_gasE_ext.gff",
                g3p="../../data/processed/searches/sp62/GCA_018977245_gasP_ext.gff",

                g4e="../../data/processed/searches/sp62/GCA_900186335_gasE_ext.gff",
                g4p="../../data/processed/searches/sp62/GCA_900186335_gasP_ext.gff",

                g5a="../../data/processed/searches/sp62/GCF_010993605_gasA_ext.gff",
                g5e="../../data/processed/searches/sp62/GCF_010993605_gasE_ext.gff",
                g5p="../../data/processed/searches/sp62/GCF_010993605_gasP_ext.gff",
	run:
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g1e} > {output.g1e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g1p} > {output.g1p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g1e}  --seqfile={input.g1e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g1p}  --seqfile={input.g1p}")

                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g2e} > {output.g2e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g2p} > {output.g2p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g2e}  --seqfile={input.g2e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g2p}  --seqfile={input.g2p}")

                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g3e} > {output.g3e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g3p} > {output.g3p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g3e}  --seqfile={input.g3e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g3p}  --seqfile={input.g3p}")

                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g4e} > {output.g4e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g4p} > {output.g4p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g4e}  --seqfile={input.g4e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g4p}  --seqfile={input.g4p}")

                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g5a} > {output.g5a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g5e} > {output.g5e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g5p} > {output.g5p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g5a}  --seqfile={input.g5a}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g5e}  --seqfile={input.g5e}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g5p}  --seqfile={input.g5p}")

# annotation failed for this one; but blastx searches reveal the presence of Pvk; located in an assembly gap
rule fix_g4e:
	input:
		g4e="../../data/processed/searches/sp62/GCA_900186335_gasE_ext.fa",
	output:
		g4f=temp("../../data/processed/searches/sp62/GCA_900186335_gasE_ext.clean.fa"),
		g4et=temp("../../data/processed/searches/sp62/GCA_900186335_gasE_ext.tmp"),
		g4et2=temp("../../data/processed/searches/sp62/GCA_900186335_gasE_ext.tmp2"),
		g4e="../../data/processed/searches/sp62/GCA_900186335_gasE_ext.aa",
	params: t="0", s="50"
	run:
		shell("sed \'s/N//g\' {input.g4e} > {output.g4f}")
		shell("sixpack -sequence {output.g4f} -outfile {output.g4et} -outseq {output.g4et2} -table {params.t} -orfminsize {params.s}")
		shell("seqtk seq -L {params.s} {output.g4et2} > {output.g4e}") # for some reason sixpack doesn't filter
# #phmmer -E 1e-5 --tblout x1 ../../data/processed/searches/sp62/GCA_900186335_gasE_ext.aa ../../data/raw/Stephen/MSA/GsdmE_cns.fa
# the only valid hit is 1710130-1730306_5_ORF11; so I manually removed the other predictions
# ../../data/processed/searches/sp62/GCA_900186335_gasE_ext_mc.aa
#
rule insert_id_sp62:
	input:
		g1e="../../data/processed/searches/sp62/GCA_014621495_gasE_ext.aa",
                g1p="../../data/processed/searches/sp62/GCA_014621495_gasP_ext.aa",
                g2e="../../data/processed/searches/sp62/GCA_015708825_gasE_ext.aa",
                g2p="../../data/processed/searches/sp62/GCA_015708825_gasP_ext.aa",
                g3e="../../data/processed/searches/sp62/GCA_018977245_gasE_ext.aa",
                g3p="../../data/processed/searches/sp62/GCA_018977245_gasP_ext.aa",
                g4e="../../data/processed/searches/sp62/GCA_900186335_gasE_ext_mc.aa",
                g4p="../../data/processed/searches/sp62/GCA_900186335_gasP_ext.aa",
                g5a="../../data/processed/searches/sp62/GCF_010993605_gasA_ext.aa",
                g5e="../../data/processed/searches/sp62/GCF_010993605_gasE_ext.aa",
                g5p="../../data/processed/searches/sp62/GCF_010993605_gasP_ext.aa",
	output:
		g1e=temp("../../data/processed/searches/sp62/GCA_014621495_gasE_ext_tag.aa"),
                g1p=temp("../../data/processed/searches/sp62/GCA_014621495_gasP_ext_tag.aa"),
                g2e=temp("../../data/processed/searches/sp62/GCA_015708825_gasE_ext_tag.aa"),
                g2p=temp("../../data/processed/searches/sp62/GCA_015708825_gasP_ext_tag.aa"),
                g3e=temp("../../data/processed/searches/sp62/GCA_018977245_gasE_ext_tag.aa"),
                g3p=temp("../../data/processed/searches/sp62/GCA_018977245_gasP_ext_tag.aa"),
                g4e=temp("../../data/processed/searches/sp62/GCA_900186335_gasE_ext_tag.aa"),
                g4p=temp("../../data/processed/searches/sp62/GCA_900186335_gasP_ext_tag.aa"),
                g5a=temp("../../data/processed/searches/sp62/GCF_010993605_gasA_ext_tag.aa"),
                g5e=temp("../../data/processed/searches/sp62/GCF_010993605_gasE_ext_tag.aa"),
                g5p=temp("../../data/processed/searches/sp62/GCF_010993605_gasP_ext_tag.aa"),

	params: "sp62"

	run:
		shell("perl ../scripts/insert_tag.pl --fasta {input.g1e} --tag {params} > {output.g1e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g1p} --tag {params} > {output.g1p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2e} --tag {params} > {output.g2e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2p} --tag {params} > {output.g2p}")
		                
		shell("perl ../scripts/insert_tag.pl --fasta {input.g3e} --tag {params} > {output.g3e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g3p} --tag {params} > {output.g3p}")
			                
		shell("perl ../scripts/insert_tag.pl --fasta {input.g4e} --tag {params} > {output.g4e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g4p} --tag {params} > {output.g4p}")
		
		shell("perl ../scripts/insert_tag.pl --fasta {input.g5a} --tag {params} > {output.g5a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g5e} --tag {params} > {output.g5e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g5p} --tag {params} > {output.g5p}")

rule merge_sp62:
	input:
		g1e=rules.insert_id_sp62.output.g1e, 
		g1p=rules.insert_id_sp62.output.g1p,	
		g2e=rules.insert_id_sp62.output.g2e,
                g2p=rules.insert_id_sp62.output.g2p,
		g3e=rules.insert_id_sp62.output.g3e,
                g3p=rules.insert_id_sp62.output.g3p,
		g4e=rules.insert_id_sp62.output.g4e,
                g4p=rules.insert_id_sp62.output.g4p,
		g5a=rules.insert_id_sp62.output.g5a, 
		g5e=rules.insert_id_sp62.output.g5e,
                g5p=rules.insert_id_sp62.output.g5p,
	output:
		"../../data/processed/searches/sp62/sp62_allpreds.faa"
	shell:
		"cat {input.g1e} {input.g1p} {input.g2e} {input.g2p} {input.g3e} {input.g3p}"
		" {input.g4e} {input.g4p} {input.g5a} {input.g5e} {input.g5p}"
		" > {output}"

