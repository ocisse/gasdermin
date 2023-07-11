##
include: "../utils/build_hmm.smk"

rule scan_sp48:
	input:
		sp48="../../data/external/ncbi/SP48/data/GCF_001039355.2/GCF_001039355.2_LinAna2.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp48a="../../data/processed/searches/sp48_exonerate_gasA.tab",
 		sp48b="../../data/processed/searches/sp48_exonerate_gasB.tab",
 		sp48c="../../data/processed/searches/sp48_exonerate_gasC.tab",
		sp48d="../../data/processed/searches/sp48_exonerate_gasD.tab",
		sp48e="../../data/processed/searches/sp48_exonerate_gasE.tab",
		sp48p="../../data/processed/searches/sp48_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp48} {params} > {output.sp48a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp48} {params} > {output.sp48b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp48} {params} > {output.sp48c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp48} {params} > {output.sp48d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp48} {params} > {output.sp48e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp48} {params} > {output.sp48p}")

# there are multiple hits in the gff
#
# perl ../scripts/split_and_fix_multilinesgff_convert2fasta.pl \
# --exonerate ../../data/processed/searches/sp48_exonerate_gasP.tab \
# --tag sp48_gasp \
# --genome ../../data/external/ncbi/SP48/data/GCF_001039355.2/GCF_001039355.2_LinAna2.0_genomic.fna
# doesn't work 
# manually do this and fix later
# split1 = 
rule fix_gff:
	input:
#		sp48p=rules.scan_sp48.output.sp48p,
		split1="../../data/processed/searches/sp48_exonerate_gasP.tab.split1",
		split2="../../data/processed/searches/sp48_exonerate_gasP.tab.split2",
	params:
		sp48p="sp48_gasp", sp48p1="sp48_gasp1", sp48p2="sp48_gasp2"
	output:
#		sp48p="../../data/processed/searches/sp48_exonerate_gasP.gff"
		split1="../../data/processed/searches/sp48_exonerate_gasP.tab.split1.gff", 
		split2="../../data/processed/searches/sp48_exonerate_gasP.tab.split2.gff",
	run:
#		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp48p} --tag {params.sp48p} > {output.sp48p}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split1} --tag {params.sp48p1} > {output.split1}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.split2} --tag {params.sp48p2} > {output.split2}")
	
rule gff3Tofasta:
	input:
		sp48g=rules.scan_sp48.input.sp48,
#		sp48p=rules.fix_gff.output.sp48p
		sp48p1=rules.fix_gff.output.split1, 
		sp48p2=rules.fix_gff.output.split2,
	output:
#		sp48pt="../../data/processed/searches/sp48_exonerate_gasP_transcripts.fa",
#		sp48pp="../../data/processed/searches/sp48_exonerate_gasP_proteins.fa"
		s1t="../../data/processed/searches/sp48_exonerate_gasP1_transcripts.fa",
		s2t="../../data/processed/searches/sp48_exonerate_gasP2_transcripts.fa", 
		s1p="../../data/processed/searches/sp48_exonerate_gasP1_proteins.fa", 
		s2p="../../data/processed/searches/sp48_exonerate_gasP2_proteins.fa"
	run:
#		shell("gffread -w {output.sp48pt} -g {input.sp48g} {input.sp48p}")
#		shell("funannotate util gff2prot --gff3 {input.sp48p} --fasta {input.sp48g} > {output.sp48pp}")
		shell("gffread -w {output.s1t} -g {input.sp48g} {input.sp48p1}")
		shell("gffread -w {output.s2t} -g {input.sp48g} {input.sp48p2}")
		shell("funannotate util gff2prot --gff3 {input.sp48p1} --fasta {input.sp48g} > {output.s1p}")
		shell("funannotate util gff2prot --gff3 {input.sp48p2} --fasta {input.sp48g} > {output.s2p}")
#
