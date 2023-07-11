##
include: "../utils/build_hmm.smk"

rule scan_sp61:
	input:
		g1="../../data/external/ncbi/SP61/data/GCA_000209225.1/unplaced.scaf.fna",
		g2="../../data/external/ncbi/SP61/data/GCA_000827895.1/GCA_000827895.1_ASM82789v1_genomic.fna",
		g3="../../data/external/ncbi/SP61/data/GCA_001407235.2/GCA_001407235.2_Kudoa1_genomic.fna",
		g4="../../data/external/ncbi/SP61/data/GCA_001455285.1/GCA_001455285.1_ASM145528v1_genomic.fna",
		g5="../../data/external/ncbi/SP61/data/GCA_001455295.2/GCA_001455295.2_ASM145529v2_genomic.fna",
		g6="../../data/external/ncbi/SP61/data/GCA_003687565.1/GCA_003687565.1_ASM368756v1_genomic.fna",
		g7="../../data/external/ncbi/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic.fna",
		g8="../../data/external/ncbi/SP61/data/GCA_008930755.1/GCA_008930755.1_Aala_01_genomic.fna",
		g9="../../data/external/ncbi/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic.fna",
		g10="../../data/external/ncbi/SP61/data/GCA_009887335.1/GCA_009887335.1_TAU_Hsal_1_genomic.fna",
		g11="../../data/external/ncbi/SP61/data/GCA_010016025.1/GCA_010016025.1_ASM1001602v1_genomic.fna",
		g12="../../data/external/ncbi/SP61/data/GCA_010016065.1/GCA_010016065.1_ASM1001606v1_genomic.fna",
		g13="../../data/external/ncbi/SP61/data/GCA_010108815.1/GCA_010108815.1_TAU_Msqu_1_genomic.fna",
		g14="../../data/external/ncbi/SP61/data/GCA_011057435.1/GCA_011057435.1_equina_smartden.arrow4.noredun_genomic.fna",
		g15="../../data/external/ncbi/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic.fna",
		g16="../../data/external/ncbi/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic.fna",
		g17="../../data/external/ncbi/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic.fna",
		g18="../../data/external/ncbi/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic.fna",
		g19="../../data/external/ncbi/SP61/data/GCA_014634185.1/GCA_014634185.1_Amyr_1.0_genomic.fna",
		g20="../../data/external/ncbi/SP61/data/GCA_014634245.1/GCA_014634245.1_Mcac_1.0_genomic.fna",
		g21="../../data/external/ncbi/SP61/data/GCA_014634505.1/GCA_014634505.1_Meff_1.0_genomic.fna",
		g22="../../data/external/ncbi/SP61/data/GCA_014706445.1/GCA_014706445.1_ASM1470644v1_genomic.fna",
		g23="../../data/external/ncbi/SP61/data/GCA_015163945.1/GCA_015163945.1_ASM1516394v1_genomic.fna",
		g24="../../data/external/ncbi/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic.fna",
		g25="../../data/external/ncbi/SP61/data/GCA_016068315.1/GCA_016068315.1_UCD_Asol_genomic.fna",
		g26="../../data/external/ncbi/SP61/data/GCA_016169945.1/GCA_016169945.1_IDSSE_Tra_sp_1.0_genomic.fna",
		g27="../../data/external/ncbi/SP61/data/GCA_016490735.1/GCA_016490735.1_ASM1649073v1_genomic.fna",
		g28="../../data/external/ncbi/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic.fna",
		g29="../../data/external/ncbi/SP61/data/GCA_019787425.1/GCA_019787425.1_ASM1978742v1_genomic.fna",
		g30="../../data/external/ncbi/SP61/data/GCA_900177555.1/GCA_900177555.1_Renilla_reniformis_genome_assembly_1.0_genomic.fna",
		g31="../../data/external/ncbi/SP61/data/GCA_900234385.1/GCA_900234385.1_Avir_v1_genomic.fna",
		g32="../../data/external/ncbi/SP61/data/GCA_900245855.1/GCA_900245855.1_ASM90024585v1_genomic.fna",
		g33="../../data/external/ncbi/SP61/data/GCA_900290455.1/GCA_900290455.1_Prus_genomic.fna",
		g34="../../data/external/ncbi/SP61/data/GCA_902728285.1/GCA_902728285.1_Clytia_hemisphaerica_genome_assembly_genomic.fna",
		g35="../../data/external/ncbi/SP61/data/GCA_916610825.1/all_seq.fas",
		g36="../../data/external/ncbi/SP61/data/GCA_918843875.1/all_seq.fas",
		g37="../../data/external/ncbi/SP61/data/GCF_000209225.1/unplaced.scaf.fna",
		g38="../../data/external/ncbi/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic.fna",
		g39="../../data/external/ncbi/SP61/data/GCF_002042975.1/GCF_002042975.1_ofav_dov_v1_genomic.fna",
		g40="../../data/external/ncbi/SP61/data/GCF_002571385.1/GCF_002571385.1_Stylophora_pistillata_v1_genomic.fna",
		g41="../../data/external/ncbi/SP61/data/GCF_003704095.1/GCF_003704095.1_ASM370409v1_genomic.fna",
		g42="../../data/external/ncbi/SP61/data/GCF_004324835.1/GCF_004324835.1_DenGig_1.0_genomic.fna",
 		gasAseed=rules.cns.output.a,
 		gasBseed=rules.cns.output.b,
 		gasCseed=rules.cns.output.c,
		gasDseed=rules.cns.output.d,
		gasEseed=rules.cns.output.e,
		gasPseed=rules.cns.output.p,
	output:
		db=temp("../../data/processed/searches/db.seed.fa"),
		g1="../../data/processed/searches/SP61/data/GCA_000209225.1/unplaced.scaf.tab",
                g2="../../data/processed/searches/SP61/data/GCA_000827895.1/GCA_000827895.1_ASM82789v1_genomic.tab",
                g3="../../data/processed/searches/SP61/data/GCA_001407235.2/GCA_001407235.2_Kudoa1_genomic.tab",
                g4="../../data/processed/searches/SP61/data/GCA_001455285.1/GCA_001455285.1_ASM145528v1_genomic.tab",
                g5="../../data/processed/searches/SP61/data/GCA_001455295.2/GCA_001455295.2_ASM145529v2_genomic.tab",
                g6="../../data/processed/searches/SP61/data/GCA_003687565.1/GCA_003687565.1_ASM368756v1_genomic.tab",
                g7="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic.tab",
                g8="../../data/processed/searches/SP61/data/GCA_008930755.1/GCA_008930755.1_Aala_01_genomic.tab",
                g9="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic.tab",
                g10="../../data/processed/searches/SP61/data/GCA_009887335.1/GCA_009887335.1_TAU_Hsal_1_genomic.tab",
                g11="../../data/processed/searches/SP61/data/GCA_010016025.1/GCA_010016025.1_ASM1001602v1_genomic.tab",
                g12="../../data/processed/searches/SP61/data/GCA_010016065.1/GCA_010016065.1_ASM1001606v1_genomic.tab",
                g13="../../data/processed/searches/SP61/data/GCA_010108815.1/GCA_010108815.1_TAU_Msqu_1_genomic.tab",
                g14="../../data/processed/searches/SP61/data/GCA_011057435.1/GCA_011057435.1_equina_smartden.arrow4.noredun_genomic.tab",
                g15="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic.tab",
                g16="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic.tab",
                g17="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic.tab",
                g18="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic.tab",
                g19="../../data/processed/searches/SP61/data/GCA_014634185.1/GCA_014634185.1_Amyr_1.0_genomic.tab",
                g20="../../data/processed/searches/SP61/data/GCA_014634245.1/GCA_014634245.1_Mcac_1.0_genomic.tab",
                g21="../../data/processed/searches/SP61/data/GCA_014634505.1/GCA_014634505.1_Meff_1.0_genomic.tab",
                g22="../../data/processed/searches/SP61/data/GCA_014706445.1/GCA_014706445.1_ASM1470644v1_genomic.tab",
                g23="../../data/processed/searches/SP61/data/GCA_015163945.1/GCA_015163945.1_ASM1516394v1_genomic.tab",
                g24="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic.tab",
                g25="../../data/processed/searches/SP61/data/GCA_016068315.1/GCA_016068315.1_UCD_Asol_genomic.tab",
                g26="../../data/processed/searches/SP61/data/GCA_016169945.1/GCA_016169945.1_IDSSE_Tra_sp_1.0_genomic.tab",
                g27="../../data/processed/searches/SP61/data/GCA_016490735.1/GCA_016490735.1_ASM1649073v1_genomic.tab",
                g28="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic.tab",
                g29="../../data/processed/searches/SP61/data/GCA_019787425.1/GCA_019787425.1_ASM1978742v1_genomic.tab",
                g30="../../data/processed/searches/SP61/data/GCA_900177555.1/GCA_900177555.1_Renilla_reniformis_genome_assembly_1.0_genomic.tab",
                g31="../../data/processed/searches/SP61/data/GCA_900234385.1/GCA_900234385.1_Avir_v1_genomic.tab",
                g32="../../data/processed/searches/SP61/data/GCA_900245855.1/GCA_900245855.1_ASM90024585v1_genomic.tab",
                g33="../../data/processed/searches/SP61/data/GCA_900290455.1/GCA_900290455.1_Prus_genomic.tab",
                g34="../../data/processed/searches/SP61/data/GCA_902728285.1/GCA_902728285.1_Clytia_hemisphaerica_genome_assembly_genomic.tab",
                g35="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq.tab",
                g36="../../data/processed/searches/SP61/data/GCA_918843875.1/all_seq.tab",
                g37="../../data/processed/searches/SP61/data/GCF_000209225.1/unplaced.scaf.tab",
                g38="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic.tab",
                g39="../../data/processed/searches/SP61/data/GCF_002042975.1/GCF_002042975.1_ofav_dov_v1_genomic.tab",
                g40="../../data/processed/searches/SP61/data/GCF_002571385.1/GCF_002571385.1_Stylophora_pistillata_v1_genomic.tab",
                g41="../../data/processed/searches/SP61/data/GCF_003704095.1/GCF_003704095.1_ASM370409v1_genomic.tab",
                g42="../../data/processed/searches/SP61/data/GCF_004324835.1/GCF_004324835.1_DenGig_1.0_genomic.tab",

		
	params:
		"--showtargetgff Y  --showvulgar F --minintron 20 --showalignment F --showcigar no --gff3 Y --verbose 0"
	run:
		shell("cat  {input.gasAseed}  {input.gasBseed}  {input.gasCseed}  {input.gasDseed}  {input.gasEseed}  {input.gasPseed} > {output.db}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g1} {params} > {output.g1}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g2} {params} > {output.g2}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g3} {params} > {output.g3}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g4} {params} > {output.g4}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g5} {params} > {output.g5}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g6} {params} > {output.g6}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g7} {params} > {output.g7}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g8} {params} > {output.g8}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g9} {params} > {output.g9}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g10} {params} > {output.g10}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g11} {params} > {output.g11}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g12} {params} > {output.g12}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g13} {params} > {output.g13}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g14} {params} > {output.g14}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g15} {params} > {output.g15}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g16} {params} > {output.g16}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g17} {params} > {output.g17}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g18} {params} > {output.g18}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g19} {params} > {output.g19}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g20} {params} > {output.g20}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g21} {params} > {output.g21}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g22} {params} > {output.g22}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g23} {params} > {output.g23}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g24} {params} > {output.g24}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g25} {params} > {output.g25}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g26} {params} > {output.g26}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g27} {params} > {output.g27}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g28} {params} > {output.g28}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g29} {params} > {output.g29}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g30} {params} > {output.g30}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g31} {params} > {output.g31}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g32} {params} > {output.g32}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g33} {params} > {output.g33}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g34} {params} > {output.g34}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g35} {params} > {output.g35}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g36} {params} > {output.g36}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g37} {params} > {output.g37}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g38} {params} > {output.g38}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g39} {params} > {output.g39}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g40} {params} > {output.g40}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g41} {params} > {output.g41}")
		shell("../tools/exonerate-gff3/src/program/exonerate --model protein2genome --percent 5 -q {output.db} -t {input.g42} {params} > {output.g42}")

