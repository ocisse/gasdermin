##
include: "../utils/build_hmm.smk"

rule scan_sp22:
        input:
                gasBseed=rules.cns.output.b,
                gasCseed=rules.cns.output.c,
                gasDseed=rules.cns.output.d,
                sp22="../../data/external/ncbi/SP22/data/GCF_000281125.3/GCF_000281125.3_ASM28112v4_genomic.fna",
		alt="../../data/external/ncbi/SP22b/data/GCF_000455745.1/unplaced.scaf.fna",

#	params: 
#		mod="protein2genome", 
#		p2="5", 
##		b='--showtargetgff Y --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0',
	output:
#		sp22b="../../data/processed/searches/sp22_exonerate_gasB.tab",
#               	sp22c="../../data/processed/searches/sp22_exonerate_gasC.tab",
#               	sp22d="../../data/processed/searches/sp22_exonerate_gasD.tab",
		altb="../../data/processed/searches/sp22b_exonerate_gasB.tab",
		altc="../../data/processed/searches/sp22b_exonerate_gasC.tab",
		altd="../../data/processed/searches/sp22b_exonerate_gasD.tab",
	run:
#		"echo > {output.spx}"
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.alt}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.altb}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.alt}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.altc}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.alt}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.altd}")
#        run:
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp22}"
#                      " --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp22b}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp22}"
#		      " --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp22c}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp22}"
#		      " --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp22d}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp22b}"
#		      " --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.spx}")
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp22b}"
#		      " --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp22bgC}")	
#		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp22b}"
#		      " --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp22bgD}")		
	
rule searchInreads:
	input:
		b="../../data/external/Schutter_2021/gB.cds",
		c="../../data/external/Schutter_2021/gC.cds",
		d="../../data/external/Schutter_2021/gD.cds",
		r="../../data/external/ncbi/SP22/data/SRR2911055.fq",
	output:
		dbb="../../data/processed/searches/last/gasB",
		dbc="../../data/processed/searches/last/gasC",
		dbd="../../data/processed/searches/last/gasD",
		b="../../data/processed/searches/sp22_reads/gasB_matches.maf",
		c="../../data/processed/searches/sp22_reads/gasC_matches.maf",
		d="../../data/processed/searches/sp22_reads/gasD_matches.maf",
	threads: 2
	params:
		"-j7 -S1 -Q1 -r5 -q5 -a15 -b3 -i8" 
	run:
		shell("echo > {output.dbb} && lastdb -cR01 {output.dbb} {input.b}")
		shell("lastal {params} -P {threads} {output.dbb} {input.r} | last-split > {output.b}")
		shell("echo > {output.dbc} && lastdb -cR01 {output.dbc} {input.c}")
		shell("lastal {params} -P {threads} {output.dbc} {input.r} | last-split > {output.c}")
		shell("echo > {output.dbd} && lastdb -cR01 {output.dbd} {input.d}")
		shell("lastal {params} -P {threads} {output.dbd} {input.r} | last-split > {output.d}")

rule maf2tab:
	input:
		b=rules.searchInreads.output.b, 
		c=rules.searchInreads.output.c,
		d=rules.searchInreads.output.d,
	output:
		b="../../data/processed/searches/sp22_reads/gasB_matches.txt",
                c="../../data/processed/searches/sp22_reads/gasC_matches.txt",
                d="../../data/processed/searches/sp22_reads/gasD_matches.txt",
	params: "tab"
	run:
		shell("maf-convert {params} {input.b} | grep -v \'^#\'| cut -f 7 | sort -u > {output.b}")
		shell("maf-convert {params} {input.c} | grep -v \'^#\'| cut -f 7 | sort -u > {output.c}")
		shell("maf-convert {params} {input.d} | grep -v \'^#\'| cut -f 7 | sort -u > {output.d}")
		
rule get_reads:
	input:
		reads=rules.searchInreads.input.r,
		b=rules.maf2tab.output.b,
                c=rules.maf2tab.output.c,
                d=rules.maf2tab.output.d,
	output:
		b="../../data/processed/searches/sp22_reads/gasB_matches.fq",
		c="../../data/processed/searches/sp22_reads/gasC_matches.fq",
		d="../../data/processed/searches/sp22_reads/gasD_matches.fq"
	run:
		shell("seqtk subseq {input.reads} {input.b} > {output.b}")
		shell("seqtk subseq {input.reads} {input.c} > {output.c}")
		shell("seqtk subseq {input.reads} {input.d} > {output.d}")

# failed
#rule spades:
#	input:
#                bref="../../data/external/Schutter_2021/gB.cds.fasta",
#                cref="../../data/external/Schutter_2021/gC.cds.fasta",
#                dref="../../data/external/Schutter_2021/gD.cds.fasta",
#		b=rules.get_reads.output.b,
#                c=rules.get_reads.output.c,
#                d=rules.get_reads.output.d,	
#	output:
#		b=directory("../../data/processed/searches/sp22_reads/gasB_assembly"),
#		c=directory("../../data/processed/searches/sp22_reads/gasC_assembly"),
#		d=directory("../../data/processed/searches/sp22_reads/gasD_assembly"),
#	threads: 2
#	run:
#		shell("spades.py --only-assembler -t {threads} --s 1 {input.b} -o {output.b} --untrusted-contigs {input.bref}")	
#		shell("spades.py --only-assembler -t {threads} --s 1 {input.c} -o {output.c} --untrusted-contigs {input.cref}")
#		shell("spades.py --only-assembler -t {threads} --s 1 {input.d} -o {output.d} --untrusted-contigs {input.dref}")
