##
include: "../utils/build_hmm.smk"

rule scan_sp5:
	input:
		sp5="../../data/external/ncbi/SP5/data/GCF_000003625.3/all_seq.fas",
#		sp5="../../data/external/ncbi/SP5/data/GCA_009806435.2/all_seq.fas",
#		sp5="../../data/external/ncbi/SP5/data/GCA_013371645.1/all_seq.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
 		sp5a="../../data/processed/searches/sp5_exonerate_gasA.tab",
 		sp5b="../../data/processed/searches/sp5_exonerate_gasB.tab",
 		sp5c="../../data/processed/searches/sp5_exonerate_gasC.tab",
		sp5d="../../data/processed/searches/sp5_exonerate_gasD.tab",
		sp5e="../../data/processed/searches/sp5_exonerate_gasE.tab",
		sp5p="../../data/processed/searches/sp5_exonerate_gasP.tab",	
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp5} {params} > {output.sp5a}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp5} {params} > {output.sp5b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp5} {params} > {output.sp5c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp5} {params} > {output.sp5d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp5} {params} > {output.sp5e}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.sp5} {params} > {output.sp5p}")
##
# manually do this and fix later
rule fix_gff:
	input:
		sp5b="../../data/processed/searches/sp5_exonerate_gasB.tab",
		sp5e="../../data/processed/searches/sp5_exonerate_gasE.tab"
	params:
		sp5b="sp5_gasB", sp5e="sp5_gasE",
	output:
		sp5b="../../data/processed/searches/sp5_exonerate_gasB.gff", 
		sp5e="../../data/processed/searches/sp5_exonerate_gasE.gff"
	run:
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp5b} --tag {params.sp5b} > {output.sp5b}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp5e} --tag {params.sp5e} > {output.sp5e}")

rule gff3Tofasta:
	input:
		sp5g=rules.scan_sp5.input.sp5,
		sp5b=rules.fix_gff.output.sp5b, 
		sp5e=rules.fix_gff.output.sp5e,
	output:
		sp5bt="../../data/processed/searches/sp5_exonerate_gasB_transcripts.fa",
#		sp5bp="../../data/processed/searches/sp5_exonerate_gasB_proteins.fa", 
		sp5et="../../data/processed/searches/sp5_exonerate_gasE_transcripts.fa",

	run:
		shell("gffread -w {output.sp5bt} -g {input.sp5g} {input.sp5b}")
		shell("gffread -w {output.sp5et} -g {input.sp5g} {input.sp5e}")
#		shell("funannotate util gff2prot --gff3 {input.sp5b} --fasta {input.sp5g} > {output.sp5b}")
#
rule gff2bed_sp5:
	input:
		sp5b=rules.scan_sp5.output.sp5b
	output:
		sp5b=temp("../../data/processed/searches/sp5_exonerate_gasB.bed"),
	run:
		shell("grep -v \'^#\' {input.sp5b} | cut -f 1,4,5,7 | sort -u > {output.sp5b}")

rule generate_genome_file_sp5:
	input:
		g=rules.scan_sp5.input.sp5,
	output:
		temp("../../data/external/ncbi/SP5/data/GCF_000003625.3/all_seq.txt")
	shell:
		" seqtk comp {input.g} | cut -f 1,2 > {output}"
rule bed2extendedbed_sp5:
	input:
		g=rules.generate_genome_file_sp5.output,
		sp5b=rules.gff2bed_sp5.output.sp5b
	output:
		sp5b=temp("../../data/processed/searches/sp5_exonerate_gasB_ext.bed"),
	params: "10000" # 10kb
	run:
		shell("bedtools slop -i {input.sp5b} -g {input.g} -b {params} | cut -f 1,2,3,4 | sort -u > {output.sp5b}")

rule merged_bed_sp5:
	input:
		sp5b=rules.bed2extendedbed_sp5.output.sp5b,
	output:
		sp5b=temp("../../data/processed/searches/sp5_exonerate_gasB_ext_merged.bed"),
	params: 
		d="20000"
	run:
		shell("bedtools merge -i {input.sp5b} -d {params.d} > {output.sp5b}")

