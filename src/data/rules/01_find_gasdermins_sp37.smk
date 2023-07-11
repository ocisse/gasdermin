##
include: "../utils/build_hmm.smk"

rule scan_sp37:
	input:
		chr1="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr1.fna",
		chr2="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr2.fna",
		chr3="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr3.fna",
		chr4="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr4.fna",
		chr5="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr5.fna",
		chr6="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr6.fna",
		chr7="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr7.fna",
		chr8="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr8.fna",
		chr9="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr9.fna",
		chr10="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr10.fna",
		chr11="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr11.fna",
		chr12="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr12.fna",
		chr13="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr13.fna",
		chr14="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr14.fna",
		chr15="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr15.fna",
		chr16="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr16.fna",
		chr17="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr17.fna",
		chr18="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr18.fna",
		chr19="../../data/external/ncbi/SP37/data/GCF_902652985.1/chr19.fna",
		chrUn="../../data/external/ncbi/SP37/data/GCF_902652985.1/unplaced.scaf.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
	output:
		db=temp("../../data/processed/searches/sp37db"),
 		sp37a="../../data/processed/searches/sp37_exonerate_gasA.tab",
 		sp37b="../../data/processed/searches/sp37_exonerate_gasB.tab",
 		sp37c="../../data/processed/searches/sp37_exonerate_gasC.tab",
		sp37d="../../data/processed/searches/sp37_exonerate_gasD.tab",
		sp37e="../../data/processed/searches/sp37_exonerate_gasE.tab",
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("cat {input.chr1} {input.chr2} {input.chr3} {input.chr4} {input.chr5} {input.chr6} {input.chr7} {input.chr8}"
		      " {input.chr9} {input.chr10} {input.chr11} {input.chr12} {input.chr13} {input.chr14} {input.chr15} {input.chr16}"
		      " {input.chr17} {input.chr18} {input.chr19} > {output.db}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {output.db} {params} > {output.sp37a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {output.db} {params} > {output.sp37b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {output.db} {params} > {output.sp37c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {output.db} {params} > {output.sp37d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {output.db} {params} > {output.sp37e}")

rule fix_gff:
        input:
                sp37a=rules.scan_sp37.output.sp37a

        params: sp37a="sp37_gasA",
        output:
                sp37a="../../data/processed/searches/sp37_exonerate_gasA.gff"
        run:
                shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp37a} --tag {params.sp37a} > {output.sp37a}")

rule gff3Tofasta:
        input:
                sp37g=rules.scan_sp37.output.db,
                sp37a=rules.fix_gff.output.sp37a
        output:
                sp37at="../../data/processed/searches/sp37_exonerate_gasA_transcripts.fa",
                sp37ap="../../data/processed/searches/sp37_exonerate_gasA_proteins.fa"
        run:
                shell("gffread -w {output.sp37at} -g {input.sp37g} {input.sp37a}")
                shell("funannotate util gff2prot --gff3 {input.sp37a} --fasta {input.sp37g} > {output.sp37ap}")
