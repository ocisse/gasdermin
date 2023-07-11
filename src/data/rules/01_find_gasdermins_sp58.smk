##
include: "../utils/build_hmm.smk"

#rule scan_sp58:
#	input:
#		g1="../../data/external/ncbi/SP58/data/GCA_001465055.1/unplaced.scaf.fna",
#		g2="../../data/external/ncbi/SP58/data/GCF_000003605.2/unplaced.scaf.fna",
# 		gasAseed=rules.cns.output.a,
# 		gasBseed=rules.cns.output.b,
# 		gasCseed=rules.cns.output.c,
#		gasDseed=rules.cns.output.d,
#		gasEseed=rules.cns.output.e,
#		gasPseed=rules.cns.output.p,
#	output:
#		db=temp("../../data/external/ncbi/SP58/data/db.fas"),
# 		sp58a="../../data/processed/searches/sp58_exonerate_gasA.tab",
# 		sp58b="../../data/processed/searches/sp58_exonerate_gasB.tab",
# 		sp58c="../../data/processed/searches/sp58_exonerate_gasC.tab",
#		sp58d="../../data/processed/searches/sp58_exonerate_gasD.tab",
#		sp58e="../../data/processed/searches/sp58_exonerate_gasE.tab",
#		sp58p="../../data/processed/searches/sp58_exonerate_gasP.tab",	
#	params:
#		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
#	run:
#		shell("cat {input.g1} {input.g2} > {output.db}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {output.db} {params} > {output.sp58a}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {output.db} {params} > {output.sp58b}")
# 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {output.db} {params} > {output.sp58c}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {output.db} {params} > {output.sp58d}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {output.db} {params} > {output.sp58e}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {output.db} {params} > {output.sp58p}")

# pvk is positve but multiple hists
# manually split
#
rule fix_gff:
	input:
#                sp58p=rules.scan_sp58.output.sp58p, # don't use because multiple hits
		r1="../../data/processed/searches/sp58_exonerate_gasP_splt1.tab",
		r2="../../data/processed/searches/sp58_exonerate_gasP_splt2.tab",
		r3="../../data/processed/searches/sp58_exonerate_gasP_splt3.tab",
		r4="../../data/processed/searches/sp58_exonerate_gasP_splt4.tab",

	params: sp58p="sp58_pvk",
	output:
#                sp58p="../../data/processed/searches/sp58_exonerate_pvk.gff"
		r1="../../data/processed/searches/sp58_exonerate_gasP_splt1.gff",
                r2="../../data/processed/searches/sp58_exonerate_gasP_splt2.gff",
                r3="../../data/processed/searches/sp58_exonerate_gasP_splt3.gff",
                r4="../../data/processed/searches/sp58_exonerate_gasP_splt4.gff",
	run:
#                shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp58p} --tag {params.sp58p} > {output.sp58p}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.r1} --tag {params.sp58p} > {output.r1}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.r2} --tag {params.sp58p} > {output.r2}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.r3} --tag {params.sp58p} > {output.r3}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.r4} --tag {params.sp58p} > {output.r4}")

# cat ../../data/external/ncbi/SP58/data/GCA_001465055.1/unplaced.scaf.fna ../../data/external/ncbi/SP58/data/GCF_000003605.2/unplaced.scaf.fna > ../../data/external/ncbi/SP58/data/db.fas

rule gff3Tofasta:
	input:
#                sp58g=rules.scan_sp58.output.db,
		sp58g="../../data/external/ncbi/SP58/data/db.fas",
#                sp58p=rules.fix_gff.output.sp58p
		gff1=rules.fix_gff.output.r1,
		gff2=rules.fix_gff.output.r2,
		gff3=rules.fix_gff.output.r3,
		gff4=rules.fix_gff.output.r4,

	output:
                sp58pt1="../../data/processed/searches/sp58_exonerate_gasP_split1_transcripts.fa",
                sp58pp1="../../data/processed/searches/sp58_exonerate_gasP_split1_proteins.fa",
		sp58pt2="../../data/processed/searches/sp58_exonerate_gasP_split2_transcripts.fa",
                sp58pp2="../../data/processed/searches/sp58_exonerate_gasP_split2_proteins.fa",
		sp58pt3="../../data/processed/searches/sp58_exonerate_gasP_split3_transcripts.fa",
                sp58pp3="../../data/processed/searches/sp58_exonerate_gasP_split3_proteins.fa",
		sp58pt4="../../data/processed/searches/sp58_exonerate_gasP_split4_transcripts.fa",
                sp58pp4="../../data/processed/searches/sp58_exonerate_gasP_split4_proteins.fa",
	run:
                shell("gffread -w {output.sp58pt1} -g {input.sp58g} {input.gff1}")
		shell("gffread -w {output.sp58pt2} -g {input.sp58g} {input.gff2}")
		shell("gffread -w {output.sp58pt3} -g {input.sp58g} {input.gff3}")
		shell("gffread -w {output.sp58pt4} -g {input.sp58g} {input.gff4}")
                shell("funannotate util gff2prot --gff3 {input.gff1} --fasta {input.sp58g} > {output.sp58pp1}")
		shell("funannotate util gff2prot --gff3 {input.gff2} --fasta {input.sp58g} > {output.sp58pp2}")
		shell("funannotate util gff2prot --gff3 {input.gff3} --fasta {input.sp58g} > {output.sp58pp3}")
		shell("funannotate util gff2prot --gff3 {input.gff4} --fasta {input.sp58g} > {output.sp58pp4}")
		

