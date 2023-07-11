##
# goal is to see if there are gasdermins in there
# lest try phmmer
# try to convert braker gtf 
include: "utils/build_hmm.smk"

rule all:
	input: "/home/cisseoh/scratch/gasdermins/summary.txt"

rule search:
	input:
		h=rules.build_hmm.output.gs,
		sp13="/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa",
		sp13ncbi="/home/cisseoh/scratch/gasdermins/SP13/GCF_000001905.1_Loxafr3.0_protein.faa",
		sp31="/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa",
		sp31ncbi="/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_protein.faa",
		sp32="/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa",
		sp32ncbi="/home/cisseoh/scratch/gasdermins/SP32/GCF_010993605.1_kPetMar1.pri_protein.faa",
		sp36="/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa",
		sp36ncbi="/home/cisseoh/scratch/gasdermins/SP36/GCF_001039355.2_LinAna2.0_protein.faa",
		sp4="/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa",
		sp4ncbi="/home/cisseoh/scratch/gasdermins/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.faa",
		sp5="/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa",
		sp5ncbi="/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_protein.faa",
		sp8="/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa",
		sp8ncbi="/home/cisseoh/scratch/gasdermins/SP8/GCF_009873245.2_mBalMus1.pri.v3_protein.faa",
		sp11="/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa",
		sp11ncbi="/home/cisseoh/scratch/gasdermins/SP11/GCF_015220235.1_mChoDid1.pri_protein.faa"
	output:
		sp13="/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
		sp13ncbi="/home/cisseoh/scratch/gasdermins/SP13/GCF_000001905.1_Loxafr3.0_protein.tab",
		sp31="/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
		sp31ncbi="/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_protein.tab",
		sp32="/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
                sp32ncbi="/home/cisseoh/scratch/gasdermins/SP32/GCF_010993605.1_kPetMar1.pri_protein.tab",
		sp36="/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
                sp36ncbi="/home/cisseoh/scratch/gasdermins/SP36/GCF_001039355.2_LinAna2.0_protein.tab",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
                sp4ncbi="/home/cisseoh/scratch/gasdermins/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.tab",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
                sp5ncbi="/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_protein.tab",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa.gas_hits.vsGshmm.tab",
                sp8ncbi="/home/cisseoh/scratch/gasdermins/SP8/GCF_009873245.2_mBalMus1.pri.v3_protein.tab",
                sp11="/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa.gas_hits.vsGshmm.tab",
		sp11ncbi="/home/cisseoh/scratch/gasdermins/SP11/GCF_015220235.1_mChoDid1.pri_protein.tab"

	params: e="1e-5", z="57096847"
	threads: 4
	run:
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp13} {input.h} {input.sp13}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp13ncbi} {input.h} {input.sp13ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp31} {input.h} {input.sp31}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp31ncbi} {input.h} {input.sp31ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp32} {input.h} {input.sp32}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp32ncbi} {input.h} {input.sp32ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp36} {input.h} {input.sp36}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp36ncbi} {input.h} {input.sp36ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp4} {input.h} {input.sp4}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp4ncbi} {input.h} {input.sp4ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp5} {input.h} {input.sp5}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp5ncbi} {input.h} {input.sp5ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp8} {input.h} {input.sp8}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp8ncbi} {input.h} {input.sp8ncbi}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp11} {input.h} {input.sp11}")
		shell("hmmsearch -Z {params.z} -E {params.e} --cpu {threads} --noali --tblout {output.sp11ncbi} {input.h} {input.sp11ncbi}")

