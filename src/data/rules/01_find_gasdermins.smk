##
# goal is to see if there are gasdermins in there
# lest try phmmer
# try to convert braker gtf 
include: "../utils/build_hmm.smk"

#rule all:
#	input: 
#		"../../data/processed/searches/all_gasd.fa"

rule search:
	input:
		h=rules.build_hmm.output.gs, 
		sp4="../../data/external/ncbi/SP4/GCF_000349665.1/protein.faa",
		sp5="../../data/external/ncbi/SP5/data/GCF_000003625.3/protein.faa",
		sp8="../../data/external/ncbi/SP8/data/GCF_009873245.2/protein.faa",
		sp9="../../data/external/ncbi/SP9/data/GCF_018350175.1/protein.faa",
		sp11="../../data/external/ncbi/SP11/data/GCF_015220235.1/protein.faa",
		sp12="../../data/external/ncbi/SP12/data/GCF_000296755.1/protein.faa",
		sp13="../../data/external/ncbi/SP13/data/GCF_000001905.1/protein.faa",
		sp15="../../data/external/ncbi/SP15/data/GCF_000002275.2/protein.faa", 
		sp22="../../data/external/ncbi/SP22/data/GCF_000281125.3/protein.faa",
		sp24="../../data/external/ncbi/SP24/data/GCF_000230535.1/protein.faa",
		sp31="../../data/external/ncbi/SP31/data/GCF_018977255.1/protein.faa",
		sp32="../../data/external/ncbi/SP32/data/GCF_010993605.1/protein.faa",
		sp36="../../data/external/ncbi/SP36/data/GCF_001039355.2/protein.faa",
		sp37="../../data/external/ncbi/SP37/data/GCF_902652985.1/protein.faa",
		sp38="../../data/external/ncbi/SP38/data/GCF_000150275.1/protein.faa",
		
	output:
		sp4=temp("../../data/processed/searches/sp4_hits.tab"),
		sp5=temp("../../data/processed/searches/sp5_hits.tab"),
		sp8=temp("../../data/processed/searches/sp8_hits.tab"),                
		sp9=temp("../../data/processed/searches/sp9_hits.tab"),                
		sp11=temp("../../data/processed/searches/sp11_hits.tab"),
		sp12=temp("../../data/processed/searches/sp12_hits.tab"),                
		sp13=temp("../../data/processed/searches/sp13_hits.tab"),
		sp15=temp("../../data/processed/searches/sp15_hits.tab"),	                
		sp22=temp("../../data/processed/searches/sp22_hits.tab"),
		sp24=temp("../../data/processed/searches/sp24_hits.tab"),
		sp31=temp("../../data/processed/searches/sp31_hits.tab"),
		sp32=temp("../../data/processed/searches/sp32_hits.tab"),
		sp36=temp("../../data/processed/searches/sp36_hits.tab"),                
		sp37=temp("../../data/processed/searches/sp37_hits.tab"),                
		sp38=temp("../../data/processed/searches/sp38_hits.tab"),                

	params: e="1e-5", z="57096847"
	threads: 4
	run:
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp4} {input.h} {input.sp4}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp5} {input.h} {input.sp5}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp8} {input.h} {input.sp8}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp9} {input.h} {input.sp9}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp11} {input.h} {input.sp11}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp12} {input.h} {input.sp12}")	
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp13} {input.h} {input.sp13}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp15} {input.h} {input.sp15}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp22} {input.h} {input.sp22}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp24} {input.h} {input.sp24}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp31} {input.h} {input.sp31}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp32} {input.h} {input.sp32}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp36} {input.h} {input.sp36}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp37} {input.h} {input.sp37}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp38} {input.h} {input.sp38}")