rule gff2bed_sp61:
	input:
		g1=rules.scan_sp61.output.g1,g2=rules.scan_sp61.output.g2,g3=rules.scan_sp61.output.g3,g4=rules.scan_sp61.output.g4,g5=rules.scan_sp61.output.g5,
		g6=rules.scan_sp61.output.g6,g7=rules.scan_sp61.output.g7,g8=rules.scan_sp61.output.g8,g9=rules.scan_sp61.output.g9,g10=rules.scan_sp61.output.g10,
		g11=rules.scan_sp61.output.g11,g12=rules.scan_sp61.output.g12,g13=rules.scan_sp61.output.g13,g14=rules.scan_sp61.output.g14,g15=rules.scan_sp61.output.g15,
		g16=rules.scan_sp61.output.g16,g17=rules.scan_sp61.output.g17,g18=rules.scan_sp61.output.g18,g19=rules.scan_sp61.output.g19,g20=rules.scan_sp61.output.g20,
		g21=rules.scan_sp61.output.g21,g22=rules.scan_sp61.output.g22,g23=rules.scan_sp61.output.g23,g24=rules.scan_sp61.output.g24,g25=rules.scan_sp61.output.g25,
		g26=rules.scan_sp61.output.g26,g27=rules.scan_sp61.output.g27,g28=rules.scan_sp61.output.g28,g29=rules.scan_sp61.output.g29,g30=rules.scan_sp61.output.g30,
		g31=rules.scan_sp61.output.g31,g32=rules.scan_sp61.output.g32,g33=rules.scan_sp61.output.g33,g34=rules.scan_sp61.output.g34,g35=rules.scan_sp61.output.g35,
		g36=rules.scan_sp61.output.g36,g37=rules.scan_sp61.output.g37,g38=rules.scan_sp61.output.g38,g39=rules.scan_sp61.output.g39,g40=rules.scan_sp61.output.g40,
		g41=rules.scan_sp61.output.g41,g42=rules.scan_sp61.output.g42,
	output:
                g7="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic.bed",
                g9="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic.bed",
                g15="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic.bed",
                g16="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic.bed",
                g17="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic.bed",
                g18="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic.bed",
                g24="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic.bed",
                g28="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic.bed",
                g35="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq.bed",
                g36="../../data/processed/searches/SP61/data/GCA_918843875.1/all_seq.bed",
                g38="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic.bed",
	run:
		shell("grep -v \'^#\' {input.g7} | cut -f 1,4,5,7 | sort -u > {output.g7}"),
		shell("grep -v \'^#\' {input.g9} | cut -f 1,4,5,7 | sort -u > {output.g9}"),
		shell("grep -v \'^#\' {input.g15} | cut -f 1,4,5,7 | sort -u > {output.g15}"),
		shell("grep -v \'^#\' {input.g16} | cut -f 1,4,5,7 | sort -u > {output.g16}"),
		shell("grep -v \'^#\' {input.g17} | cut -f 1,4,5,7 | sort -u > {output.g17}"),
		shell("grep -v \'^#\' {input.g18} | cut -f 1,4,5,7 | sort -u > {output.g18}"),
		shell("grep -v \'^#\' {input.g24} | cut -f 1,4,5,7 | sort -u > {output.g24}"),
		shell("grep -v \'^#\' {input.g28} | cut -f 1,4,5,7 | sort -u > {output.g28}"),
		shell("grep -v \'^#\' {input.g35} | cut -f 1,4,5,7 | sort -u > {output.g35}"),
		shell("grep -v \'^#\' {input.g36} | cut -f 1,4,5,7 | sort -u > {output.g36}"),
		shell("grep -v \'^#\' {input.g38} | cut -f 1,4,5,7 | sort -u > {output.g38}"),