rule classify:
	input:
		sp13=rules.search.output.sp13,
		sp31=rules.search.output.sp31,
		sp32=rules.search.output.sp32,
		sp36=rules.search.output.sp36,
		sp4=rules.search.output.sp4,
		sp5=rules.search.output.sp5,
		sp8=rules.search.output.sp8,
		sp11=rules.search.output.sp11,
		sp13ncbi=rules.search.output.sp13ncbi,
		sp31ncbi=rules.search.output.sp31ncbi,
		sp32ncbi=rules.search.output.sp32ncbi,
		sp36ncbi=rules.search.output.sp36ncbi,
		sp4ncbi=rules.search.output.sp4ncbi,
		sp5ncbi=rules.search.output.sp5ncbi,
		sp8ncbi=rules.search.output.sp8ncbi,
		sp11ncbi=rules.search.output.sp11ncbi,

	output:
		sp13="/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa.gas_hits.classified",
		sp13ncbi="/home/cisseoh/scratch/gasdermins/SP13/GCF_000001905.1_Loxafr3.0_protein.classified",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa.gas_hits.classified",
                sp31ncbi="/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_protein.classified",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa.gas_hits.classified",
                sp32ncbi="/home/cisseoh/scratch/gasdermins/SP32/GCF_010993605.1_kPetMar1.pri_protein.classified",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa.gas_hits.classified",
                sp36ncbi="/home/cisseoh/scratch/gasdermins/SP36/GCF_001039355.2_LinAna2.0_protein.classified",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa.gas_hits.classified",
                sp4ncbi="/home/cisseoh/scratch/gasdermins/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.classified",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa.gas_hits.classified",
                sp5ncbi="/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_protein.classified",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa.gas_hits.classified",
                sp8ncbi="/home/cisseoh/scratch/gasdermins/SP8/GCF_009873245.2_mBalMus1.pri.v3_protein.classified",
                sp11="/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa.gas_hits.classified",
                sp11ncbi="/home/cisseoh/scratch/gasdermins/SP11/GCF_015220235.1_mChoDid1.pri_protein.classified"

	run:
		shell("perl ../scripts/classify.pl {input.sp13} > {output.sp13}")
		shell("perl ../scripts/classify.pl {input.sp31}  > {output.sp31}")
		shell("perl ../scripts/classify.pl {input.sp32}  > {output.sp32}")
		shell("perl ../scripts/classify.pl {input.sp36}  > {output.sp36}")
		shell("perl ../scripts/classify.pl {input.sp4}  > {output.sp4}")
		shell("perl ../scripts/classify.pl {input.sp5}  > {output.sp5}")
		shell("perl ../scripts/classify.pl {input.sp8}  > {output.sp8}")
		shell("perl ../scripts/classify.pl {input.sp11}  > {output.sp11}")
		shell("perl ../scripts/classify.pl {input.sp13ncbi} > {output.sp13ncbi}")
		shell("perl ../scripts/classify.pl {input.sp31ncbi}  > {output.sp31ncbi}")
		shell("perl ../scripts/classify.pl {input.sp32ncbi}  > {output.sp32ncbi}")
		shell("perl ../scripts/classify.pl {input.sp36ncbi}  > {output.sp36ncbi}")
		shell("perl ../scripts/classify.pl {input.sp4ncbi}  > {output.sp4ncbi}")
		shell("perl ../scripts/classify.pl {input.sp5ncbi}  > {output.sp5ncbi}")
		shell("perl ../scripts/classify.pl {input.sp8ncbi}  > {output.sp8ncbi}")
		shell("perl ../scripts/classify.pl {input.sp11ncbi}  > {output.sp11ncbi}")
	