rule classify:
	input:
		sp4=rules.search.output.sp4,
		sp5=rules.search.output.sp5,
		sp8=rules.search.output.sp8,
		sp9=rules.search.output.sp9,
		sp11=rules.search.output.sp11,
		sp12=rules.search.output.sp12,
		sp13=rules.search.output.sp13,
		sp15=rules.search.output.sp15,
		sp22=rules.search.output.sp22,
		sp24=rules.search.output.sp24,
		sp31=rules.search.output.sp31,
		sp32=rules.search.output.sp32,
		sp36=rules.search.output.sp36,
		sp37=rules.search.output.sp37,
		sp38=rules.search.output.sp38,
	output:
		sp4=temp("../../data/processed/searches/sp4_hits.classified.tab"),
                sp5=temp("../../data/processed/searches/sp5_hits.classified.tab"),
                sp8=temp("../../data/processed/searches/sp8_hits.classified.tab"),
                sp9=temp("../../data/processed/searches/sp9_hits.classified.tab"),
                sp11=temp("../../data/processed/searches/sp11_hits.classified.tab"),
                sp12=temp("../../data/processed/searches/sp12_hits.classified.tab"),
                sp13=temp("../../data/processed/searches/sp13_hits.classified.tab"),
                sp15=temp("../../data/processed/searches/sp15_hits.classified.tab"),
                sp22=temp("../../data/processed/searches/sp22_hits.classified.tab"),
                sp24=temp("../../data/processed/searches/sp24_hits.classified.tab"),
                sp31=temp("../../data/processed/searches/sp31_hits.classified.tab"),
                sp32=temp("../../data/processed/searches/sp32_hits.classified.tab"),
                sp36=temp("../../data/processed/searches/sp36_hits.classified.tab"),
                sp37=temp("../../data/processed/searches/sp37_hits.classified.tab"),
                sp38=temp("../../data/processed/searches/sp38_hits.classified.tab"),
		
	run:
		shell("perl ../scripts/classify.pl {input.sp4} > {output.sp4}")
		shell("perl ../scripts/classify.pl {input.sp5} > {output.sp5}")
		shell("perl ../scripts/classify.pl {input.sp8} > {output.sp8}")
		shell("perl ../scripts/classify.pl {input.sp9} > {output.sp9}")
		shell("perl ../scripts/classify.pl {input.sp11} > {output.sp11}")
		shell("perl ../scripts/classify.pl {input.sp12} > {output.sp12}")
		shell("perl ../scripts/classify.pl {input.sp13} > {output.sp13}")
		shell("perl ../scripts/classify.pl {input.sp15} > {output.sp15}")
		shell("perl ../scripts/classify.pl {input.sp22} > {output.sp22}")
		shell("perl ../scripts/classify.pl {input.sp24} > {output.sp24}")
		shell("perl ../scripts/classify.pl {input.sp31} > {output.sp31}")
		shell("perl ../scripts/classify.pl {input.sp32} > {output.sp32}")
		shell("perl ../scripts/classify.pl {input.sp36} > {output.sp36}")
		shell("perl ../scripts/classify.pl {input.sp37} > {output.sp37}")
		shell("perl ../scripts/classify.pl {input.sp38} > {output.sp38}")
	