#no hits in ../../data/external/ncbi/SP58/data/GCF_000003605.2/unplaced.scaf.fna, quick look in the annotated proteins
rule phmmer:
	input:
		p="../../data/external/ncbi/SP58/data/GCF_000003605.2/protein.faa",
		gasPseed=rules.cns.output.p,
	output:
		p=temp("../../data/processed/searches/sp58_GCF_000003605.2_search.tbl")
		
	params: e="1e-5"
	threads: 6
	run:
		shell("phmmer --cpu {threads} --tblout {output.p} --noali -E {params.e} {input.gasPseed} {input.p}") # there are two hits

rule get_hits:
	input:	
		prot=rules.phmmer.input.p,
		hits=rules.phmmer.output.p
	output:
		t1=temp("../../data/processed/searches/sp58_GCF_000003605.2_search.tmp"),
		p="../../data/processed/searches/sp58_GCF_000003605.2_search.fa"
	run:
		shell("grep ^XP  {input.hits}  | cut -f 1 -d \' \' | sort -u > {output.t1}")
		shell("seqtk subseq {input.prot} {output.t1} > {output.p}")
# rescan w hits from GCF_000003605.2
rule scan_v2:
	input:
#		g1=rules.input.g1,
		g1="../../data/external/ncbi/SP58/data/GCA_001465055.1/unplaced.scaf.fna",
		gasPseed=rules.get_hits.output.p
	output:
		sp58p="../../data/processed/searches/sp58_exonerate_gasPv2.tab",
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasPseed} -t {input.g1} {params} > {output.sp58p}")
rule gff2bed:
	input:
		rules.scan_v2.output.sp58p
	output:
		"../../data/processed/searches/sp58_exonerate_gasPv2.bed",
	shell:
		"grep -v \'^#\' {input} | cut -f 1,4,5,7 | sort -u > {output}"

rule generate_genome_file:
	input:
		"../../data/external/ncbi/SP58/data/GCA_001465055.1/unplaced.scaf.fna"
#	rules.scan_v2.input.g1,
	output:
		temp("../../data/external/ncbi/SP58/data/GCA_001465055.1/unplaced.scaf.fna.genome"),
	shell:
                "seqtk comp {input} | cut -f 1,2 > {output}"

rule bed2extendedbed:
	input:
		g=rules.generate_genome_file.output,
		bed=rules.gff2bed.output
	params: b="9999"
	output:
		bed="../../data/processed/searches/sp58_exonerate_gasPv2_ext.bed",
		bed2="../../data/processed/searches/sp58_exonerate_gasPv2_ext_sorted.bed",
		merge="../../data/processed/searches/sp58_exonerate_gasPv2_ext_merge.bed",
	run:
		shell("bedtools slop -i {input.bed} -g {input.g} -b {params} | cut -f 1,2,3,4 | sort -u > {output.bed}")
		shell("bedtools sort -i {output.bed} > {output.bed2}")
		shell("bedtools merge -i {output.bed2} > {output.merge}")
rule bed2fasta:
	input:
		g1="../../data/external/ncbi/SP58/data/GCA_001465055.1/unplaced.scaf.fna",
#		g=rules.scan_v2.input.g1,
		bed=rules.bed2extendedbed.output.merge,
	output:
        	"../../data/processed/searches/sp58_exonerate_gasPv2_ext.fa",
	run:
                shell("bedtools getfasta -fi {input.g1}  -bed {input.bed} -fo {output}")

# braker
# 05_braker.sp58.sh # failed so far to debugg
# try direct augustus ppx
#
#http://bioinf.uni-greifswald.de/augustus/binaries/tutorial/ppx.html

rule fastBlockSearch:
	input:	
		prl=rules.build_prfl.output.p,
		seq=rules.bed2fasta.output
		
	output:
		temp("../../data/processed/searches/sp58_exonerate_gasPv2_ext.tmp")
	params: c="1.1"
	shell:
		"/usr/local/apps/busco/Augustus/bin/fastBlockSearch --cutoff={params.c} {input} {input.prl} > {output}"

rule augppx_pred:
	input:
		prl=rules.build_prfl.output.p,
		cfg="/gpfs/gsfs11/users/cisseoh/gasdermins/src/tools/ppx.cfg",
		seq=rules.bed2fasta.output
	output:
		"../../data/processed/searches/sp58_exonerate_gasPv2_ext.aug_ppx.gff"
	run:
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.prl} {input.seq} > {output}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output}  --seqfile={input.seq}")

#