rule get_sequence:
	input:
		sp13=rules.search.input.sp13,
		sp13Cl=rules.classify.output.sp13,
		sp13ncbi=rules.search.input.sp13ncbi,
		sp13ncbiCl=rules.classify.output.sp13ncbi,
		sp31=rules.search.input.sp31,
                sp31Cl=rules.classify.output.sp31,
                sp31ncbi=rules.search.input.sp31ncbi,
                sp31ncbiCl=rules.classify.output.sp31ncbi,
		sp32=rules.search.input.sp32,
                sp32Cl=rules.classify.output.sp32,
                sp32ncbi=rules.search.input.sp32ncbi,
                sp32ncbiCl=rules.classify.output.sp32ncbi,
		sp36=rules.search.input.sp36,
                sp36Cl=rules.classify.output.sp36,
                sp36ncbi=rules.search.input.sp36ncbi,
                sp36ncbiCl=rules.classify.output.sp36ncbi,
	        sp4=rules.search.input.sp4,
                sp4Cl=rules.classify.output.sp4,
                sp4ncbi=rules.search.input.sp4ncbi,
                sp4ncbiCl=rules.classify.output.sp4ncbi,
		sp5=rules.search.input.sp5,
                sp5Cl=rules.classify.output.sp5,
                sp5ncbi=rules.search.input.sp5ncbi,
                sp5ncbiCl=rules.classify.output.sp5ncbi,
		sp8=rules.search.input.sp8,
                sp8Cl=rules.classify.output.sp8,
                sp8ncbi=rules.search.input.sp8ncbi,
                sp8ncbiCl=rules.classify.output.sp8ncbi,
		sp11=rules.search.input.sp11,
                sp11Cl=rules.classify.output.sp11,
                sp11ncbi=rules.search.input.sp11ncbi,
                sp11ncbiCl=rules.classify.output.sp11ncbi,

	output:
		sp13="/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa.gas_hits.classified.fa",
		sp13ncbi="/home/cisseoh/scratch/gasdermins/SP13/GCF_000001905.1_Loxafr3.0_protein.classified.fa",
		sp31="/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa.gas_hits.classified.fa",
                sp31ncbi="/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_protein.classified.fa",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa.gas_hits.classified.fa",
                sp32ncbi="/home/cisseoh/scratch/gasdermins/SP32/GCF_010993605.1_kPetMar1.pri_protein.classified.fa",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa.gas_hits.classified.fa",
                sp36ncbi="/home/cisseoh/scratch/gasdermins/SP36/GCF_001039355.2_LinAna2.0_protein.classified.fa",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa.gas_hits.classified.fa",
                sp4ncbi="/home/cisseoh/scratch/gasdermins/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.classified.fa",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa.gas_hits.classified.fa",
                sp5ncbi="/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_protein.classified.fa",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa.gas_hits.classified.fa",
                sp8ncbi="/home/cisseoh/scratch/gasdermins/SP8/GCF_009873245.2_mBalMus1.pri.v3_protein.classified.fa",
                sp11="/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa.gas_hits.classified.fa",
                sp11ncbi="/home/cisseoh/scratch/gasdermins/SP11/GCF_015220235.1_mChoDid1.pri_protein.classified.fa"

	run:
		shell("seqtk subseq {input.sp13} {input.sp13Cl} > {output.sp13}")
		shell("seqtk subseq {input.sp31} {input.sp31Cl} > {output.sp31}")
		shell("seqtk subseq {input.sp32} {input.sp32Cl} > {output.sp32}")
		shell("seqtk subseq {input.sp36} {input.sp36Cl} > {output.sp36}")
		shell("seqtk subseq {input.sp4} {input.sp4Cl} > {output.sp4}")
		shell("seqtk subseq {input.sp5} {input.sp5Cl} > {output.sp5}")
		shell("seqtk subseq {input.sp8} {input.sp8Cl} > {output.sp8}")
		shell("seqtk subseq {input.sp11} {input.sp11Cl} > {output.sp11}")
		shell("seqtk subseq {input.sp13ncbi} {input.sp13ncbiCl} > {output.sp13ncbi}")
		shell("seqtk subseq {input.sp31ncbi} {input.sp31ncbiCl} > {output.sp31ncbi}")
		shell("seqtk subseq {input.sp32ncbi} {input.sp32ncbiCl} > {output.sp32ncbi}")
		shell("seqtk subseq {input.sp36ncbi} {input.sp36ncbiCl} > {output.sp36ncbi}")
		shell("seqtk subseq {input.sp4ncbi} {input.sp4ncbiCl} > {output.sp4ncbi}")
		shell("seqtk subseq {input.sp5ncbi} {input.sp5ncbiCl} > {output.sp5ncbi}")
		shell("seqtk subseq {input.sp8ncbi} {input.sp8ncbiCl} > {output.sp8ncbi}")
		shell("seqtk subseq {input.sp11ncbi} {input.sp11ncbiCl} > {output.sp11ncbi}")