rule get_sequence:
	input:
		sp4=rules.search.input.sp4,
                sp4Cl=rules.classify.output.sp4,
                sp5=rules.search.input.sp5,
                sp5Cl=rules.classify.output.sp5,
                sp8=rules.search.input.sp8,
                sp8Cl=rules.classify.output.sp8,
		sp9=rules.search.input.sp9,
                sp9Cl=rules.classify.output.sp9,
                sp11=rules.search.input.sp11,
                sp11Cl=rules.classify.output.sp11,
		sp12=rules.search.input.sp12,
                sp12Cl=rules.classify.output.sp12,
		sp13=rules.search.input.sp13,
		sp13Cl=rules.classify.output.sp13,
		sp15=rules.search.input.sp15,
                sp15Cl=rules.classify.output.sp15,
		sp22=rules.search.input.sp22,
                sp22Cl=rules.classify.output.sp22,
		sp24=rules.search.input.sp24,
                sp24Cl=rules.classify.output.sp24,
		sp31=rules.search.input.sp31,
                sp31Cl=rules.classify.output.sp31,
		sp32=rules.search.input.sp32,
                sp32Cl=rules.classify.output.sp32,
		sp36=rules.search.input.sp36,
                sp36Cl=rules.classify.output.sp36,
		sp37=rules.search.input.sp37,
                sp37Cl=rules.classify.output.sp37,
		sp38=rules.search.input.sp38,
                sp38Cl=rules.classify.output.sp38,
	output:
		sp4="../../data/processed/searches/sp4_hits.classified.fa",
                sp5="../../data/processed/searches/sp5_hits.classified.fa",
                sp8="../../data/processed/searches/sp8_hits.classified.fa",
                sp9="../../data/processed/searches/sp9_hits.classified.fa",
                sp11="../../data/processed/searches/sp11_hits.classified.fa",
                sp12="../../data/processed/searches/sp12_hits.classified.fa",
                sp13="../../data/processed/searches/sp13_hits.classified.fa",
                sp15="../../data/processed/searches/sp15_hits.classified.fa",
                sp22="../../data/processed/searches/sp22_hits.classified.fa",
                sp24="../../data/processed/searches/sp24_hits.classified.fa",
                sp31="../../data/processed/searches/sp31_hits.classified.fa",
                sp32="../../data/processed/searches/sp32_hits.classified.fa",
                sp36="../../data/processed/searches/sp36_hits.classified.fa",
                sp37="../../data/processed/searches/sp37_hits.classified.fa",
                sp38="../../data/processed/searches/sp38_hits.classified.fa",
		
	run:
		shell("seqtk subseq {input.sp4} {input.sp4Cl} > {output.sp4}")
                shell("seqtk subseq {input.sp5} {input.sp5Cl} > {output.sp5}")
                shell("seqtk subseq {input.sp8} {input.sp8Cl} > {output.sp8}")
                shell("seqtk subseq {input.sp9} {input.sp9Cl} > {output.sp9}")
		shell("seqtk subseq {input.sp11} {input.sp11Cl} > {output.sp11}")
		shell("seqtk subseq {input.sp12} {input.sp12Cl} > {output.sp12}")
		shell("seqtk subseq {input.sp13} {input.sp13Cl} > {output.sp13}")
		shell("seqtk subseq {input.sp15} {input.sp15Cl} > {output.sp15}")
		shell("seqtk subseq {input.sp22} {input.sp22Cl} > {output.sp22}")
		shell("seqtk subseq {input.sp24} {input.sp24Cl} > {output.sp24}")
		shell("seqtk subseq {input.sp31} {input.sp31Cl} > {output.sp31}")
		shell("seqtk subseq {input.sp32} {input.sp32Cl} > {output.sp32}")
		shell("seqtk subseq {input.sp36} {input.sp36Cl} > {output.sp36}")
		shell("seqtk subseq {input.sp37} {input.sp37Cl} > {output.sp37}")
		shell("seqtk subseq {input.sp38} {input.sp38Cl} > {output.sp38}")
#
rule scan_sp5:
	input:
		gasBseed=rules.cns.output.b,
		chr1="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr1.fna",
		chr2="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr2.fna",
             	chr3="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr3.fna",
		chr4="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr4.fna",
		chr5="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr5.fna",
		chr6="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr6.fna",
		chr7="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr7.fna",
		chr8="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr8.fna",
		chr9="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr9.fna",
		chr10="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr10.fna",
		chr11="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr11.fna",
		chr12="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr12.fna",             
		chr13="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr13.fna",             
		chr14="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr14.fna",             
		chr15="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr15.fna",             
		chr16="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr16.fna",
		chr17="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr17.fna",
		chr18="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr18.fna",
		chr19="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr19.fna",             
		chr20="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr20.fna",
		chr21="../../data/external/ncbi/SP5/data/GCF_000003625.3/chr21.fna",
		chrX="../../data/external/ncbi/SP5/data/GCF_000003625.3/chrX.fna",
		chrUn="../../data/external/ncbi/SP5/data/GCF_000003625.3/unplaced.scaf.fna"
	output:
		db=temp("../../data/external/ncbi/SP5/data/GCF_000003625.3/all_seq.fas"),
		sp5="../../data/processed/searches/sp5_exonerate_gasB.tab",

	params: m="protein2genome", p="50", p2="5",
		a="--showtargetgff Y --showvulgar F --showalignment T --ryo \'%qi,%ql,%qab,%qae,%ti,%tl,%tab,%tae,%et,%ei,%es,%em,%r,%pi,%ps,%C#\'",
                b="--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("cat {input.chr1} {input.chr2} {input.chr3} {input.chr4} {input.chr5} {input.chr6} {input.chr7} {input.chr8}"
		      " {input.chr9} {input.chr10} {input.chr11} {input.chr12} {input.chr13} {input.chr14} {input.chr15} {input.chr16}"
		      " {input.chr17} {input.chr18} {input.chr19} {input.chr20} {input.chr21} {input.chrX} {input.chrUn} > {output.db}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p2} -q {input.gasBseed} -t {output.db} {params.b} > {output.sp5}")