rule generate_genome_file_sp61:
	input:
		g7=rules.scan_sp61.input.g7,
		g9=rules.scan_sp61.input.g9,
		g15=rules.scan_sp61.input.g15,
		g16=rules.scan_sp61.input.g16,
		g17=rules.scan_sp61.input.g17,
		g18=rules.scan_sp61.input.g18,
		g24=rules.scan_sp61.input.g24,
		g28=rules.scan_sp61.input.g28,
		g35=rules.scan_sp61.input.g35,
		g38=rules.scan_sp61.input.g38,
	output:
		g7="../../data/external/ncbi/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic.txt",
                g9="../../data/external/ncbi/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic.txt",
                g15="../../data/external/ncbi/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic.txt",
                g16="../../data/external/ncbi/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic.txt",
                g17="../../data/external/ncbi/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic.txt",
                g18="../../data/external/ncbi/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic.txt",
                g24="../../data/external/ncbi/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic.txt",
                g28="../../data/external/ncbi/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic.txt",
                g35="../../data/external/ncbi/SP61/data/GCA_916610825.1/all_seq.txt",
                g38="../../data/external/ncbi/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic.txt",
	run:
		shell("seqtk comp {input.g7} | cut -f 1,2 > {output.g7}")
		shell("seqtk comp {input.g9} | cut -f 1,2 > {output.g9}")
		shell("seqtk comp {input.g15} | cut -f 1,2 > {output.g15}")
		shell("seqtk comp {input.g16} | cut -f 1,2 > {output.g16}")
		shell("seqtk comp {input.g17} | cut -f 1,2 > {output.g17}")
		shell("seqtk comp {input.g18} | cut -f 1,2 > {output.g18}")
		shell("seqtk comp {input.g24} | cut -f 1,2 > {output.g24}")
		shell("seqtk comp {input.g28} | cut -f 1,2 > {output.g28}")
		shell("seqtk comp {input.g35} | cut -f 1,2 > {output.g35}")
		shell("seqtk comp {input.g38} | cut -f 1,2 > {output.g38}")