rule get_len:
	input:
		sp13=rules.get_sequence.output.sp13,
		sp31=rules.get_sequence.output.sp31,
		sp32=rules.get_sequence.output.sp32,
		sp36=rules.get_sequence.output.sp36,
		sp4=rules.get_sequence.output.sp4,
		sp5=rules.get_sequence.output.sp5,
		sp8=rules.get_sequence.output.sp8,
		sp11=rules.get_sequence.output.sp11,
		sp13ncbi=rules.get_sequence.output.sp13ncbi,
		sp31ncbi=rules.get_sequence.output.sp31ncbi,
		sp32ncbi=rules.get_sequence.output.sp32ncbi,
		sp36ncbi=rules.get_sequence.output.sp36ncbi,
		sp4ncbi=rules.get_sequence.output.sp4ncbi,
		sp5ncbi=rules.get_sequence.output.sp5ncbi,
		sp8ncbi=rules.get_sequence.output.sp8ncbi,
		sp11ncbi=rules.get_sequence.output.sp11ncbi,
	output:
                sp13=temp("/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp13ncbi=temp("/home/cisseoh/scratch/gasdermins/SP13/GCF_000001905.1_Loxafr3.0_protein.classified.len"),
                sp31=temp("/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp31ncbi=temp("/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_protein.classified.len"),
                sp32=temp("/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp32ncbi=temp("/home/cisseoh/scratch/gasdermins/SP32/GCF_010993605.1_kPetMar1.pri_protein.classified.len"),
                sp36=temp("/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp36ncbi=temp("/home/cisseoh/scratch/gasdermins/SP36/GCF_001039355.2_LinAna2.0_protein.classified.len"),
                sp4=temp("/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp4ncbi=temp("/home/cisseoh/scratch/gasdermins/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.classified.len"),
                sp5=temp("/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp5ncbi=temp("/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_protein.classified.len"),
                sp8=temp("/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa.gas_hits.classified.len"),
                sp8ncbi=temp("/home/cisseoh/scratch/gasdermins/SP8/GCF_009873245.2_mBalMus1.pri.v3_protein.classified.len"),
                sp11=temp("/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa.gas_hits.classified.len"),
                sp11ncbi=temp("/home/cisseoh/scratch/gasdermins/SP11/GCF_015220235.1_mChoDid1.pri_protein.classified.len")
	run:
		shell("seqtk comp {input.sp13} > {output.sp13}")
		shell("seqtk comp  {input.sp31} > {output.sp31}")
		shell("seqtk comp  {input.sp32} > {output.sp32}")
		shell("seqtk comp  {input.sp36} > {output.sp36}")
		shell("seqtk comp  {input.sp4} > {output.sp4}")
		shell("seqtk comp  {input.sp5} > {output.sp5}")
		shell("seqtk comp  {input.sp8} > {output.sp8}")
		shell("seqtk comp  {input.sp11} > {output.sp11}")
		shell("seqtk comp {input.sp13ncbi} > {output.sp13ncbi}")
		shell("seqtk comp  {input.sp31ncbi} > {output.sp31ncbi}")
		shell("seqtk comp  {input.sp32ncbi} > {output.sp32ncbi}")
		shell("seqtk comp  {input.sp36ncbi} > {output.sp36ncbi}")
		shell("seqtk comp  {input.sp4ncbi} > {output.sp4ncbi}")
		shell("seqtk comp  {input.sp5ncbi} > {output.sp5ncbi}")
		shell("seqtk comp  {input.sp8ncbi} > {output.sp8ncbi}")
		shell("seqtk comp  {input.sp11ncbi} > {output.sp11ncbi}")

rule blastp:
	input:
		sp13s=rules.get_sequence.output.sp13,
		sp31s=rules.get_sequence.output.sp31,
		sp32s=rules.get_sequence.output.sp32,
		sp36s=rules.get_sequence.output.sp36,
		sp4s=rules.get_sequence.output.sp4,
		sp5s=rules.get_sequence.output.sp5,
		sp8s=rules.get_sequence.output.sp8,
		sp11s=rules.get_sequence.output.sp11,
		sp13ncbi=rules.get_sequence.output.sp13ncbi,
		sp31ncbi=rules.get_sequence.output.sp31ncbi,
		sp32ncbi=rules.get_sequence.output.sp32ncbi,
		sp36ncbi=rules.get_sequence.output.sp36ncbi,
		sp4ncbi=rules.get_sequence.output.sp4ncbi,
		sp5ncbi=rules.get_sequence.output.sp5ncbi,
		sp8ncbi=rules.get_sequence.output.sp8ncbi,
		sp11ncbi=rules.get_sequence.output.sp11ncbi,
	output:
		sp13refdb=temp("/home/cisseoh/scratch/gasdermins/SP13/GCF_000001905.1_Loxafr3.0_protein.classified.db"),
		sp13="/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp31refdb=temp("/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_protein.classified.db"),
		sp31="/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp32refdb=temp("/home/cisseoh/scratch/gasdermins/SP32/GCF_010993605.1_kPetMar1.pri_protein.classified.db"),
                sp32="/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp36refdb=temp("/home/cisseoh/scratch/gasdermins/SP36/GCF_001039355.2_LinAna2.0_protein.classified.db"),
                sp36="/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp4refdb=temp("/home/cisseoh/scratch/gasdermins/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.classified.db"),
                sp4="/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp5refdb=temp("/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_protein.classified.db"),
		sp5="/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp8refdb=temp("/home/cisseoh/scratch/gasdermins/SP8/GCF_009873245.2_mBalMus1.pri.v3_protein.classified.db"),
		sp8="/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",
                sp11refdb=temp("/home/cisseoh/scratch/gasdermins/SP11/GCF_015220235.1_mChoDid1.pri_protein.classified.db"),
		sp11="/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.txt",

	params: 
		e="1e-5", fmt="7"
	threads: 4
	run:	
		shell("echo > {output.sp13refdb} && makeblastdb -in {input.sp13ncbi} -input_type fasta -dbtype prot -out {output.sp13refdb}")
		shell("echo > {output.sp13refdb} && makeblastdb -in {input.sp13ncbi} -input_type fasta -dbtype prot -out {output.sp13refdb}")
		shell("echo > {output.sp31refdb} && makeblastdb -in {input.sp31ncbi} -input_type fasta -dbtype prot -out {output.sp31refdb}")
		shell("echo > {output.sp32refdb} && makeblastdb -in {input.sp32ncbi} -input_type fasta -dbtype prot -out {output.sp32refdb}")
		shell("echo > {output.sp36refdb} && makeblastdb -in {input.sp36ncbi} -input_type fasta -dbtype prot -out {output.sp36refdb}")
		shell("echo > {output.sp4refdb} && makeblastdb -in {input.sp4ncbi} -input_type fasta -dbtype prot -out {output.sp4refdb}")
		shell("echo > {output.sp5refdb} && makeblastdb -in {input.sp5ncbi} -input_type fasta -dbtype prot -out {output.sp5refdb}")
		shell("echo > {output.sp8refdb} && makeblastdb -in {input.sp8ncbi} -input_type fasta -dbtype prot -out {output.sp8refdb}")
		shell("echo > {output.sp11refdb} && makeblastdb -in {input.sp11ncbi} -input_type fasta -dbtype prot -out {output.sp11refdb}")
		shell("blastp -num_threads {threads} -db {output.sp13refdb} -query {input.sp13s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp13}")
		shell("blastp -num_threads {threads} -db {output.sp31refdb} -query {input.sp31s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp31}")
		shell("blastp -num_threads {threads} -db {output.sp32refdb} -query {input.sp32s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp32}")
		shell("blastp -num_threads {threads} -db {output.sp36refdb} -query {input.sp36s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp36}")
		shell("blastp -num_threads {threads} -db {output.sp4refdb} -query {input.sp4s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp4}")
		shell("blastp -num_threads {threads} -db {output.sp5refdb} -query {input.sp5s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp5}")
		shell("blastp -num_threads {threads} -db {output.sp8refdb} -query {input.sp8s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp8}")
		shell("blastp -num_threads {threads} -db {output.sp11refdb} -query {input.sp11s} -outfmt {params.fmt} -evalue {params.e} -out {output.sp11}")


rule group:
	input:
		sp13len=rules.get_len.output.sp13,
		sp13ncbilen=rules.get_len.output.sp13ncbi,
		sp13Cl=rules.classify.output.sp13,
		sp13ncbiCl=rules.classify.output.sp13ncbi,
		sp13blast=rules.blastp.output.sp13, 
		sp31len=rules.get_len.output.sp31,
                sp31ncbilen=rules.get_len.output.sp31ncbi,
                sp31Cl=rules.classify.output.sp31,
                sp31ncbiCl=rules.classify.output.sp31ncbi,
                sp31blast=rules.blastp.output.sp31,
		sp32len=rules.get_len.output.sp32,
                sp32ncbilen=rules.get_len.output.sp32ncbi,
                sp32Cl=rules.classify.output.sp32,
                sp32ncbiCl=rules.classify.output.sp32ncbi,
                sp32blast=rules.blastp.output.sp32,
		sp36len=rules.get_len.output.sp36,
                sp36ncbilen=rules.get_len.output.sp36ncbi,
                sp36Cl=rules.classify.output.sp36,
                sp36ncbiCl=rules.classify.output.sp36ncbi,
                sp36blast=rules.blastp.output.sp36,
		sp4len=rules.get_len.output.sp4,
                sp4ncbilen=rules.get_len.output.sp4ncbi,
                sp4Cl=rules.classify.output.sp4,
                sp4ncbiCl=rules.classify.output.sp4ncbi,
                sp4blast=rules.blastp.output.sp4,
		sp5len=rules.get_len.output.sp5,
                sp5ncbilen=rules.get_len.output.sp5ncbi,
                sp5Cl=rules.classify.output.sp5,
                sp5ncbiCl=rules.classify.output.sp5ncbi,
                sp5blast=rules.blastp.output.sp5,
		sp8len=rules.get_len.output.sp8,
                sp8ncbilen=rules.get_len.output.sp8ncbi,
                sp8Cl=rules.classify.output.sp8,
                sp8ncbiCl=rules.classify.output.sp8ncbi,
                sp8blast=rules.blastp.output.sp8,
		sp11len=rules.get_len.output.sp11,
                sp11ncbilen=rules.get_len.output.sp11ncbi,
                sp11Cl=rules.classify.output.sp11,
                sp11ncbiCl=rules.classify.output.sp11ncbi,
                sp11blast=rules.blastp.output.sp11,
			
	output:
		sp13="/home/cisseoh/scratch/gasdermins/SP13/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/braker2/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",
                sp11="/home/cisseoh/scratch/gasdermins/SP11/braker/augustus.hints.aa.gas_hits.classified.fa_vs_ncbi.tmp",

	params: sp13="sp13",sp31="sp31", sp32="sp32", sp36="sp36", sp4="sp4", sp5="sp5", sp8="sp8", sp11="sp11"
	run:	
		shell("perl ../scripts/pairwise.pl {input.sp13Cl} {input.sp13len} {input.sp13ncbiCl} {input.sp13ncbilen} {input.sp13blast} {params.sp13}> {output.sp13}")
		shell("perl ../scripts/pairwise.pl {input.sp31Cl} {input.sp31len} {input.sp31ncbiCl} {input.sp31ncbilen} {input.sp31blast} {params.sp31}> {output.sp31}")
		shell("perl ../scripts/pairwise.pl {input.sp32Cl} {input.sp32len} {input.sp32ncbiCl} {input.sp32ncbilen} {input.sp32blast} {params.sp32}> {output.sp32}")
		shell("perl ../scripts/pairwise.pl {input.sp36Cl} {input.sp36len} {input.sp36ncbiCl} {input.sp36ncbilen} {input.sp36blast} {params.sp36}> {output.sp36}")
		shell("perl ../scripts/pairwise.pl {input.sp4Cl} {input.sp4len} {input.sp4ncbiCl} {input.sp4ncbilen} {input.sp4blast} {params.sp4}> {output.sp4}")
		shell("perl ../scripts/pairwise.pl {input.sp5Cl} {input.sp5len} {input.sp5ncbiCl} {input.sp5ncbilen} {input.sp5blast} {params.sp5}> {output.sp5}")
		shell("perl ../scripts/pairwise.pl {input.sp8Cl} {input.sp8len} {input.sp8ncbiCl} {input.sp8ncbilen} {input.sp8blast} {params.sp8}> {output.sp8}")
		shell("perl ../scripts/pairwise.pl {input.sp11Cl} {input.sp11len} {input.sp11ncbiCl} {input.sp11ncbilen} {input.sp11blast} {params.sp11}> {output.sp11}")

rule summary:
	input:
		sp13=rules.group.output.sp13,
		sp31=rules.group.output.sp31,
		sp32=rules.group.output.sp32,
		sp36=rules.group.output.sp36,
		sp4=rules.group.output.sp4,
		sp5=rules.group.output.sp5,
		sp8=rules.group.output.sp8,
		sp11=rules.group.output.sp11
	output:
		"/home/cisseoh/scratch/gasdermins/summary.txt"
	run:
		shell("grep ^# {input.sp13} | head -1 > {output}")
		shell("cat {input.sp13} {input.sp31} {input.sp32} {input.sp36} {input.sp4} {input.sp5} {input.sp8} {input.sp11} | grep -v ^# >> {output}")
		