rule scan_sp4:
	input:
		gasEseed=rules.cns.output.e,
		sp4="../../data/external/ncbi/SP4/GCF_000349665.1/unplaced.scaf.fna",
	output:
		sp4="../../data/processed/searches/sp4_exonerate.tab",

	params: m="protein2genome", p="50", p2="5", 
		a="--showtargetgff Y --showvulgar F --showalignment T --ryo \'%qi,%ql,%qab,%qae,%ti,%tl,%tab,%tae,%et,%ei,%es,%em,%r,%pi,%ps,%C#\'",
            	b="--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	
	run:
        	shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p} -q {input.gasEseed} -t {input.sp4} {params.b} > {output.sp4}")

#rule scan_sp15:
#	input:
#		gasBseed=rules.cns.output.b,
#		gasCseed=rules.cns.output.c,
#		gasDseed=rules.cns.output.d,
#		chr1="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr1.fna",
#		chr2="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr2.fna",
#		chr3="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr3.fna",
#		chr4="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr4.fna",
#		chr5="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr5.fna",
#		chr6="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr6.fna",
#		chr7="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr7.fna",
#		chr10="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr10.fna",
#		chr11="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr11.fna",
#		chr12="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr12.fna",
#		chr14="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr14.fna",
#		chr15="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr15.fna",
#		chr17="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr17.fna",
#		chr18="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr18.fna",
#		chr20="../../data/external/ncbi/SP15/data/GCF_000002275.2/chr20.fna",
#		chrX1="../../data/external/ncbi/SP15/data/GCF_000002275.2/chrX1.fna",
#		chrX2="../../data/external/ncbi/SP15/data/GCF_000002275.2/chrX2.fna",
#		chrX3="../../data/external/ncbi/SP15/data/GCF_000002275.2/chrX3.fna",
#		chrX5="../../data/external/ncbi/SP15/data/GCF_000002275.2/chrX5.fna",
#		chrUn="../../data/external/ncbi/SP15/data/GCF_000002275.2/unplaced.scaf.fna",
#	output:
#		db=temp("../../data/external/ncbi/SP15/data/GCF_000002275.2/all_seq.fas"),
#                sp15b="../../data/processed/searches/sp15_exonerate_gasB.tab",
#		sp15c="../../data/processed/searches/sp15_exonerate_gasB.tab",
#		sp15d="../../data/processed/searches/sp15_exonerate_gasB.tab",

#        params: 
#		m="protein2genome",p="50", p2="5", 
#		b="--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
#        run:
#                shell("cat {input.chr1} {input.chr2} {input.chr3} {input.chr4} {input.chr5} {input.chr6} {input.chr7}" 
#                      " {input.chr10} {input.chr11} {input.chr12} {input.chr14} {input.chr15}"
#                      " {input.chr17} {input.chr18} {input.chr20} {input.chrX1} {input.chrX2} {input.chrX3} {input.chrX4} {input.chrUn} > {output.db}")
#               	shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p2} -q {input.gasBseed} -t {output.db} {params.b} > {output.sp5b}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p2} -q {input.gasCseed} -t {output.db} {params.b} > {output.sp5c}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p2} -q {input.gasDseed} -t {output.db} {params.b} > {output.sp5d}")
		
rule scan_sp22:
        input:
                gasBseed=rules.cns.output.b,
                gasCseed=rules.cns.output.c,
                gasDseed=rules.cns.output.d,
		sp22="../../data/external/ncbi/SP22/data/GCF_000281125.3/GCF_000281125.3_ASM28112v4_genomic.fna",
#       	params: mod="protein2genome", p2="5",
#                b="--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	output:
		sp22b="../../data/processed/searches/sp22_exonerate_gasB.tab",
#		sp22c="../../data/processed/searches/sp22_exonerate_gasC.tab",
#		sp22d="../../data/processed/searches/sp22_exonerate_gasD.tab",
        run:
#                shell("../tools/exonerate-gff3/src/program/exonerate --model '{params.mod}' --percent '{params.p2}' -q {input.gasBseed} -t {input.sp22} {params.b} > {output.sp22b}")
#		"../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp22}" 
#	 	" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp22b}"
 		shell("echo > {output.sp22b}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p2} -q {input.gasCseed} -t {input.sp22} {params.b} > {output.sp22c}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model {params.m} --percent {params.p2} -q {input.gasDseed} -t {input.sp22} {params.b} > {output.sp22d}")

#rule fix_gff:
#	input:
#		sp4=rules.scan_sp4.output.sp4,
#		sp5=rules.scan_sp5.output.sp5,
#	output:
#		sp4=temp("../../data/processed/searches/sp4_exonerate.gff"),
#		sp5="../../data/processed/searches/sp5_exonerate.gff",
#	params: sp4="sp4_gasE", sp5="sp5_gasB"
#	run:
#		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp4} --tag {params.sp4} > {output.sp4}")
#		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp5} --tag {params.sp5} > {output.sp5}")

#rule gff3Tofasta:
#	input:
#		sp4g=rules.scan_sp4.input.sp4,
#		sp4=rules.fix_gff.output.sp4,
#		sp5g=rules.scan_sp5.output.db,
#		sp5=rules.fix_gff.output.sp5
#	output:
#		sp4t="../../data/processed/searches/sp4_exonerate_gasE_transcripts.fa",
#		sp4p="../../data/processed/searches/sp4_exonerate_gasE_proteins.fa",
#		sp5t="../../data/processed/searches/sp5_exonerate_gasB_transcripts.fa",
#		#sp5p="../../data/processed/searches/sp5_exonerate_gasB_proteins.fa",
#	run:
#		shell("gffread -w {output.sp4t} -g {input.sp4g} {input.sp4}")
#		shell("funannotate util gff2prot --gff3 {input.sp4} --fasta {input.sp4g} > {output.sp4p}")
#		shell("gffread -w {output.sp5t} -g {input.sp5g} {input.sp5}")
#		shell("funannotate util gff2prot --gff3 {input.sp5} --fasta {input.sp5g} > {output.sp5p}")
#rule msa:
#	input:
#
#		sp4=rules.get_sequence.output.sp4,
#		sp5=rules.get_sequence.output.sp5,
#		sp8=rules.get_sequence.output.sp8,
#		sp9=rules.get_sequence.output.sp9,
#		sp11=rules.get_sequence.output.sp11,
#		sp12=rules.get_sequence.output.sp12,
#		sp13=rules.get_sequence.output.sp13,
#		sp15=rules.get_sequence.output.sp15,
#		sp22=rules.get_sequence.output.sp22,
#		sp24=rules.get_sequence.output.sp24,
#		sp31=rules.get_sequence.output.sp31,
#		sp32=rules.get_sequence.output.sp32,
#		sp36=rules.get_sequence.output.sp36,
#		sp37=rules.get_sequence.output.sp37,
#		sp38=rules.get_sequence.output.sp38,

#rule summary:
#	input:
#		sp4=rules.get_sequence.output.sp4,
#                sp5=rules.get_sequence.output.sp5,
#                sp8=rules.get_sequence.output.sp8,
#                sp11=rules.get_sequence.output.sp11,
#		sp12=rules.get_sequence.output.sp112,
#		sp13=rules.get_sequence.output.sp13,
#		sp15=rules.get_sequence.output.sp15,
#		sp22=rules.get_sequence.output.sp22,
#		sp24=rules.get_sequence.output.sp24,
#		sp31=rules.get_sequence.output.sp31,
#		sp32=rules.get_sequence.output.sp32,
#		sp36=rules.get_sequence.output.sp36,
#		sp37=rules.get_sequence.output.sp37,
#		sp38=rules.get_sequence.output.sp38,
#	output:
#		"../../data/processed/searches/all_gasd.fa"
#		
#	run:
#		shell("cat {input.sp13} {input.sp31} {input.sp32} {input.sp36} {input.sp4} {input.sp5} {input.sp8} {input.sp11} | grep -v ^# >> {output}")