rule bed2extendedbed_sp61:
	input:
		g7=rules.generate_genome_file_sp61.output.g7,
                g9=rules.generate_genome_file_sp61.output.g9,
                g15=rules.generate_genome_file_sp61.output.g15,
                g16=rules.generate_genome_file_sp61.output.g16,
                g17=rules.generate_genome_file_sp61.output.g17,
                g18=rules.generate_genome_file_sp61.output.g18,
                g24=rules.generate_genome_file_sp61.output.g24,
                g28=rules.generate_genome_file_sp61.output.g28,
                g35=rules.generate_genome_file_sp61.output.g35,
                g38=rules.generate_genome_file_sp61.output.g38,
 		g7s=rules.gff2bed_sp61.output.g7,
                g9s=rules.gff2bed_sp61.output.g9,
                g15s=rules.gff2bed_sp61.output.g15,
                g16s=rules.gff2bed_sp61.output.g16,
                g17s=rules.gff2bed_sp61.output.g17,
                g18s=rules.gff2bed_sp61.output.g18,
                g24s=rules.gff2bed_sp61.output.g24,
                g28s=rules.gff2bed_sp61.output.g28,
                g35s=rules.gff2bed_sp61.output.g35,
                g38s=rules.gff2bed_sp61.output.g38,
	params: "10000" # 10kb
	output:
                g7="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext.bed",
                g9="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext.bed",
                g15="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext.bed",
                g16="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext.bed",
                g17="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext.bed",
                g18="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext.bed",
                g24="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext.bed",
                g28="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext.bed",
                g35="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext.bed",
                g38="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext.bed",
	run:
		shell("bedtools slop -i {input.g7s} -g {input.g7} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g7}")
		shell("bedtools slop -i {input.g9s} -g {input.g9} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g9}")
		shell("bedtools slop -i {input.g15s} -g {input.g15} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g15}")
		shell("bedtools slop -i {input.g16s} -g {input.g16} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g16}")
		shell("bedtools slop -i {input.g17s} -g {input.g17} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g17}")
		shell("bedtools slop -i {input.g18s} -g {input.g18} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g18}")
		shell("bedtools slop -i {input.g24s} -g {input.g24} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g24}")
		shell("bedtools slop -i {input.g28s} -g {input.g28} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g28}")
		shell("bedtools slop -i {input.g35s} -g {input.g35} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g35}")
		shell("bedtools slop -i {input.g38s} -g {input.g38} -b {params} | cut -f 1,2,3,4 | sort -u > {output.g38}")

rule bed2fasta_sp61:
	input:
		g7=rules.scan_sp61.input.g7,
                g9=rules.scan_sp61.input.g9,
                g15=rules.scan_sp61.input.g15,
                g16=rules.scan_sp61.input.g16,
                g17=rules.scan_sp61.input.g17,
                g18=rules.scan_sp61.input.g18,
                g24=rules.scan_sp61.input.g24,
                g28=rules.scan_sp61.input.g28,
                g35=rules.scan_sp61.input.g35,
                g38=rules.scan_sp61.input.g38,
		g7bed=rules.bed2extendedbed_sp61.output.g7,
                g9bed=rules.bed2extendedbed_sp61.output.g9,
                g15bed=rules.bed2extendedbed_sp61.output.g15,
                g16bed=rules.bed2extendedbed_sp61.output.g16,
                g17bed=rules.bed2extendedbed_sp61.output.g17,
                g18bed=rules.bed2extendedbed_sp61.output.g18,
                g24bed=rules.bed2extendedbed_sp61.output.g24,
                g28bed=rules.bed2extendedbed_sp61.output.g28,
                g35bed=rules.bed2extendedbed_sp61.output.g35,
                g38bed=rules.bed2extendedbed_sp61.output.g38,
		
	output:
		g7="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext.fa",
                g9="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext.fa",
                g15="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext.fa",
                g16="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext.fa",
                g17="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext.fa",
                g18="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext.fa",
                g24="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext.fa",
                g28="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext.fa",
                g35="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext.fa",
                g38="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext.fa",
	run:
		shell("bedtools getfasta -fi {input.g7} -bed {input.g7bed} -fo {output.g7}")
		shell("bedtools getfasta -fi {input.g9} -bed {input.g9bed} -fo {output.g9}")
		shell("bedtools getfasta -fi {input.g15} -bed {input.g15bed} -fo {output.g15}")
		shell("bedtools getfasta -fi {input.g16} -bed {input.g16bed} -fo {output.g16}")
		shell("bedtools getfasta -fi {input.g17} -bed {input.g17bed} -fo {output.g17}")
		shell("bedtools getfasta -fi {input.g18} -bed {input.g18bed} -fo {output.g18}")
		shell("bedtools getfasta -fi {input.g24} -bed {input.g24bed} -fo {output.g24}")
		shell("bedtools getfasta -fi {input.g28} -bed {input.g28bed} -fo {output.g28}")
		shell("bedtools getfasta -fi {input.g35} -bed {input.g35bed} -fo {output.g35}")
		shell("bedtools getfasta -fi {input.g38} -bed {input.g38bed} -fo {output.g38}")

