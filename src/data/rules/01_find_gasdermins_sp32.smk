##
include: "../utils/build_hmm.smk"

# cd /gpfs/gsfs11/users/cisseoh/gasdermins/data/external/ncbi/SP32/data/GCF_010993605.1
# ls *.fna | grep -v rna.fna | grep -v MT | grep -v cds_from_genomic.fna | while read f; do cat $f >> all_seq_concat.fas;done
#
rule scan_sp32:
	input:
		sp32="../../data/external/ncbi/SP32/data/GCF_010993605.1/all_seq_concat.fas",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
	output:
 		sp32a="../../data/processed/searches/sp32_exonerate_gasA.tab",
 		sp32b="../../data/processed/searches/sp32_exonerate_gasB.tab",
 		sp32c="../../data/processed/searches/sp32_exonerate_gasC.tab",
		sp32d="../../data/processed/searches/sp32_exonerate_gasD.tab",
		sp32e="../../data/processed/searches/sp32_exonerate_gasE.tab",
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasAseed} -t {input.sp32}"
 		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp32a}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasBseed} -t {input.sp32}"
 		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp32b}")
 		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasCseed} -t {input.sp32}"
 		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp32c}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasDseed} -t {input.sp32}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp32d}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {input.gasEseed} -t {input.sp32}"
		" --showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0 > {output.sp32e}")

rule fix_gff:
        input:
                sp32a=rules.scan_sp32.output.sp32a,
		sp32e=rules.scan_sp32.output.sp32e
        params: sp32a="sp32_gasA", sp32e="sp32_gasE",
        output:
                sp32a="../../data/processed/searches/sp32_exonerate_gasA.gff", 
		sp32e="../../data/processed/searches/sp32_exonerate_gasE.gff",
        run:
                shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp32a} --tag {params.sp32a} > {output.sp32a}")
		shell("perl ../scripts/fix_exonerate_gff.pl --gff {input.sp32e} --tag {params.sp32e} > {output.sp32e}")

rule gff3Tofasta:
	input:
		sp32g=rules.scan_sp32.input.sp32,
		sp32a=rules.fix_gff.output.sp32a,
		sp32e=rules.fix_gff.output.sp32e,
	output:
		sp32at="../../data/processed/searches/sp32_exonerate_gasA_transcripts.fa",
		sp32ap="../../data/processed/searches/sp32_exonerate_gasA_proteins.fa",
		sp32et="../../data/processed/searches/sp32_exonerate_gasE_transcripts.fa",
		sp32ep="../../data/processed/searches/sp32_exonerate_gasE_proteins.fa",
	run:
                shell("gffread -w {output.sp32at} -g {input.sp32g} {input.sp32a}")
                shell("gffread -w {output.sp32et} -g {input.sp32g} {input.sp32e}")
		shell("funannotate util gff2prot --gff3 {input.sp32a} --fasta {input.sp32g} > {output.sp32ap}")
		shell("funannotate util gff2prot --gff3 {input.sp32e} --fasta {input.sp32g} > {output.sp32ep}")