rule bed2fasta_sp5:
	input:
		g=rules.scan_sp5.input.sp5,
		sp5b=rules.merged_bed_sp5.output.sp5b,
	output:
		sp5b="../../data/processed/searches/sp5_exonerate_gasB_ext.fa",
	run:
		shell("bedtools getfasta -fi {input.g} -bed {input.sp5b} -fo {output.sp5b}")

rule augppx_pred_sp5:
	input:
		cfg="/gpfs/gsfs11/users/cisseoh/gasdermins/src/tools/ppx.cfg",
		bprl=rules.build_prfl.output.b,
		sp5b=rules.bed2fasta_sp5.output.sp5b
	output:
		sp5b="../../data/processed/searches/sp5_exonerate_gasB_ext.gff",
	run:
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.sp5b} > {output.sp5b}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.sp5b}  --seqfile={input.sp5b}")
# did catch gasB
# but blastx of this '../../data/processed/searches/sp5_exonerate_gasB_transcripts.fa' tell that something is there
# try tblastn
# module load blast
rule tblastn:
	input:
		g=rules.scan_sp5.input.sp5,
		q="../../data/processed/searches/sp5_exonerate_gasB_transcripts.aa",
	output:
		db=temp("../../data/processed/searches/sp5.db"),
		o="../../data/processed/searches/sp5_exonerate_gasB_transcripts.tbln"
	params: b2="-dbtype nucl", b3="-outfmt 0 -evalue 1e-15"
	threads: 8
	run:	
		shell("echo > {output.db}")
		shell("makeblastdb {params.b2} -in {input.g} -out {output.db}")
		shell("tblastn -db {output.db} -out {output.o} -query {input.q} {params.b3} -num_threads {threads}")

# is there! should be 
# NC_013687.1,41142490-41142311,41142225-41142112,41141799-41141629, # probably a pseudogenes
rule blastp:
	input:	
		ncbiaa="../../data/external/ncbi/SP5/data/GCF_000003625.3/protein.faa",
		pred="../../data/processed/searches/sp5_exonerate_gasB_ext.aa",
		q="../../data/processed/searches/sp5_exonerate_gasB_transcripts.aa",
	params: b2="-dbtype prot", b3="-outfmt 0 -evalue 1e-15", b4="-outfmt 7 -evalue 1e-50",
	output:
		db=temp("../../data/processed/searches/tmp.db"),
		o="../../data/processed/searches/sp5_exonerate_gasB_transcripts.blastp",
		vsncbi="../../data/processed/searches/sp5_exonerate_gasB_ext.aa_vs_ncbi.blastp"
	threads: 6
	run:
		shell("echo > {output.db}")
		shell("makeblastdb {params.b2} -in {input.pred} -out {output.db}")	
		shell("blastp -db {output.db} -out {output.o} -query {input.q} {params.b3} -num_threads {threads}")
		shell("blastp -db {output.db} -out {output.vsncbi} -query {input.ncbiaa} {params.b4} -num_threads {threads} -num_descriptions 5 -num_alignments 5")
#
# ../../data/processed/searches/sp5_gsdm.aa
#
# quick check 
# cat \
# ../../data/external/Schutter_2021/gB.fasta \
# ../../data/processed/searches/sp5_gsdm.aa \
# > ../../data/processed/searches/sp5_gB_searches.aa
#
# module load clustalo
# clustalo -i  ../../data/processed/searches/sp5_gB_searches.aa -o ../../data/processed/searches/sp5_gB_searches.aln  --outfmt=clu
# in fct it's fused with another gene: ORM1-like protein 3 XP_002719392.1i
# module load FastTree
# FastTree ../../data/processed/searches/sp5_gB_searches.aln > ../../data/processed/searches/sp5_gB_searches.nwk