rule augppx_pred_sp61:
        input:
                aprl=rules.build_prfl.output.a,
                bprl=rules.build_prfl.output.b,
                cprl=rules.build_prfl.output.c,
                dprl=rules.build_prfl.output.d,
                eprl=rules.build_prfl.output.e,
                pprl=rules.build_prfl.output.p,
                cfg="/gpfs/gsfs11/users/cisseoh/gasdermins/src/tools/ppx.cfg",
		g7=rules.bed2fasta_sp61.output.g7,
		g9=rules.bed2fasta_sp61.output.g9,
                g15=rules.bed2fasta_sp61.output.g15,
                g16=rules.bed2fasta_sp61.output.g16,
                g17=rules.bed2fasta_sp61.output.g17,
                g18=rules.bed2fasta_sp61.output.g18,
                g24=rules.bed2fasta_sp61.output.g24,
                g28=rules.bed2fasta_sp61.output.g28,
                g35=rules.bed2fasta_sp61.output.g35,
                g38=rules.bed2fasta_sp61.output.g38,
		
	output:
		g7a="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasA.gff",
		g7b="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasB.gff",
		g7c="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasC.gff",
		g7d="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasD.gff",
		g7e="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasE.gff",
		g7p="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasP.gff",
		
                g9a="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasA.gff",
		g9b="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasB.gff",
		g9c="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasC.gff",
		g9d="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasD.gff",
		g9e="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasE.gff",
		g9p="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasP.gff",
		

                g15a="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasA.gff",
		g15b="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasB.gff",
		g15c="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasC.gff",
		g15d="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasD.gff",
		g15e="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasE.gff",
		g15p="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasP.gff",	
		
                g16a="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasA.gff",
		g16b="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasB.gff",
		g16c="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasC.gff",
		g16d="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasD.gff",
		g16e="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasE.gff",
		g16p="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasP.gff",

                g17a="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasA.gff",
		g17b="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasB.gff",
		g17c="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasC.gff",
		g17d="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasD.gff",
		g17e="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasE.gff",
		g17p="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasP.gff",

                g18a="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasA.gff",
		g18b="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasB.gff",
		g18c="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasC.gff",
		g18d="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasD.gff",
		g18e="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasE.gff",
		g18p="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasP.gff",

                g24a="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasA.gff",
		g24b="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasB.gff",
		g24c="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasC.gff",
		g24d="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasD.gff",
		g24e="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasE.gff",
		g24p="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasP.gff",

                g28a="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasA.gff",
		g28b="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasB.gff",
		g28c="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasC.gff",
		g28d="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasD.gff",
		g28e="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasE.gff",
		g28p="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasP.gff",
		
                g35a="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasA.gff",
		g35b="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasB.gff",
		g35c="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasC.gff",
		g35d="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasD.gff",
		g35e="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasE.gff",
		g35p="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasP.gff",
                
		g38a="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasA.gff",
		g38b="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasB.gff",
		g38c="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasC.gff",
		g38d="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasD.gff",
		g38e="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasE.gff",
		g38p="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasP.gff",
		
	run:
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g7} > {output.g7a}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g7} > {output.g7b}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g7} > {output.g7c}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g7} > {output.g7d}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g7} > {output.g7e}")
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g7} > {output.g7p}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7a}  --seqfile={input.g7}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7b}  --seqfile={input.g7}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7c}  --seqfile={input.g7}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7d}  --seqfile={input.g7}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7e}  --seqfile={input.g7}")
		shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g7p}  --seqfile={input.g7}")
		
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g9} > {output.g9a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g9} > {output.g9b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g9} > {output.g9c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g9} > {output.g9d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g9} > {output.g9e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g9} > {output.g9p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9a}  --seqfile={input.g9}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9b}  --seqfile={input.g9}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9c}  --seqfile={input.g9}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9d}  --seqfile={input.g9}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9e}  --seqfile={input.g9}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g9p}  --seqfile={input.g9}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g15} > {output.g15a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g15} > {output.g15b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g15} > {output.g15c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g15} > {output.g15d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g15} > {output.g15e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g15} > {output.g15p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g15a}  --seqfile={input.g15}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g15b}  --seqfile={input.g15}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g15c}  --seqfile={input.g15}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g15d}  --seqfile={input.g15}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g15e}  --seqfile={input.g15}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g15p}  --seqfile={input.g15}")	
	
		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g16} > {output.g16a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g16} > {output.g16b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g16} > {output.g16c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g16} > {output.g16d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g16} > {output.g16e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g16} > {output.g16p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g16a}  --seqfile={input.g16}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g16b}  --seqfile={input.g16}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g16c}  --seqfile={input.g16}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g16d}  --seqfile={input.g16}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g16e}  --seqfile={input.g16}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g16p}  --seqfile={input.g16}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g17} > {output.g17a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g17} > {output.g17b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g17} > {output.g17c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g17} > {output.g17d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g17} > {output.g17e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g17} > {output.g17p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g17a}  --seqfile={input.g17}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g17b}  --seqfile={input.g17}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g17c}  --seqfile={input.g17}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g17d}  --seqfile={input.g17}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g17e}  --seqfile={input.g17}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g17p}  --seqfile={input.g17}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g18} > {output.g18a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g18} > {output.g18b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g18} > {output.g18c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g18} > {output.g18d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g18} > {output.g18e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g18} > {output.g18p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g18a}  --seqfile={input.g18}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g18b}  --seqfile={input.g18}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g18c}  --seqfile={input.g18}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g18d}  --seqfile={input.g18}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g18e}  --seqfile={input.g18}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g18p}  --seqfile={input.g18}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g24} > {output.g24a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g24} > {output.g24b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g24} > {output.g24c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g24} > {output.g24d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g24} > {output.g24e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g24} > {output.g24p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g24a}  --seqfile={input.g24}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g24b}  --seqfile={input.g24}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g24c}  --seqfile={input.g24}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g24d}  --seqfile={input.g24}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g24e}  --seqfile={input.g24}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g24p}  --seqfile={input.g24}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g28} > {output.g28a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g28} > {output.g28b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g28} > {output.g28c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g28} > {output.g28d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g28} > {output.g28e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g28} > {output.g28p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g28a}  --seqfile={input.g28}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g28b}  --seqfile={input.g28}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g28c}  --seqfile={input.g28}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g28d}  --seqfile={input.g28}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g28e}  --seqfile={input.g28}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g28p}  --seqfile={input.g28}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g35} > {output.g35a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g35} > {output.g35b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g35} > {output.g35c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g35} > {output.g35d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g35} > {output.g35e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g35} > {output.g35p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g35a}  --seqfile={input.g35}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g35b}  --seqfile={input.g35}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g35c}  --seqfile={input.g35}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g35d}  --seqfile={input.g35}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g35e}  --seqfile={input.g35}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g35p}  --seqfile={input.g35}")

		shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.aprl} {input.g38} > {output.g38a}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.bprl} {input.g38} > {output.g38b}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.cprl} {input.g38} > {output.g38c}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.dprl} {input.g38} > {output.g38d}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.eprl} {input.g38} > {output.g38e}")
                shell("/usr/local/apps/busco/Augustus/bin/augustus --optCfgFile={input.cfg} --proteinprofile={input.pprl} {input.g38} > {output.g38p}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g38a}  --seqfile={input.g38}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g38b}  --seqfile={input.g38}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g38c}  --seqfile={input.g38}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g38d}  --seqfile={input.g38}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g38e}  --seqfile={input.g38}")
                shell("/usr/local/apps/busco/Augustus/scripts/getAnnoFasta.pl {output.g38p}  --seqfile={input.g38}")

