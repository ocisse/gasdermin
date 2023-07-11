##
include: "../utils/build_hmm.smk"

rule scan_sp57:
	input:
		sp57="../../data/external/ncbi/SP57/data/all_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
# 		sp57a="../../data/processed/searches/sp57_exonerate_gasA.tab", # null (to save time when I re-run)
# 		sp57b="../../data/processed/searches/sp57_exonerate_gasB.tab", # null
# 		sp57c="../../data/processed/searches/sp57_exonerate_gasC.tab", # null
#		sp57d="../../data/processed/searches/sp57_exonerate_gasD.tab", # null
#		sp57e="../../data/processed/searches/sp57_exonerate_gasE.tab", # null
		sp57p="../../data/processed/searches/sp57_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp57} {params} > {output.sp57a}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp57} {params} > {output.sp57b}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp57} {params} > {output.sp57c}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp57} {params} > {output.sp57d}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp57} {params} > {output.sp57e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp57} {params} > {output.sp57p}")
##
# manually do this and fix later
rule fix_gff:
	input:
		split1="../../data/processed/searches/sp57_exonerate_gasP.tab.split1",
		split2="../../data/processed/searches/sp57_exonerate_gasP.tab.split2",
		split3="../../data/processed/searches/sp57_exonerate_gasP.tab.split3",
		split4="../../data/processed/searches/sp57_exonerate_gasP.tab.split4",
		split5="../../data/processed/searches/sp57_exonerate_gasP.tab.split5",
	params:
		sp57p1="sp57_gasp1", sp57p2="sp57_gasp2",sp57p3="sp57_gasp3", sp57p4="sp57_gasp4", sp57p5="sp57_gasp5"
	output:
		split1="../../data/processed/searches/sp57_exonerate_gasP.tab.split1.gff", 
		split2="../../data/processed/searches/sp57_exonerate_gasP.tab.split2.gff",
		split3="../../data/processed/searches/sp57_exonerate_gasP.tab.split3.gff",
		split4="../../data/processed/searches/sp57_exonerate_gasP.tab.split4.gff",
		split5="../../data/processed/searches/sp57_exonerate_gasP.tab.split5.gff",
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split1} --tag {params.sp57p1} > {output.split1}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split2} --tag {params.sp57p2} > {output.split2}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split3} --tag {params.sp57p3} > {output.split3}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split4} --tag {params.sp57p4} > {output.split4}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split5} --tag {params.sp57p5} > {output.split5}")

rule gff2bed:
	input: 
		p=rules.scan_sp57.output.sp57p, 
                sp57p1=rules.fix_gff.output.split1,
                sp57p2=rules.fix_gff.output.split2,
                sp57p3=rules.fix_gff.output.split3,
                sp57p4=rules.fix_gff.output.split4,
                sp57p5=rules.fix_gff.output.split5,
	output:
		p="../../data/processed/searches/sp57_exonerate_gasP.bed",
	run:
		shell("grep -v \'^#\' {input.p} | cut -f 1,4,5,7 | sort -u > {output.p}")


rule generate_genome_file:
	input:
		rules.scan_sp57.input.sp57,
	output:
		"../../data/external/ncbi/SP57/data/all_concat.txt"
	shell:
		" seqtk comp {input} | cut -f 1,2 > {output}"
		
rule bed2extendedbed:
	input:
		g=rules.generate_genome_file.output,
		p=rules.gff2bed.output.p,
	params: "10000" # 10kb
	output:
		p1=temp("../../data/processed/searches/sp57_exonerate_gasP.tmp1"),
		p2=temp("../../data/processed/searches/sp57_exonerate_gasP.tmp2"),
		p="../../data/processed/searches/sp57_exonerate_gasP_ext.bed",
		
	run:
		shell("cat {input.p} | cut -f 1 | sort -u > {output.p1}")
		shell("grep -f {output.p1} {input.g} > {output.p2}")
		shell("bedtools slop -i {input.p} -g {output.p2} -b {params} | cut -f 1,2,3,4 | sort -u > {output.p}")
rule bed2fasta:
	input:
		g=rules.scan_sp57.input.sp57,
		p=rules.bed2extendedbed.output.p,
	output:
		p="../../data/processed/searches/sp57_exonerate_gasP_ext.fa"
	run:
		shell("bedtools getfasta -fi {input.g} -bed {input.p} -fo {output.p}") # becareful to the tab in the header that I've modiified just remove it form the all fas 

rule fastBlockSearch:
	input:
		prl=rules.build_prfl.output.p,
		seq=rules.bed2fasta.output.p
	output:
		temp("../../data/processed/searches/sp57_exonerate_gasP_ext.tmp")
	params: c="1.1"
	shell:
		"/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input} {input.prl} > {output}"

rule augppx_pred:
	input:
		prl=rules.build_prfl.output.p,
		cfg="/gpfs/gsfs11/users/cisseoh/gasdermins/src/tools/ppx.cfg",
		seq=rules.bed2fasta.output
	output:
		"../../data/processed/searches/sp57_exonerate_gasP_ext.aug_ppx.gff"
	run:
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.prl} {input.seq} > {output}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output}  --seqfile={input.seq}")



# this transform exonerate alignments directly
#
rule gff3Tofasta:
	input:
		sp57g=rules.scan_sp57.input.sp57,
		sp57p1=rules.fix_gff.output.split1, 
		sp57p2=rules.fix_gff.output.split2,
		sp57p3=rules.fix_gff.output.split3,
		sp57p4=rules.fix_gff.output.split4,
		sp57p5=rules.fix_gff.output.split5,
	output:
		s1t="../../data/processed/searches/sp57_exonerate_gasP1_transcripts.fa",
		s2t="../../data/processed/searches/sp57_exonerate_gasP2_transcripts.fa", 
		s3t="../../data/processed/searches/sp57_exonerate_gasP3_transcripts.fa",
		s4t="../../data/processed/searches/sp57_exonerate_gasP4_transcripts.fa",
		s5t="../../data/processed/searches/sp57_exonerate_gasP5_transcripts.fa",
		s1p="../../data/processed/searches/sp57_exonerate_gasP1_proteins.fa", 
		s2p="../../data/processed/searches/sp57_exonerate_gasP2_proteins.fa",
		s3p="../../data/processed/searches/sp57_exonerate_gasP3_proteins.fa",
		s4p="../../data/processed/searches/sp57_exonerate_gasP4_proteins.fa",
		s5p="../../data/processed/searches/sp57_exonerate_gasP5_proteins.fa",
	run:
		shell("gffread -w {output.s1t} -g {input.sp57g} {input.sp57p1}")
		shell("gffread -w {output.s2t} -g {input.sp57g} {input.sp57p2}")
		shell("gffread -w {output.s3t} -g {input.sp57g} {input.sp57p3}")
		shell("gffread -w {output.s4t} -g {input.sp57g} {input.sp57p4}")
		shell("gffread -w {output.s5t} -g {input.sp57g} {input.sp57p5}")
		shell("funannotate util gff2prot --gff3 {input.sp57p1} --fasta {input.sp57g} > {output.s1p}")
		shell("funannotate util gff2prot --gff3 {input.sp57p2} --fasta {input.sp57g} > {output.s2p}")
		shell("funannotate util gff2prot --gff3 {input.sp57p3} --fasta {input.sp57g} > {output.s3p}")
		shell("funannotate util gff2prot --gff3 {input.sp57p4} --fasta {input.sp57g} > {output.s4p}")
		shell("funannotate util gff2prot --gff3 {input.sp57p5} --fasta {input.sp57g} > {output.s5p}")