rule insert_id_sp61:
	input:
		g7a="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasA.aa",
                g7b="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasB.aa",
                g7c="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasC.aa",
                g7d="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasD.aa",
                g7e="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasE.aa",
                g7p="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasP.aa",

                g9a="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasA.aa",
                g9b="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasB.aa",
                g9c="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasC.aa",
                g9d="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasD.aa",
                g9e="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasE.aa",
                g9p="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasP.aa",

                g15a="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasA.aa",
                g15b="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasB.aa",
                g15c="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasC.aa",
                g15d="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasD.aa",
                g15e="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasE.aa",
                g15p="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasP.aa",

                g16a="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasA.aa",
                g16b="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasB.aa",
                g16c="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasC.aa",
                g16d="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasD.aa",
                g16e="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasE.aa",
                g16p="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasP.aa",

		g17a="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasA.aa",
                g17b="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasB.aa",
                g17c="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasC.aa",
                g17d="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasD.aa",
                g17e="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasE.aa",
                g17p="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasP.aa",

                g18a="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasA.aa",
                g18b="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasB.aa",
                g18c="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasC.aa",
                g18d="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasD.aa",
                g18e="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasE.aa",
                g18p="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasP.aa",

                g24a="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasA.aa",
                g24b="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasB.aa",
                g24c="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasC.aa",
                g24d="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasD.aa",
                g24e="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasE.aa",
                g24p="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasP.aa",

                g28a="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasA.aa",
                g28b="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasB.aa",
                g28c="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasC.aa",
                g28d="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasD.aa",
                g28e="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasE.aa",
                g28p="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasP.aa",

                g35a="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasA.aa",
                g35b="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasB.aa",
                g35c="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasC.aa",
                g35d="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasD.aa",
                g35e="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasE.aa",
                g35p="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasP.aa",

		g38a="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasA.aa",
                g38b="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasB.aa",
                g38c="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasC.aa",
                g38d="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasD.aa",
                g38e="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasE.aa",
                g38p="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasP.aa",
	output:
		g7a="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasA_tag.aa",
                g7b="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasB_tag.aa",
                g7c="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasC_tag.aa",
                g7d="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasD_tag.aa",
                g7e="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasE_tag.aa",
                g7p="../../data/processed/searches/SP61/data/GCA_003991215.1/GCA_003991215.1_MVIv1_genomic_ext_gasP_tag.aa",

                g9a="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasA_tag.aa",
                g9b="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasB_tag.aa",
                g9c="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasC_tag.aa",
                g9d="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasD_tag.aa",
                g9e="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasE_tag.aa",
                g9p="../../data/processed/searches/SP61/data/GCA_009858155.1/GCA_009858155.1_ASM985815v1_genomic_ext_gasP_tag.aa",

                g15a="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasA_tag.aa",
                g15b="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasB_tag.aa",
                g15c="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasC_tag.aa",
                g15d="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasD_tag.aa",
                g15e="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasE_tag.aa",
                g15p="../../data/processed/searches/SP61/data/GCA_011763395.1/GCA_011763395.1_ASM1176339v1_genomic_ext_gasP_tag.aa",

                g16a="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasA_tag.aa",
                g16b="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasB_tag.aa",
                g16c="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasC_tag.aa",
                g16d="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasD_tag.aa",
                g16e="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasE_tag.aa",
                g16p="../../data/processed/searches/SP61/data/GCA_013076295.1/GCA_013076295.1_ASM1307629v1_genomic_ext_gasP_tag.aa",
	
		g17a="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasA_tag.aa",
                g17b="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasB_tag.aa",
                g17c="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasC_tag.aa",
                g17d="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasD_tag.aa",
                g17e="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasE_tag.aa",
                g17p="../../data/processed/searches/SP61/data/GCA_013076305.1/GCA_013076305.1_ASM1307630v1_genomic_ext_gasP_tag.aa",

                g18a="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasA_tag.aa",
                g18b="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasB_tag.aa",
                g18c="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasC_tag.aa",
                g18d="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasD_tag.aa",
                g18e="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasE_tag.aa",
                g18p="../../data/processed/searches/SP61/data/GCA_014633975.1/GCA_014633975.1_Aacu_1.0_genomic_ext_gasP_tag.aa",

                g24a="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasA_tag.aa",
                g24b="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasB_tag.aa",
                g24c="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasC_tag.aa",
                g24d="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasD_tag.aa",
                g24e="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasE_tag.aa",
                g24p="../../data/processed/searches/SP61/data/GCA_015164035.1/GCA_015164035.1_ASM1516403v1_genomic_ext_gasP_tag.aa",

                g28a="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasA_tag.aa",
                g28b="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasB_tag.aa",
                g28c="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasC_tag.aa",
                g28d="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasD_tag.aa",
                g28e="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasE_tag.aa",
                g28p="../../data/processed/searches/SP61/data/GCA_018155075.1/GCA_018155075.1_ASM1815507v1_genomic_ext_gasP_tag.aa",

                g35a="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasA_tag.aa",
                g35b="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasB_tag.aa",
                g35c="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasC_tag.aa",
                g35d="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasD_tag.aa",
                g35e="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasE_tag.aa",
                g35p="../../data/processed/searches/SP61/data/GCA_916610825.1/all_seq_ext_gasP_tag.aa",

		g38a="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasA_tag.aa",
                g38b="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasB_tag.aa",
                g38c="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasC_tag.aa",
                g38d="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasD_tag.aa",
                g38e="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasE_tag.aa",
                g38p="../../data/processed/searches/SP61/data/GCF_001417965.1/GCF_001417965.1_Aiptasia_genome_1.1_genomic_ext_gasP_tag.aa",
	params: "sp61"
	run:
		                
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7a} --tag {params} > {output.g7a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9a} --tag {params} > {output.g9a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g15a} --tag {params} > {output.g15a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g16a} --tag {params} > {output.g16a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g17a} --tag {params} > {output.g17a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g18a} --tag {params} > {output.g18a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g24a} --tag {params} > {output.g24a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g28a} --tag {params} > {output.g28a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g35a} --tag {params} > {output.g35a}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g38a} --tag {params} > {output.g38a}")

                shell("perl ../scripts/insert_tag.pl --fasta {input.g7b} --tag {params} > {output.g7b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9b} --tag {params} > {output.g9b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g15b} --tag {params} > {output.g15b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g16b} --tag {params} > {output.g16b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g17b} --tag {params} > {output.g17b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g18b} --tag {params} > {output.g18b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g24b} --tag {params} > {output.g24b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g28b} --tag {params} > {output.g28b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g35b} --tag {params} > {output.g35b}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g38b} --tag {params} > {output.g38b}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g7c} --tag {params} > {output.g7c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9c} --tag {params} > {output.g9c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g15c} --tag {params} > {output.g15c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g16c} --tag {params} > {output.g16c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g17c} --tag {params} > {output.g17c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g18c} --tag {params} > {output.g18c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g24c} --tag {params} > {output.g24c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g28c} --tag {params} > {output.g28c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g35c} --tag {params} > {output.g35c}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g38c} --tag {params} > {output.g38c}")

                shell("perl ../scripts/insert_tag.pl --fasta {input.g7d} --tag {params} > {output.g7d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9d} --tag {params} > {output.g9d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g15d} --tag {params} > {output.g15d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g16d} --tag {params} > {output.g16d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g17d} --tag {params} > {output.g17d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g18d} --tag {params} > {output.g18d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g24d} --tag {params} > {output.g24d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g28d} --tag {params} > {output.g28d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g35d} --tag {params} > {output.g35d}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g38d} --tag {params} > {output.g38d}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g7e} --tag {params} > {output.g7e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9e} --tag {params} > {output.g9e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g15e} --tag {params} > {output.g15e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g16e} --tag {params} > {output.g16e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g17e} --tag {params} > {output.g17e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g18e} --tag {params} > {output.g18e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g24e} --tag {params} > {output.g24e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g28e} --tag {params} > {output.g28e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g35e} --tag {params} > {output.g35e}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g38e} --tag {params} > {output.g38e}")

                shell("perl ../scripts/insert_tag.pl --fasta {input.g7p} --tag {params} > {output.g7p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g9p} --tag {params} > {output.g9p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g15p} --tag {params} > {output.g15p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g16p} --tag {params} > {output.g16p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g17p} --tag {params} > {output.g17p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g18p} --tag {params} > {output.g18p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g24p} --tag {params} > {output.g24p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g28p} --tag {params} > {output.g28p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g35p} --tag {params} > {output.g35p}")
                shell("perl ../scripts/insert_tag.pl --fasta {input.g38p} --tag {params} > {output.g38p}")

rule merge_sp61:
	input:
		g7a=rules.insert_id_sp61.output.g7a,
               	g7b=rules.insert_id_sp61.output.g7b,
               	g7c=rules.insert_id_sp61.output.g7c,
               	g7d=rules.insert_id_sp61.output.g7d,
               	g7e=rules.insert_id_sp61.output.g7e,
               	g7p=rules.insert_id_sp61.output.g7p,
	
		g9a=rules.insert_id_sp61.output.g9a,
		g9b=rules.insert_id_sp61.output.g9b,
               	g9c=rules.insert_id_sp61.output.g9c,
               	g9d=rules.insert_id_sp61.output.g9d,
               	g9e=rules.insert_id_sp61.output.g9e,
               	g9p=rules.insert_id_sp61.output.g9p,

               	g15a=rules.insert_id_sp61.output.g15a,
               	g15b=rules.insert_id_sp61.output.g15b,
               	g15c=rules.insert_id_sp61.output.g15c,
               	g15d=rules.insert_id_sp61.output.g15d,
               	g15e=rules.insert_id_sp61.output.g15e,
               	g15p=rules.insert_id_sp61.output.g15p,

		g16a=rules.insert_id_sp61.output.g16a,
               	g16b=rules.insert_id_sp61.output.g16b,
               	g16c=rules.insert_id_sp61.output.g16c,
               	g16d=rules.insert_id_sp61.output.g16d,
               	g16e=rules.insert_id_sp61.output.g16e,
               	g16p=rules.insert_id_sp61.output.g16p,

		g17a=rules.insert_id_sp61.output.g17a,
               	g17b=rules.insert_id_sp61.output.g17b,
               	g17c=rules.insert_id_sp61.output.g17c,
               	g17d=rules.insert_id_sp61.output.g17d,
               	g17e=rules.insert_id_sp61.output.g17e,
               	g17p=rules.insert_id_sp61.output.g17p,
		
		g18a=rules.insert_id_sp61.output.g18a,
               	g18b=rules.insert_id_sp61.output.g18b,
               	g18c=rules.insert_id_sp61.output.g18c,
               	g18d=rules.insert_id_sp61.output.g18d,
               	g18e=rules.insert_id_sp61.output.g18e,
               	g18p=rules.insert_id_sp61.output.g18p,
		
		g24a=rules.insert_id_sp61.output.g24a,
               	g24b=rules.insert_id_sp61.output.g24b,
               	g24c=rules.insert_id_sp61.output.g24c,
               	g24d=rules.insert_id_sp61.output.g24d,
               	g24e=rules.insert_id_sp61.output.g24e,
               	g24p=rules.insert_id_sp61.output.g24p,

		g28a=rules.insert_id_sp61.output.g28a,
               	g28b=rules.insert_id_sp61.output.g28b,
               	g28c=rules.insert_id_sp61.output.g28c,
               	g28d=rules.insert_id_sp61.output.g28d,
               	g28e=rules.insert_id_sp61.output.g28e,
		g28p=rules.insert_id_sp61.output.g28p,
	
		g35a=rules.insert_id_sp61.output.g35a,
               	g35b=rules.insert_id_sp61.output.g35b,
               	g35c=rules.insert_id_sp61.output.g35c,
               	g35d=rules.insert_id_sp61.output.g35d,
               	g35e=rules.insert_id_sp61.output.g35e,
               	g35p=rules.insert_id_sp61.output.g35p,

		g38a=rules.insert_id_sp61.output.g38a,
               	g38b=rules.insert_id_sp61.output.g38b,
               	g38c=rules.insert_id_sp61.output.g38c,
               	g38d=rules.insert_id_sp61.output.g38d,
               	g38e=rules.insert_id_sp61.output.g38e,
               	g38p=rules.insert_id_sp61.output.g38p,

	output:
		"../../data/processed/searches/SP61/sp31_allpreds.faa"
	shell:
		"cat {input.g7a}  {input.g7b}  {input.g7c} {input.g7d} {input.g7e} {input.g7p}"
		" {input.g9a} {input.g9b} {input.g9c} {input.g9d} {input.g9e} {input.g9p}"
		" {input.g15a} {input.g15b} {input.g15c} {input.g15d} {input.g15e} {input.g15p}"
		" {input.g16a} {input.g16b} {input.g16c} {input.g16d} {input.g16e} {input.g16p}"
		" {input.g17a} {input.g17b} {input.g17c} {input.g17d} {input.g17e} {input.g17p}"
		" {input.g18a} {input.g18b} {input.g18c} {input.g18d} {input.g18e} {input.g18p}"
		" {input.g24a} {input.g24b} {input.g24c} {input.g24d} {input.g24e} {input.g24p}"
		" {input.g28a} {input.g28b} {input.g28c} {input.g28d} {input.g28e} {input.g28p}"
		" {input.g35a} {input.g35b} {input.g35c} {input.g35d} {input.g35e} {input.g35p}"
		" {input.g38a} {input.g38b} {input.g38c} {input.g38d} {input.g38e} {input.g38p}"
		" > {output}"
# module load cd-hit

rule cluster_sp61:
	input:
		rules.merge_sp61.output
	threads: 3
	output:
		"../../data/processed/searches/SP61/sp31_allpreds.clt.faa"
	shell:
		"cd-hit -i {input} -o {output} -T {threads}"
