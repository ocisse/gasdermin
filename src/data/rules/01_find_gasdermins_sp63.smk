##
include: "../utils/build_hmm.smk"

# annotations already avail
rule scan_sp63:
	input:
#		g1="../../data/external/ncbi/SP63/GCF_000239375.1_PunNye1.0_genomic.fna",
		g1="../../data/external/ncbi/SP63/GCF_000239375.1/protein.faa",
#		g2="../../data/external/ncbi/SP63/GCF_001266775.1_Austrofundulus_limnaeus-1.0_genomic.fna",
		g2="../../data/external/ncbi/SP63/GCF_001266775.1/protein.faa",
#		g3="../../data/external/ncbi/SP63/GCF_001515605.1_SAMN03320099.WGS_v1.1_genomic.fna", # Sinocyclocheilus anshuiensis 
		g3="../../data/external/ncbi/SP63/GCF_001515605.1/protein.faa",
#		g4="../../data/external/ncbi/SP63/GCF_001515625.1_SAMN03320098_v1.1_genomic.fna",
		g4="../../data/external/ncbi/SP63/GCF_001515625.1/protein.faa",
#		g5="../../data/external/ncbi/SP63/GCF_001515645.1_SAMN03320097.WGS_v1.1_genomic.fna",
		g5="../../data/external/ncbi/SP63/GCF_001515645.1/protein.faa",
#		g6="../../data/external/ncbi/SP63/GCF_002872115.1_PKINGS_0.1_genomic.fna",
		g6="../../data/external/ncbi/SP63/GCF_002872115.1/protein.faa",
#		g7="../../data/external/ncbi/SP63/GCF_002910315.2_ASM291031v2_genomic.fna",
		g7="../../data/external/ncbi/SP63/GCF_002910315.2/protein.faa",
#		g8="../../data/external/ncbi/SP63/GCF_009829125.1_fPerMag1.pri_genomic.fna",
		g8="../../data/external/ncbi/SP63/GCF_009829125.1/protein.faa",
#		g9="../../data/external/ncbi/SP63/GCF_016077235.1_ASM1607723v1_genomic.fna",
		g9="../../data/external/ncbi/SP63/GCF_016077235.1/protein.faa",
#		g10="../../data/external/ncbi/SP63/GCF_900408965.1_fSimDia1.1_genomic.fna",
		g10="../../data/external/ncbi/SP63/GCF_900408965.1/protein.faa",
#		g11="../../data/external/ncbi/SP63/GCF_900634415.1_fCotGob3.1_genomic.fna",
		g11="../../data/external/ncbi/SP63/GCF_900634415.1/protein.faa",
#		g12="../../data/external/ncbi/SP63/GCF_902500255.1_fThaAma1.1_genomic.fna",
		g12="../../data/external/ncbi/SP63/GCF_902500255.1/protein.faa",
#		g13="../../data/external/ncbi/SP63/GCF_902827175.1_fGymAcu1.1_genomic.fna",
		g13="../../data/external/ncbi/SP63/GCF_902827175.1/protein.faa",
 		gasAseed=rules.build_hmm.output.ahmm,
 		gasBseed=rules.build_hmm.output.bhmm,
 		gasCseed=rules.build_hmm.output.chmm,
		gasDseed=rules.build_hmm.output.dhmm,
		gasEseed=rules.build_hmm.output.ehmm,
		gasPseed=rules.build_hmm.output.phmm,
	output:
 		g1a=temp("../../data/processed/searches/sp63/PunNye1_gasA.tab"),
		g1b=temp("../../data/processed/searches/sp63/PunNye1_gasB.tab"),
		g1c=temp("../../data/processed/searches/sp63/PunNye1_gasC.tab"),
		g1d=temp("../../data/processed/searches/sp63/PunNye1_gasD.tab"),
		g1e=temp("../../data/processed/searches/sp63/PunNye1_gasE.tab"),
		g1p=temp("../../data/processed/searches/sp63/PunNye1_gasP.tab"),

		g2a=temp("../../data/processed/searches/sp63/Auli_gasA.tab"),
                g2b=temp("../../data/processed/searches/sp63/Auli_gasB.tab"),
                g2c=temp("../../data/processed/searches/sp63/Auli_gasC.tab"),
                g2d=temp("../../data/processed/searches/sp63/Auli_gasD.tab"),
                g2e=temp("../../data/processed/searches/sp63/Auli_gasE.tab"),
                g2p=temp("../../data/processed/searches/sp63/Auli_gasP.tab"),

		g3a=temp("../../data/processed/searches/sp63/Sian_gasA.tab"),
                g3b=temp("../../data/processed/searches/sp63/Sian_gasB.tab"),
                g3c=temp("../../data/processed/searches/sp63/Sian_gasC.tab"),
                g3d=temp("../../data/processed/searches/sp63/Sian_gasD.tab"),
		g3e=temp("../../data/processed/searches/sp63/Sian_gasE.tab"),
                g3p=temp("../../data/processed/searches/sp63/Sian_gasP.tab"),

		g4a=temp("../../data/processed/searches/sp63/Sirh_gasA.tab"),
                g4b=temp("../../data/processed/searches/sp63/Sirh_gasB.tab"),
                g4c=temp("../../data/processed/searches/sp63/Sirh_gasC.tab"),
                g4d=temp("../../data/processed/searches/sp63/Sirh_gasD.tab"),
                g4e=temp("../../data/processed/searches/sp63/Sirh_gasE.tab"),
                g4p=temp("../../data/processed/searches/sp63/Sirh_gasP.tab"),
		
		g5a=temp("../../data/processed/searches/sp63/Sigr_gasA.tab"),
                g5b=temp("../../data/processed/searches/sp63/Sigr_gasB.tab"),
                g5c=temp("../../data/processed/searches/sp63/Sigr_gasC.tab"),
                g5d=temp("../../data/processed/searches/sp63/Sigr_gasD.tab"),
                g5e=temp("../../data/processed/searches/sp63/Sigr_gasE.tab"),
                g5p=temp("../../data/processed/searches/sp63/Sigr_gasP.tab"),

		g6a=temp("../../data/processed/searches/sp63/Pkings_gasA.tab"),
                g6b=temp("../../data/processed/searches/sp63/Pkings_gasB.tab"),
                g6c=temp("../../data/processed/searches/sp63/Pkings_gasC.tab"),
                g6d=temp("../../data/processed/searches/sp63/Pkings_gasD.tab"),
                g6e=temp("../../data/processed/searches/sp63/Pkings_gasE.tab"),
                g6p=temp("../../data/processed/searches/sp63/Pkings_gasP.tab"),

                g7a=temp("../../data/processed/searches/sp63/Saal_gasA.tab"),
                g7b=temp("../../data/processed/searches/sp63/Saal_gasB.tab"),
                g7c=temp("../../data/processed/searches/sp63/Saal_gasC.tab"),
                g7d=temp("../../data/processed/searches/sp63/Saal_gasD.tab"),
                g7e=temp("../../data/processed/searches/sp63/Saal_gasE.tab"),
                g7p=temp("../../data/processed/searches/sp63/Saal_gasP.tab"),

		g8a=temp("../../data/processed/searches/sp63/Pema_gasA.tab"),
                g8b=temp("../../data/processed/searches/sp63/Pema_gasB.tab"),
                g8c=temp("../../data/processed/searches/sp63/Pema_gasC.tab"),
                g8d=temp("../../data/processed/searches/sp63/Pema_gasD.tab"),
                g8e=temp("../../data/processed/searches/sp63/Pema_gasE.tab"),
                g8p=temp("../../data/processed/searches/sp63/Pema_gasP.tab"),

                g9a=temp("../../data/processed/searches/sp63/Cytu_gasA.tab"),
                g9b=temp("../../data/processed/searches/sp63/Cytu_gasB.tab"),
                g9c=temp("../../data/processed/searches/sp63/Cytu_gasC.tab"),
                g9d=temp("../../data/processed/searches/sp63/Cytu_gasD.tab"),
                g9e=temp("../../data/processed/searches/sp63/Cytu_gasE.tab"),
                g9p=temp("../../data/processed/searches/sp63/Cytu_gasP.tab"),

                g10a=temp("../../data/processed/searches/sp63/Sidi_gasA.tab"),
                g10b=temp("../../data/processed/searches/sp63/Sidi_gasB.tab"),
                g10c=temp("../../data/processed/searches/sp63/Sidi_gasC.tab"),
                g10d=temp("../../data/processed/searches/sp63/Sidi_gasD.tab"),
                g10e=temp("../../data/processed/searches/sp63/Sidi_gasE.tab"),
                g10p=temp("../../data/processed/searches/sp63/Sidi_gasP.tab"),		

		g11a=temp("../../data/processed/searches/sp63/Cogo_gasA.tab"),
                g11b=temp("../../data/processed/searches/sp63/Cogo_gasB.tab"),
                g11c=temp("../../data/processed/searches/sp63/Cogo_gasC.tab"),
                g11d=temp("../../data/processed/searches/sp63/Cogo_gasD.tab"),
                g11e=temp("../../data/processed/searches/sp63/Cogo_gasE.tab"),
                g11p=temp("../../data/processed/searches/sp63/Cogo_gasP.tab"),

                g12a=temp("../../data/processed/searches/sp63/fThaAma1_gasA.tab"),
                g12b=temp("../../data/processed/searches/sp63/fThaAma1_gasB.tab"),
                g12c=temp("../../data/processed/searches/sp63/fThaAma1_gasC.tab"),
                g12d=temp("../../data/processed/searches/sp63/fThaAma1_gasD.tab"),
                g12e=temp("../../data/processed/searches/sp63/fThaAma1_gasE.tab"),
                g12p=temp("../../data/processed/searches/sp63/fThaAma1_gasP.tab"),

		g13a=temp("../../data/processed/searches/sp63/fGymAcu1_gasA.tab"),
                g13b=temp("../../data/processed/searches/sp63/fGymAcu1_gasB.tab"),
                g13c=temp("../../data/processed/searches/sp63/fGymAcu1_gasC.tab"),
                g13d=temp("../../data/processed/searches/sp63/fGymAcu1_gasD.tab"),
                g13e=temp("../../data/processed/searches/sp63/fGymAcu1_gasE.tab"),
                g13p=temp("../../data/processed/searches/sp63/fGymAcu1_gasP.tab"),
	threads: 6
	params:
		e="1e-5"
	run:
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g1a} {input.gasAseed} {input.g1}")
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g1b} {input.gasBseed} {input.g1}")
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g1c} {input.gasCseed} {input.g1}")
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g1d} {input.gasDseed} {input.g1}")
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g1e} {input.gasEseed} {input.g1}")
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g1p} {input.gasPseed} {input.g1}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g2a} {input.gasAseed} {input.g2}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g2b} {input.gasBseed} {input.g2}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g2c} {input.gasCseed} {input.g2}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g2d} {input.gasDseed} {input.g2}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g2e} {input.gasEseed} {input.g2}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g2p} {input.gasPseed} {input.g2}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g3a} {input.gasAseed} {input.g3}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g3b} {input.gasBseed} {input.g3}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g3c} {input.gasCseed} {input.g3}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g3d} {input.gasDseed} {input.g3}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g3e} {input.gasEseed} {input.g3}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g3p} {input.gasPseed} {input.g3}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g4a} {input.gasAseed} {input.g4}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g4b} {input.gasBseed} {input.g4}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g4c} {input.gasCseed} {input.g4}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g4d} {input.gasDseed} {input.g4}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g4e} {input.gasEseed} {input.g4}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g4p} {input.gasPseed} {input.g4}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g5a} {input.gasAseed} {input.g5}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g5b} {input.gasBseed} {input.g5}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g5c} {input.gasCseed} {input.g5}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g5d} {input.gasDseed} {input.g5}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g5e} {input.gasEseed} {input.g5}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g5p} {input.gasPseed} {input.g5}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g6a} {input.gasAseed} {input.g6}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g6b} {input.gasBseed} {input.g6}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g6c} {input.gasCseed} {input.g6}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g6d} {input.gasDseed} {input.g6}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g6e} {input.gasEseed} {input.g6}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g6p} {input.gasPseed} {input.g6}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g7a} {input.gasAseed} {input.g7}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g7b} {input.gasBseed} {input.g7}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g7c} {input.gasCseed} {input.g7}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g7d} {input.gasDseed} {input.g7}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g7e} {input.gasEseed} {input.g7}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g7p} {input.gasPseed} {input.g7}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g8a} {input.gasAseed} {input.g8}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g8b} {input.gasBseed} {input.g8}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g8c} {input.gasCseed} {input.g8}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g8d} {input.gasDseed} {input.g8}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g8e} {input.gasEseed} {input.g8}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g8p} {input.gasPseed} {input.g8}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g9a} {input.gasAseed} {input.g9}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g9b} {input.gasBseed} {input.g9}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g9c} {input.gasCseed} {input.g9}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g9d} {input.gasDseed} {input.g9}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g9e} {input.gasEseed} {input.g9}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g9p} {input.gasPseed} {input.g9}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g10a} {input.gasAseed} {input.g10}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g10b} {input.gasBseed} {input.g10}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g10c} {input.gasCseed} {input.g10}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g10d} {input.gasDseed} {input.g10}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g10e} {input.gasEseed} {input.g10}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g10p} {input.gasPseed} {input.g10}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g11a} {input.gasAseed} {input.g11}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g11b} {input.gasBseed} {input.g11}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g11c} {input.gasCseed} {input.g11}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g11d} {input.gasDseed} {input.g11}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g11e} {input.gasEseed} {input.g11}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g11p} {input.gasPseed} {input.g11}")

		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g12a} {input.gasAseed} {input.g12}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g12b} {input.gasBseed} {input.g12}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g12c} {input.gasCseed} {input.g12}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g12d} {input.gasDseed} {input.g12}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g12e} {input.gasEseed} {input.g12}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g12p} {input.gasPseed} {input.g12}")
		                
		shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g13a} {input.gasAseed} {input.g13}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g13b} {input.gasBseed} {input.g13}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g13c} {input.gasCseed} {input.g13}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g13d} {input.gasDseed} {input.g13}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g13e} {input.gasEseed} {input.g13}")
                shell("hmmsearch --cpu {threads} -E {params.e} --tblout {output.g13p} {input.gasPseed} {input.g13}")


		
rule get_ids:
	input:
		g1a=rules.scan_sp63.output.g1a,
		g1b=rules.scan_sp63.output.g1b,
		g2a=rules.scan_sp63.output.g2a,
		g2b=rules.scan_sp63.output.g2b,
		g3a=rules.scan_sp63.output.g3a,
		g3b=rules.scan_sp63.output.g3b,
		g4a=rules.scan_sp63.output.g4a,
		g4b=rules.scan_sp63.output.g4b,
		g5a=rules.scan_sp63.output.g5a,
		g5b=rules.scan_sp63.output.g5b,
		g6a=rules.scan_sp63.output.g6a,
		g6b=rules.scan_sp63.output.g6b,
		g7a=rules.scan_sp63.output.g7a,
		g7b=rules.scan_sp63.output.g7b,
		g8a=rules.scan_sp63.output.g8a,
		g9a=rules.scan_sp63.output.g9a,
		g10a=rules.scan_sp63.output.g10a,
		g11a=rules.scan_sp63.output.g11a,
		g12a=rules.scan_sp63.output.g12a,
		g13a=rules.scan_sp63.output.g13a,
		g8b=rules.scan_sp63.output.g8b,
		g9b=rules.scan_sp63.output.g9b,
		g10b=rules.scan_sp63.output.g10b,
		g11b=rules.scan_sp63.output.g11b,
		g12b=rules.scan_sp63.output.g12b,
		g13b=rules.scan_sp63.output.g13b,
		g1c=rules.scan_sp63.output.g1c,
		g2c=rules.scan_sp63.output.g2c,
		g3c=rules.scan_sp63.output.g3c,
		g4c=rules.scan_sp63.output.g4c,
		g5c=rules.scan_sp63.output.g5c,
		g6c=rules.scan_sp63.output.g6c,
		g7c=rules.scan_sp63.output.g7c,
		g8c=rules.scan_sp63.output.g8c,
		g9c=rules.scan_sp63.output.g9c,
		g10c=rules.scan_sp63.output.g10c,
		g11c=rules.scan_sp63.output.g11c,
		g12c=rules.scan_sp63.output.g12c,
		g13c=rules.scan_sp63.output.g13c,
		g1d=rules.scan_sp63.output.g1d,
		g2d=rules.scan_sp63.output.g2d,
		g3d=rules.scan_sp63.output.g3d,
		g4d=rules.scan_sp63.output.g4d,
		g5d=rules.scan_sp63.output.g5d,
		g6d=rules.scan_sp63.output.g6d,
		g7d=rules.scan_sp63.output.g7d,
		g8d=rules.scan_sp63.output.g8d,
		g9d=rules.scan_sp63.output.g9d,
		g10d=rules.scan_sp63.output.g10d,
		g11d=rules.scan_sp63.output.g11d,
		g12d=rules.scan_sp63.output.g12d,
		g13d=rules.scan_sp63.output.g13d,
		g1e=rules.scan_sp63.output.g1e,
		g2e=rules.scan_sp63.output.g2e,
		g3e=rules.scan_sp63.output.g3e,
		g4e=rules.scan_sp63.output.g4e,
		g5e=rules.scan_sp63.output.g5e,
		g6e=rules.scan_sp63.output.g6e,
		g7e=rules.scan_sp63.output.g7e,
		g8e=rules.scan_sp63.output.g8e,
		g9e=rules.scan_sp63.output.g9e,
		g10e=rules.scan_sp63.output.g10e,
		g11e=rules.scan_sp63.output.g11e,
		g12e=rules.scan_sp63.output.g12e,
		g13e=rules.scan_sp63.output.g13e,
		g1p=rules.scan_sp63.output.g1p,
		g2p=rules.scan_sp63.output.g2p,
		g3p=rules.scan_sp63.output.g3p,
		g4p=rules.scan_sp63.output.g4p,
		g5p=rules.scan_sp63.output.g5p,
		g6p=rules.scan_sp63.output.g6p,
		g7p=rules.scan_sp63.output.g7p,
		g8p=rules.scan_sp63.output.g8p,
		g9p=rules.scan_sp63.output.g9p,
		g10p=rules.scan_sp63.output.g10p,
		g11p=rules.scan_sp63.output.g11p,
		g12p=rules.scan_sp63.output.g12p,
		g13p=rules.scan_sp63.output.g13p,

	output:
		g1a=temp("../../data/processed/searches/sp63/PunNye1_gasA.tmp"),
		g1b=temp("../../data/processed/searches/sp63/PunNye1_gasB.tmp"),
                g1c=temp("../../data/processed/searches/sp63/PunNye1_gasC.tmp"),
                g1d=temp("../../data/processed/searches/sp63/PunNye1_gasD.tmp"),
                g1e=temp("../../data/processed/searches/sp63/PunNye1_gasE.tmp"),
                g1p=temp("../../data/processed/searches/sp63/PunNye1_gasP.tmp"),

                g2a=temp("../../data/processed/searches/sp63/Auli_gasA.tmp"),
                g2b=temp("../../data/processed/searches/sp63/Auli_gasB.tmp"),
                g2c=temp("../../data/processed/searches/sp63/Auli_gasC.tmp"),
                g2d=temp("../../data/processed/searches/sp63/Auli_gasD.tmp"),
                g2e=temp("../../data/processed/searches/sp63/Auli_gasE.tmp"),
                g2p=temp("../../data/processed/searches/sp63/Auli_gasP.tmp"),

#                g3a=temp("../../data/processed/searches/sp63/Sian_gasA.tmp"),
#                g3b=temp("../../data/processed/searches/sp63/Sian_gasB.tmp"),
#                g3c=temp("../../data/processed/searches/sp63/Sian_gasC.tmp"),
#                g3d=temp("../../data/processed/searches/sp63/Sian_gasD.tmp"),
#                g3e=temp("../../data/processed/searches/sp63/Sian_gasE.tmp"),
#                g3p=temp("../../data/processed/searches/sp63/Sian_gasP.tmp"),

#                g4a=temp("../../data/processed/searches/sp63/Sirh_gasA.tmp"),
#                g4b=temp("../../data/processed/searches/sp63/Sirh_gasB.tmp"),
#                g4c=temp("../../data/processed/searches/sp63/Sirh_gasC.tmp"),
#                g4d=temp("../../data/processed/searches/sp63/Sirh_gasD.tmp"),
#                g4e=temp("../../data/processed/searches/sp63/Sirh_gasE.tmp"),
#                g4p=temp("../../data/processed/searches/sp63/Sirh_gasP.tmp"),

#                g5a=temp("../../data/processed/searches/sp63/Sigr_gasA.tmp"),
#                g5b=temp("../../data/processed/searches/sp63/Sigr_gasB.tmp"),
#                g5c=temp("../../data/processed/searches/sp63/Sigr_gasC.tmp"),
#                g5d=temp("../../data/processed/searches/sp63/Sigr_gasD.tmp"),
#                g5e=temp("../../data/processed/searches/sp63/Sigr_gasE.tmp"),
#                g5p=temp("../../data/processed/searches/sp63/Sigr_gasP.tmp"),

		g6a=temp("../../data/processed/searches/sp63/Pkings_gasA.tmp"),
                g6b=temp("../../data/processed/searches/sp63/Pkings_gasB.tmp"),
                g6c=temp("../../data/processed/searches/sp63/Pkings_gasC.tmp"),
                g6d=temp("../../data/processed/searches/sp63/Pkings_gasD.tmp"),
                g6e=temp("../../data/processed/searches/sp63/Pkings_gasE.tmp"),
                g6p=temp("../../data/processed/searches/sp63/Pkings_gasP.tmp"),

                g7a=temp("../../data/processed/searches/sp63/Saal_gasA.tmp"),
                g7b=temp("../../data/processed/searches/sp63/Saal_gasB.tmp"),
                g7c=temp("../../data/processed/searches/sp63/Saal_gasC.tmp"),
                g7d=temp("../../data/processed/searches/sp63/Saal_gasD.tmp"),
                g7e=temp("../../data/processed/searches/sp63/Saal_gasE.tmp"),
                g7p=temp("../../data/processed/searches/sp63/Saal_gasP.tmp"),

                g8a=temp("../../data/processed/searches/sp63/Pema_gasA.tmp"),
                g8b=temp("../../data/processed/searches/sp63/Pema_gasB.tmp"),
                g8c=temp("../../data/processed/searches/sp63/Pema_gasC.tmp"),
                g8d=temp("../../data/processed/searches/sp63/Pema_gasD.tmp"),
                g8e=temp("../../data/processed/searches/sp63/Pema_gasE.tmp"),
                g8p=temp("../../data/processed/searches/sp63/Pema_gasP.tmp"),

                g9a=temp("../../data/processed/searches/sp63/Cytu_gasA.tmp"),
                g9b=temp("../../data/processed/searches/sp63/Cytu_gasB.tmp"),
                g9c=temp("../../data/processed/searches/sp63/Cytu_gasC.tmp"),
                g9d=temp("../../data/processed/searches/sp63/Cytu_gasD.tmp"),
                g9e=temp("../../data/processed/searches/sp63/Cytu_gasE.tmp"),
                g9p=temp("../../data/processed/searches/sp63/Cytu_gasP.tmp"),

                g10a=temp("../../data/processed/searches/sp63/Sidi_gasA.tmp"),
                g10b=temp("../../data/processed/searches/sp63/Sidi_gasB.tmp"),
                g10c=temp("../../data/processed/searches/sp63/Sidi_gasC.tmp"),
                g10d=temp("../../data/processed/searches/sp63/Sidi_gasD.tmp"),
                g10e=temp("../../data/processed/searches/sp63/Sidi_gasE.tmp"),
                g10p=temp("../../data/processed/searches/sp63/Sidi_gasP.tmp"),

                g11a=temp("../../data/processed/searches/sp63/Cogo_gasA.tmp"),
                g11b=temp("../../data/processed/searches/sp63/Cogo_gasB.tmp"),
                g11c=temp("../../data/processed/searches/sp63/Cogo_gasC.tmp"),
                g11d=temp("../../data/processed/searches/sp63/Cogo_gasD.tmp"),
                g11e=temp("../../data/processed/searches/sp63/Cogo_gasE.tmp"),
                g11p=temp("../../data/processed/searches/sp63/Cogo_gasP.tmp"),

                g12a=temp("../../data/processed/searches/sp63/fThaAma1_gasA.tmp"),
                g12b=temp("../../data/processed/searches/sp63/fThaAma1_gasB.tmp"),
                g12c=temp("../../data/processed/searches/sp63/fThaAma1_gasC.tmp"),
                g12d=temp("../../data/processed/searches/sp63/fThaAma1_gasD.tmp"),
                g12e=temp("../../data/processed/searches/sp63/fThaAma1_gasE.tmp"),
                g12p=temp("../../data/processed/searches/sp63/fThaAma1_gasP.tmp"),

                g13a=temp("../../data/processed/searches/sp63/fGymAcu1_gasA.tmp"),
                g13b=temp("../../data/processed/searches/sp63/fGymAcu1_gasB.tmp"),
                g13c=temp("../../data/processed/searches/sp63/fGymAcu1_gasC.tmp"),
                g13d=temp("../../data/processed/searches/sp63/fGymAcu1_gasD.tmp"),
                g13e=temp("../../data/processed/searches/sp63/fGymAcu1_gasE.tmp"),
                g13p=temp("../../data/processed/searches/sp63/fGymAcu1_gasP.tmp"),

	run:
                shell("grep -v '^#' {input.g1a} | cut -f 1 -d ' ' > {output.g1a}")
                shell("grep -v '^#' {input.g1b} | cut -f 1 -d ' ' > {output.g1b}")
                shell("grep -v '^#' {input.g1c} | cut -f 1 -d ' ' > {output.g1c}")
                shell("grep -v '^#' {input.g1d} | cut -f 1 -d ' ' > {output.g1d}")
                shell("grep -v '^#' {input.g1e} | cut -f 1 -d ' ' > {output.g1e}")
                shell("grep -v '^#' {input.g1p} | cut -f 1 -d ' ' > {output.g1p}")

                shell("grep -v '^#' {input.g2a} | cut -f 1 -d ' ' > {output.g2a}")
                shell("grep -v '^#' {input.g2b} | cut -f 1 -d ' ' > {output.g2b}")
                shell("grep -v '^#' {input.g2c} | cut -f 1 -d ' ' > {output.g2c}")
                shell("grep -v '^#' {input.g2d} | cut -f 1 -d ' ' > {output.g2d}")
                shell("grep -v '^#' {input.g2e} | cut -f 1 -d ' ' > {output.g2e}")
                shell("grep -v '^#' {input.g2p} | cut -f 1 -d ' ' > {output.g2p}")

                #shell("grep -v '^#' {input.g3a} | cut -f 1 -d ' ' > {output.g3a}")
#                shell("grep -v '^#' {input.g3b} | cut -f 1 -d ' ' > {output.g3b}")
#                shell("grep -v '^#' {input.g3c} | cut -f 1 -d ' ' > {output.g3c}")
#                shell("grep -v '^#' {input.g3d} | cut -f 1 -d ' ' > {output.g3d}")
#                shell("grep -v '^#' {input.g3e} | cut -f 1 -d ' ' > {output.g3e}")
#                shell("grep -v '^#' {input.g3p} | cut -f 1 -d ' ' > {output.g3p}")

#                shell("grep -v '^#' {input.g4a} | cut -f 1 -d ' ' > {output.g4a}")
#                shell("grep -v '^#' {input.g4b} | cut -f 1 -d ' ' > {output.g4b}")
#                shell("grep -v '^#' {input.g4c} | cut -f 1 -d ' ' > {output.g4c}")
#                shell("grep -v '^#' {input.g4d} | cut -f 1 -d ' ' > {output.g4d}")
#                shell("grep -v '^#' {input.g4e} | cut -f 1 -d ' ' > {output.g4e}")
#                shell("grep -v '^#' {input.g4p} | cut -f 1 -d ' ' > {output.g4p}")

#                shell("grep -v '^#' {input.g5a} | cut -f 1 -d ' ' > {output.g5a}")
#                shell("grep -v '^#' {input.g5b} | cut -f 1 -d ' ' > {output.g5b}")
#                shell("grep -v '^#' {input.g5c} | cut -f 1 -d ' ' > {output.g5c}")
#                shell("grep -v '^#' {input.g5d} | cut -f 1 -d ' ' > {output.g5d}")
#                shell("grep -v '^#' {input.g5e} | cut -f 1 -d ' ' > {output.g5e}")
#                shell("grep -v '^#' {input.g5p} | cut -f 1 -d ' ' > {output.g5p}")
		               
		shell("grep -v '^#' {input.g6a} | cut -f 1 -d ' ' > {output.g6a}")
                shell("grep -v '^#' {input.g6b} | cut -f 1 -d ' ' > {output.g6b}")
                shell("grep -v '^#' {input.g6c} | cut -f 1 -d ' ' > {output.g6c}")
                shell("grep -v '^#' {input.g6d} | cut -f 1 -d ' ' > {output.g6d}")
                shell("grep -v '^#' {input.g6e} | cut -f 1 -d ' ' > {output.g6e}")
                shell("grep -v '^#' {input.g6p} | cut -f 1 -d ' ' > {output.g6p}")

                shell("grep -v '^#' {input.g7a} | cut -f 1 -d ' ' > {output.g7a}")
                shell("grep -v '^#' {input.g7b} | cut -f 1 -d ' ' > {output.g7b}")
                shell("grep -v '^#' {input.g7c} | cut -f 1 -d ' ' > {output.g7c}")
                shell("grep -v '^#' {input.g7d} | cut -f 1 -d ' ' > {output.g7d}")
                shell("grep -v '^#' {input.g7e} | cut -f 1 -d ' ' > {output.g7e}")
                shell("grep -v '^#' {input.g7p} | cut -f 1 -d ' ' > {output.g7p}")

                shell("grep -v '^#' {input.g8a} | cut -f 1 -d ' ' > {output.g8a}")
                shell("grep -v '^#' {input.g8b} | cut -f 1 -d ' ' > {output.g8b}")
                shell("grep -v '^#' {input.g8c} | cut -f 1 -d ' ' > {output.g8c}")
                shell("grep -v '^#' {input.g8d} | cut -f 1 -d ' ' > {output.g8d}")
                shell("grep -v '^#' {input.g8e} | cut -f 1 -d ' ' > {output.g8e}")
                shell("grep -v '^#' {input.g8p} | cut -f 1 -d ' ' > {output.g8p}")

                shell("grep -v '^#' {input.g9a} | cut -f 1 -d ' ' > {output.g9a}")
                shell("grep -v '^#' {input.g9b} | cut -f 1 -d ' ' > {output.g9b}")
                shell("grep -v '^#' {input.g9c} | cut -f 1 -d ' ' > {output.g9c}")
                shell("grep -v '^#' {input.g9d} | cut -f 1 -d ' ' > {output.g9d}")
                shell("grep -v '^#' {input.g9e} | cut -f 1 -d ' ' > {output.g9e}")
                shell("grep -v '^#' {input.g9p} | cut -f 1 -d ' ' > {output.g9p}")

                shell("grep -v '^#' {input.g10a} | cut -f 1 -d ' ' > {output.g10a}")
                shell("grep -v '^#' {input.g10b} | cut -f 1 -d ' ' > {output.g10b}")
                shell("grep -v '^#' {input.g10c} | cut -f 1 -d ' ' > {output.g10c}")
                shell("grep -v '^#' {input.g10d} | cut -f 1 -d ' ' > {output.g10d}")
                shell("grep -v '^#' {input.g10e} | cut -f 1 -d ' ' > {output.g10e}")
                shell("grep -v '^#' {input.g10p} | cut -f 1 -d ' ' > {output.g10p}")

		shell("grep -v '^#' {input.g11a} | cut -f 1 -d ' ' > {output.g11a}")
                shell("grep -v '^#' {input.g11b} | cut -f 1 -d ' ' > {output.g11b}")
                shell("grep -v '^#' {input.g11c} | cut -f 1 -d ' ' > {output.g11c}")
                shell("grep -v '^#' {input.g11d} | cut -f 1 -d ' ' > {output.g11d}")
                shell("grep -v '^#' {input.g11e} | cut -f 1 -d ' ' > {output.g11e}")
                shell("grep -v '^#' {input.g11p} | cut -f 1 -d ' ' > {output.g11p}")

                shell("grep -v '^#' {input.g12a} | cut -f 1 -d ' ' > {output.g12a}")
                shell("grep -v '^#' {input.g12b} | cut -f 1 -d ' ' > {output.g12b}")
                shell("grep -v '^#' {input.g12c} | cut -f 1 -d ' ' > {output.g12c}")
                shell("grep -v '^#' {input.g12d} | cut -f 1 -d ' ' > {output.g12d}")
                shell("grep -v '^#' {input.g12e} | cut -f 1 -d ' ' > {output.g12e}")
                shell("grep -v '^#' {input.g12p} | cut -f 1 -d ' ' > {output.g12p}")

                shell("grep -v '^#' {input.g13a} | cut -f 1 -d ' ' > {output.g13a}")
                shell("grep -v '^#' {input.g13b} | cut -f 1 -d ' ' > {output.g13b}")
                shell("grep -v '^#' {input.g13c} | cut -f 1 -d ' ' > {output.g13c}")
                shell("grep -v '^#' {input.g13d} | cut -f 1 -d ' ' > {output.g13d}")
                shell("grep -v '^#' {input.g13e} | cut -f 1 -d ' ' > {output.g13e}")
                shell("grep -v '^#' {input.g13p} | cut -f 1 -d ' ' > {output.g13p}")

rule get_seqs:
	input:
		gen1=rules.scan_sp63.input.g1,
		gen2=rules.scan_sp63.input.g2,
		gen3=rules.scan_sp63.input.g3,
		gen4=rules.scan_sp63.input.g4,
		gen5=rules.scan_sp63.input.g5,
		gen6=rules.scan_sp63.input.g6,
		gen7=rules.scan_sp63.input.g7,
		gen8=rules.scan_sp63.input.g8,
		gen9=rules.scan_sp63.input.g9,
		gen10=rules.scan_sp63.input.g10,
		gen11=rules.scan_sp63.input.g11,
		gen12=rules.scan_sp63.input.g12,
		gen13=rules.scan_sp63.input.g13,

		g1a=rules.get_ids.output.g1a,
		g2a=rules.get_ids.output.g2a,
#		g3a=rules.get_ids.output.g3a,
#		g4a=rules.get_ids.output.g4a,
#		g5a=rules.get_ids.output.g5a,
		g6a=rules.get_ids.output.g6a,
		g7a=rules.get_ids.output.g7a,
		g8a=rules.get_ids.output.g8a,
		g9a=rules.get_ids.output.g9a,
		g10a=rules.get_ids.output.g10a,
		g11a=rules.get_ids.output.g11a,
		g12a=rules.get_ids.output.g12a,
		g13a=rules.get_ids.output.g13a,
	
		g1b=rules.get_ids.output.g1b,
		g2b=rules.get_ids.output.g2b,
#		g3b=rules.get_ids.output.g3b,
#		g4b=rules.get_ids.output.g4b,
#		g5b=rules.get_ids.output.g5b,
		g6b=rules.get_ids.output.g6b,
		g7b=rules.get_ids.output.g7b,
		g8b=rules.get_ids.output.g8b,
		g9b=rules.get_ids.output.g9b,
		g10b=rules.get_ids.output.g10b,
		g11b=rules.get_ids.output.g11b,
		g12b=rules.get_ids.output.g12b,
		g13b=rules.get_ids.output.g13b,

		g1c=rules.get_ids.output.g1c,
		g2c=rules.get_ids.output.g2c,
#		g3c=rules.get_ids.output.g3c,
#		g4c=rules.get_ids.output.g4c,
#		g5c=rules.get_ids.output.g5c,
		g6c=rules.get_ids.output.g6c,
		g7c=rules.get_ids.output.g7c,
		g8c=rules.get_ids.output.g8c,
		g9c=rules.get_ids.output.g9c,
		g10c=rules.get_ids.output.g10c,
		g11c=rules.get_ids.output.g11c,
		g12c=rules.get_ids.output.g12c,
		g13c=rules.get_ids.output.g13c,

		g1d=rules.get_ids.output.g1d,
		g2d=rules.get_ids.output.g2d,
#		g3d=rules.get_ids.output.g3d,
#		g4d=rules.get_ids.output.g4d,
#		g5d=rules.get_ids.output.g5d,
		g6d=rules.get_ids.output.g6d,
		g7d=rules.get_ids.output.g7d,
		g8d=rules.get_ids.output.g8d,
		g9d=rules.get_ids.output.g9d,
		g10d=rules.get_ids.output.g10d,
		g11d=rules.get_ids.output.g11d,
		g12d=rules.get_ids.output.g12d,
		g13d=rules.get_ids.output.g13d,

		g1e=rules.get_ids.output.g1e,
		g2e=rules.get_ids.output.g2e,
#		g3e=rules.get_ids.output.g3e,
#		g4e=rules.get_ids.output.g4e,
#		g5e=rules.get_ids.output.g5e,
		g6e=rules.get_ids.output.g6e,
		g7e=rules.get_ids.output.g7e,
		g8e=rules.get_ids.output.g8e,
		g9e=rules.get_ids.output.g9e,
		g10e=rules.get_ids.output.g10e,
		g11e=rules.get_ids.output.g11e,
		g12e=rules.get_ids.output.g12e,
		g13e=rules.get_ids.output.g13e,

		g1p=rules.get_ids.output.g1p,
		g2p=rules.get_ids.output.g2p,
#		g3p=rules.get_ids.output.g3p,
#		g4p=rules.get_ids.output.g4p,
#		g5p=rules.get_ids.output.g5p,
		g6p=rules.get_ids.output.g6p,
		g7p=rules.get_ids.output.g7p,
		g8p=rules.get_ids.output.g8p,
		g9p=rules.get_ids.output.g9p,
		g10p=rules.get_ids.output.g10p,
		g11p=rules.get_ids.output.g11p,
		g12p=rules.get_ids.output.g12p,
		g13p=rules.get_ids.output.g13p

	output:
		g1a=temp("../../data/processed/searches/sp63/PunNye1_gasA.faa"),
		g1b=temp("../../data/processed/searches/sp63/PunNye1_gasB.faa"),
                g1c=temp("../../data/processed/searches/sp63/PunNye1_gasC.faa"),
                g1d=temp("../../data/processed/searches/sp63/PunNye1_gasD.faa"),
                g1e=temp("../../data/processed/searches/sp63/PunNye1_gasE.faa"),
                g1p=temp("../../data/processed/searches/sp63/PunNye1_gasP.faa"),

                g2a=temp("../../data/processed/searches/sp63/Auli_gasA.faa"),
                g2b=temp("../../data/processed/searches/sp63/Auli_gasB.faa"),
                g2c=temp("../../data/processed/searches/sp63/Auli_gasC.faa"),
                g2d=temp("../../data/processed/searches/sp63/Auli_gasD.faa"),
                g2e=temp("../../data/processed/searches/sp63/Auli_gasE.faa"),
                g2p=temp("../../data/processed/searches/sp63/Auli_gasP.faa"),

#                g3a="../../data/processed/searches/sp63/Sian_gasA.faa",
#                g3b="../../data/processed/searches/sp63/Sian_gasB.faa",
#                g3c="../../data/processed/searches/sp63/Sian_gasC.faa",
#                g3d="../../data/processed/searches/sp63/Sian_gasD.faa",
#                g3e="../../data/processed/searches/sp63/Sian_gasE.faa",
#                g3p="../../data/processed/searches/sp63/Sian_gasP.faa",

#                g4a="../../data/processed/searches/sp63/Sirh_gasA.faa",
#                g4b="../../data/processed/searches/sp63/Sirh_gasB.faa",
#                g4c="../../data/processed/searches/sp63/Sirh_gasC.faa",
#                g4d="../../data/processed/searches/sp63/Sirh_gasD.faa",
#                g4e="../../data/processed/searches/sp63/Sirh_gasE.faa",
#                g4p="../../data/processed/searches/sp63/Sirh_gasP.faa",

#                g5a="../../data/processed/searches/sp63/Sigr_gasA.faa",
#                g5b="../../data/processed/searches/sp63/Sigr_gasB.faa",
#                g5c="../../data/processed/searches/sp63/Sigr_gasC.faa",
#                g5d="../../data/processed/searches/sp63/Sigr_gasD.faa",
#                g5e="../../data/processed/searches/sp63/Sigr_gasE.faa",
#                g5p="../../data/processed/searches/sp63/Sigr_gasP.faa",

		g6a=temp("../../data/processed/searches/sp63/Pkings_gasA.faa"),
                g6b=temp("../../data/processed/searches/sp63/Pkings_gasB.faa"),
                g6c=temp("../../data/processed/searches/sp63/Pkings_gasC.faa"),
                g6d=temp("../../data/processed/searches/sp63/Pkings_gasD.faa"),
                g6e=temp("../../data/processed/searches/sp63/Pkings_gasE.faa"),
                g6p=temp("../../data/processed/searches/sp63/Pkings_gasP.faa"),

                g7a=temp("../../data/processed/searches/sp63/Saal_gasA.faa"),
                g7b=temp("../../data/processed/searches/sp63/Saal_gasB.faa"),
                g7c=temp("../../data/processed/searches/sp63/Saal_gasC.faa"),
                g7d=temp("../../data/processed/searches/sp63/Saal_gasD.faa"),
                g7e=temp("../../data/processed/searches/sp63/Saal_gasE.faa"),
                g7p=temp("../../data/processed/searches/sp63/Saal_gasP.faa"),

                g8a=temp("../../data/processed/searches/sp63/Pema_gasA.faa"),
                g8b=temp("../../data/processed/searches/sp63/Pema_gasB.faa"),
                g8c=temp("../../data/processed/searches/sp63/Pema_gasC.faa"),
                g8d=temp("../../data/processed/searches/sp63/Pema_gasD.faa"),
                g8e=temp("../../data/processed/searches/sp63/Pema_gasE.faa"),
                g8p=temp("../../data/processed/searches/sp63/Pema_gasP.faa"),

                g9a=temp("../../data/processed/searches/sp63/Cytu_gasA.faa"),
                g9b=temp("../../data/processed/searches/sp63/Cytu_gasB.faa"),
                g9c=temp("../../data/processed/searches/sp63/Cytu_gasC.faa"),
                g9d=temp("../../data/processed/searches/sp63/Cytu_gasD.faa"),
                g9e=temp("../../data/processed/searches/sp63/Cytu_gasE.faa"),
                g9p=temp("../../data/processed/searches/sp63/Cytu_gasP.faa"),

                g10a=temp("../../data/processed/searches/sp63/Sidi_gasA.faa"),
                g10b=temp("../../data/processed/searches/sp63/Sidi_gasB.faa"),
                g10c=temp("../../data/processed/searches/sp63/Sidi_gasC.faa"),
                g10d=temp("../../data/processed/searches/sp63/Sidi_gasD.faa"),
                g10e=temp("../../data/processed/searches/sp63/Sidi_gasE.faa"),
                g10p=temp("../../data/processed/searches/sp63/Sidi_gasP.faa"),
		
		g11a=temp("../../data/processed/searches/sp63/Cogo_gasA.faa"),
                g11b=temp("../../data/processed/searches/sp63/Cogo_gasB.faa"),
                g11c=temp("../../data/processed/searches/sp63/Cogo_gasC.faa"),
                g11d=temp("../../data/processed/searches/sp63/Cogo_gasD.faa"),
                g11e=temp("../../data/processed/searches/sp63/Cogo_gasE.faa"),
                g11p=temp("../../data/processed/searches/sp63/Cogo_gasP.faa"),

                g12a=temp("../../data/processed/searches/sp63/fThaAma1_gasA.faa"),
                g12b=temp("../../data/processed/searches/sp63/fThaAma1_gasB.faa"),
                g12c=temp("../../data/processed/searches/sp63/fThaAma1_gasC.faa"),
                g12d=temp("../../data/processed/searches/sp63/fThaAma1_gasD.faa"),
                g12e=temp("../../data/processed/searches/sp63/fThaAma1_gasE.faa"),
                g12p=temp("../../data/processed/searches/sp63/fThaAma1_gasP.faa"),

                g13a=temp("../../data/processed/searches/sp63/fGymAcu1_gasA.faa"),
                g13b=temp("../../data/processed/searches/sp63/fGymAcu1_gasB.faa"),
                g13c=temp("../../data/processed/searches/sp63/fGymAcu1_gasC.faa"),
                g13d=temp("../../data/processed/searches/sp63/fGymAcu1_gasD.faa"),
                g13e=temp("../../data/processed/searches/sp63/fGymAcu1_gasE.faa"),
                g13p=temp("../../data/processed/searches/sp63/fGymAcu1_gasP.faa"),

	run:
		shell("seqtk subseq {input.gen1} {input.g1a} > {output.g1a}")
		shell("seqtk subseq {input.gen1} {input.g1b} > {output.g1b}")
		shell("seqtk subseq {input.gen1} {input.g1c} > {output.g1c}")
		shell("seqtk subseq {input.gen1} {input.g1d} > {output.g1d}")
		shell("seqtk subseq {input.gen1} {input.g1e} > {output.g1e}")
		shell("seqtk subseq {input.gen1} {input.g1p} > {output.g1p}")

		shell("seqtk subseq {input.gen2} {input.g2a} > {output.g2a}")
                shell("seqtk subseq {input.gen2} {input.g2b} > {output.g2b}")
                shell("seqtk subseq {input.gen2} {input.g2c} > {output.g2c}")
                shell("seqtk subseq {input.gen2} {input.g2d} > {output.g2d}")
                shell("seqtk subseq {input.gen2} {input.g2e} > {output.g2e}")
                shell("seqtk subseq {input.gen2} {input.g2p} > {output.g2p}")
		
#		shell("seqtk subseq {input.gen3} {input.g3a} > {output.g3a}")
#                shell("seqtk subseq {input.gen3} {input.g3b} > {output.g3b}")
#                shell("seqtk subseq {input.gen3} {input.g3c} > {output.g3c}")
#                shell("seqtk subseq {input.gen3} {input.g3d} > {output.g3d}")
#                shell("seqtk subseq {input.gen3} {input.g3e} > {output.g3e}")
#                shell("seqtk subseq {input.gen3} {input.g3p} > {output.g3p}")
		
#		shell("seqtk subseq {input.gen4} {input.g4a} > {output.g4a}")
#                shell("seqtk subseq {input.gen4} {input.g4b} > {output.g4b}")
#                shell("seqtk subseq {input.gen4} {input.g4c} > {output.g4c}")
#                shell("seqtk subseq {input.gen4} {input.g4d} > {output.g4d}")
#                shell("seqtk subseq {input.gen4} {input.g4e} > {output.g4e}")
#                shell("seqtk subseq {input.gen4} {input.g4p} > {output.g4p}")

#		shell("seqtk subseq {input.gen5} {input.g5a} > {output.g5a}")
#                shell("seqtk subseq {input.gen5} {input.g5b} > {output.g5b}")
#                shell("seqtk subseq {input.gen5} {input.g5c} > {output.g5c}")
#                shell("seqtk subseq {input.gen5} {input.g5d} > {output.g5d}")
#                shell("seqtk subseq {input.gen5} {input.g5e} > {output.g5e}")
#                shell("seqtk subseq {input.gen5} {input.g5p} > {output.g5p}")

		shell("seqtk subseq {input.gen6} {input.g6a} > {output.g6a}")
                shell("seqtk subseq {input.gen6} {input.g6b} > {output.g6b}")
                shell("seqtk subseq {input.gen6} {input.g6c} > {output.g6c}")
                shell("seqtk subseq {input.gen6} {input.g6d} > {output.g6d}")
                shell("seqtk subseq {input.gen6} {input.g6e} > {output.g6e}")
                shell("seqtk subseq {input.gen6} {input.g6p} > {output.g6p}")
	                
		shell("seqtk subseq {input.gen7} {input.g7a} > {output.g7a}")
                shell("seqtk subseq {input.gen7} {input.g7b} > {output.g7b}")
                shell("seqtk subseq {input.gen7} {input.g7c} > {output.g7c}")
                shell("seqtk subseq {input.gen7} {input.g7d} > {output.g7d}")
                shell("seqtk subseq {input.gen7} {input.g7e} > {output.g7e}")
                shell("seqtk subseq {input.gen7} {input.g7p} > {output.g7p}")

                shell("seqtk subseq {input.gen8} {input.g8a} > {output.g8a}")
                shell("seqtk subseq {input.gen8} {input.g8b} > {output.g8b}")
                shell("seqtk subseq {input.gen8} {input.g8c} > {output.g8c}")
                shell("seqtk subseq {input.gen8} {input.g8d} > {output.g8d}")
                shell("seqtk subseq {input.gen8} {input.g8e} > {output.g8e}")
                shell("seqtk subseq {input.gen8} {input.g8p} > {output.g8p}")

		shell("seqtk subseq {input.gen9} {input.g9a} > {output.g9a}")
                shell("seqtk subseq {input.gen9} {input.g9b} > {output.g9b}")
                shell("seqtk subseq {input.gen9} {input.g9c} > {output.g9c}")
                shell("seqtk subseq {input.gen9} {input.g9d} > {output.g9d}")
                shell("seqtk subseq {input.gen9} {input.g9e} > {output.g9e}")
                shell("seqtk subseq {input.gen9} {input.g9p} > {output.g9p}")

		shell("seqtk subseq {input.gen10} {input.g10a} > {output.g10a}")
                shell("seqtk subseq {input.gen10} {input.g10b} > {output.g10b}")
                shell("seqtk subseq {input.gen10} {input.g10c} > {output.g10c}")
                shell("seqtk subseq {input.gen10} {input.g10d} > {output.g10d}")
                shell("seqtk subseq {input.gen10} {input.g10e} > {output.g10e}")
                shell("seqtk subseq {input.gen10} {input.g10p} > {output.g10p}")

		shell("seqtk subseq {input.gen11} {input.g11a} > {output.g11a}")
                shell("seqtk subseq {input.gen11} {input.g11b} > {output.g11b}")
                shell("seqtk subseq {input.gen11} {input.g11c} > {output.g11c}")
                shell("seqtk subseq {input.gen11} {input.g11d} > {output.g11d}")
                shell("seqtk subseq {input.gen11} {input.g11e} > {output.g11e}")
                shell("seqtk subseq {input.gen11} {input.g11p} > {output.g11p}")

		shell("seqtk subseq {input.gen12} {input.g12a} > {output.g12a}")
                shell("seqtk subseq {input.gen12} {input.g12b} > {output.g12b}")
                shell("seqtk subseq {input.gen12} {input.g12c} > {output.g12c}")
                shell("seqtk subseq {input.gen12} {input.g12d} > {output.g12d}")
                shell("seqtk subseq {input.gen12} {input.g12e} > {output.g12e}")
                shell("seqtk subseq {input.gen12} {input.g12p} > {output.g12p}")

		shell("seqtk subseq {input.gen13} {input.g13a} > {output.g13a}")
                shell("seqtk subseq {input.gen13} {input.g13b} > {output.g13b}")
                shell("seqtk subseq {input.gen13} {input.g13c} > {output.g13c}")
                shell("seqtk subseq {input.gen13} {input.g13d} > {output.g13d}")
                shell("seqtk subseq {input.gen13} {input.g13e} > {output.g13e}")
                shell("seqtk subseq {input.gen13} {input.g13p} > {output.g13p}")

rule insert_id_sp63:
	input:
		g1a=rules.get_seqs.output.g1a,
                g1b=rules.get_seqs.output.g1b,
                g2a=rules.get_seqs.output.g2a,
                g2b=rules.get_seqs.output.g2b,
#                g3a=rules.get_seqs.output.g3a,
#                g3b=rules.get_seqs.output.g3b,
#                g4a=rules.get_seqs.output.g4a,
#                g4b=rules.get_seqs.output.g4b,
#                g5a=rules.get_seqs.output.g5a,
#                g5b=rules.get_seqs.output.g5b,
                g6a=rules.get_seqs.output.g6a,
                g6b=rules.get_seqs.output.g6b,
                g7a=rules.get_seqs.output.g7a,
                g7b=rules.get_seqs.output.g7b,
                g8a=rules.get_seqs.output.g8a,
                g9a=rules.get_seqs.output.g9a,
                g10a=rules.get_seqs.output.g10a,
                g11a=rules.get_seqs.output.g11a,
                g12a=rules.get_seqs.output.g12a,
                g13a=rules.get_seqs.output.g13a,
                g8b=rules.get_seqs.output.g8b,
		g9b=rules.get_seqs.output.g9b,
                g10b=rules.get_seqs.output.g10b,
                g11b=rules.get_seqs.output.g11b,
                g12b=rules.get_seqs.output.g12b,
                g13b=rules.get_seqs.output.g13b,
                g1c=rules.get_seqs.output.g1c,
                g2c=rules.get_seqs.output.g2c,
#                g3c=rules.get_seqs.output.g3c,
#                g4c=rules.get_seqs.output.g4c,
#                g5c=rules.get_seqs.output.g5c,
                g6c=rules.get_seqs.output.g6c,
                g7c=rules.get_seqs.output.g7c,
                g8c=rules.get_seqs.output.g8c,
                g9c=rules.get_seqs.output.g9c,
                g10c=rules.get_seqs.output.g10c,
                g11c=rules.get_seqs.output.g11c,
                g12c=rules.get_seqs.output.g12c,
                g13c=rules.get_seqs.output.g13c,
                g1d=rules.get_seqs.output.g1d,
                g2d=rules.get_seqs.output.g2d,
#		g3d=rules.get_seqs.output.g3d,
#                g4d=rules.get_seqs.output.g4d,
#                g5d=rules.get_seqs.output.g5d,
                g6d=rules.get_seqs.output.g6d,
                g7d=rules.get_seqs.output.g7d,
                g8d=rules.get_seqs.output.g8d,
                g9d=rules.get_seqs.output.g9d,
                g10d=rules.get_seqs.output.g10d,
		g11d=rules.get_seqs.output.g11d,
                g12d=rules.get_seqs.output.g12d,
                g13d=rules.get_seqs.output.g13d,
                g1e=rules.get_seqs.output.g1e,
                g2e=rules.get_seqs.output.g2e,
#                g3e=rules.get_seqs.output.g3e,
#                g4e=rules.get_seqs.output.g4e,
#                g5e=rules.get_seqs.output.g5e,
                g6e=rules.get_seqs.output.g6e,
                g7e=rules.get_seqs.output.g7e,
                g8e=rules.get_seqs.output.g8e,
                g9e=rules.get_seqs.output.g9e,
                g10e=rules.get_seqs.output.g10e,
                g11e=rules.get_seqs.output.g11e,
                g12e=rules.get_seqs.output.g12e,
                g13e=rules.get_seqs.output.g13e,
               	g1p=rules.get_seqs.output.g1p,
                g2p=rules.get_seqs.output.g2p,
#                g3p=rules.get_seqs.output.g3p,
#                g4p=rules.get_seqs.output.g4p,
#                g5p=rules.get_seqs.output.g5p,
                g6p=rules.get_seqs.output.g6p,
                g7p=rules.get_seqs.output.g7p,
                g8p=rules.get_seqs.output.g8p,
                g9p=rules.get_seqs.output.g9p,
                g10p=rules.get_seqs.output.g10p,
                g11p=rules.get_seqs.output.g11p,
                g12p=rules.get_seqs.output.g12p,
                g13p=rules.get_seqs.output.g13p,

	params: "sp63"

	output:
		g1a=temp("../../data/processed/searches/sp63/PunNye1_gasA_tagged.faa"),
		g1b=temp("../../data/processed/searches/sp63/PunNye1_gasB_tagged.faa"),
                g1c=temp("../../data/processed/searches/sp63/PunNye1_gasC_tagged.faa"),
                g1d=temp("../../data/processed/searches/sp63/PunNye1_gasD_tagged.faa"),
                g1e=temp("../../data/processed/searches/sp63/PunNye1_gasE_tagged.faa"),
                g1p=temp("../../data/processed/searches/sp63/PunNye1_gasP_tagged.faa"),

                g2a=temp("../../data/processed/searches/sp63/Auli_gasA_tagged.faa"),
                g2b=temp("../../data/processed/searches/sp63/Auli_gasB_tagged.faa"),
                g2c=temp("../../data/processed/searches/sp63/Auli_gasC_tagged.faa"),
                g2d=temp("../../data/processed/searches/sp63/Auli_gasD_tagged.faa"),
                g2e=temp("../../data/processed/searches/sp63/Auli_gasE_tagged.faa"),
                g2p=temp("../../data/processed/searches/sp63/Auli_gasP_tagged.faa"),

#                g3a="../../data/processed/searches/sp63/Sian_gasA_tagged.faa",
#                g3b="../../data/processed/searches/sp63/Sian_gasB_tagged.faa",
#                g3c="../../data/processed/searches/sp63/Sian_gasC_tagged.faa",
#                g3d="../../data/processed/searches/sp63/Sian_gasD_tagged.faa",
#                g3e="../../data/processed/searches/sp63/Sian_gasE_tagged.faa",
#                g3p="../../data/processed/searches/sp63/Sian_gasP_tagged.faa",

#                g4a="../../data/processed/searches/sp63/Sirh_gasA_tagged.faa",
#                g4b="../../data/processed/searches/sp63/Sirh_gasB_tagged.faa",
#                g4c="../../data/processed/searches/sp63/Sirh_gasC_tagged.faa",
#                g4d="../../data/processed/searches/sp63/Sirh_gasD_tagged.faa",
#                g4e="../../data/processed/searches/sp63/Sirh_gasE_tagged.faa",
#                g4p="../../data/processed/searches/sp63/Sirh_gasP_tagged.faa",

#                g5a="../../data/processed/searches/sp63/Sigr_gasA_tagged.faa",
#                g5b="../../data/processed/searches/sp63/Sigr_gasB_tagged.faa",
#                g5c="../../data/processed/searches/sp63/Sigr_gasC_tagged.faa",
#                g5d="../../data/processed/searches/sp63/Sigr_gasD_tagged.faa",
#                g5e="../../data/processed/searches/sp63/Sigr_gasE_tagged.faa",
#                g5p="../../data/processed/searches/sp63/Sigr_gasP_tagged.faa",

		g6a=temp("../../data/processed/searches/sp63/Pkings_gasA_tagged.faa"),
                g6b=temp("../../data/processed/searches/sp63/Pkings_gasB_tagged.faa"),
                g6c=temp("../../data/processed/searches/sp63/Pkings_gasC_tagged.faa"),
                g6d=temp("../../data/processed/searches/sp63/Pkings_gasD_tagged.faa"),
                g6e=temp("../../data/processed/searches/sp63/Pkings_gasE_tagged.faa"),
                g6p=temp("../../data/processed/searches/sp63/Pkings_gasP_tagged.faa"),

                g7a=temp("../../data/processed/searches/sp63/Saal_gasA_tagged.faa"),
                g7b=temp("../../data/processed/searches/sp63/Saal_gasB_tagged.faa"),
                g7c=temp("../../data/processed/searches/sp63/Saal_gasC_tagged.faa"),
                g7d=temp("../../data/processed/searches/sp63/Saal_gasD_tagged.faa"),
                g7e=temp("../../data/processed/searches/sp63/Saal_gasE_tagged.faa"),
                g7p=temp("../../data/processed/searches/sp63/Saal_gasP_tagged.faa"),

                g8a=temp("../../data/processed/searches/sp63/Pema_gasA_tagged.faa"),
                g8b=temp("../../data/processed/searches/sp63/Pema_gasB_tagged.faa"),
                g8c=temp("../../data/processed/searches/sp63/Pema_gasC_tagged.faa"),
                g8d=temp("../../data/processed/searches/sp63/Pema_gasD_tagged.faa"),
                g8e=temp("../../data/processed/searches/sp63/Pema_gasE_tagged.faa"),
                g8p=temp("../../data/processed/searches/sp63/Pema_gasP_tagged.faa"),

                g9a=temp("../../data/processed/searches/sp63/Cytu_gasA_tagged.faa"),
                g9b=temp("../../data/processed/searches/sp63/Cytu_gasB_tagged.faa"),
                g9c=temp("../../data/processed/searches/sp63/Cytu_gasC_tagged.faa"),
                g9d=temp("../../data/processed/searches/sp63/Cytu_gasD_tagged.faa"),
                g9e=temp("../../data/processed/searches/sp63/Cytu_gasE_tagged.faa"),
                g9p=temp("../../data/processed/searches/sp63/Cytu_gasP_tagged.faa"),

                g10a=temp("../../data/processed/searches/sp63/Sidi_gasA_tagged.faa"),
                g10b=temp("../../data/processed/searches/sp63/Sidi_gasB_tagged.faa"),
                g10c=temp("../../data/processed/searches/sp63/Sidi_gasC_tagged.faa"),
                g10d=temp("../../data/processed/searches/sp63/Sidi_gasD_tagged.faa"),
                g10e=temp("../../data/processed/searches/sp63/Sidi_gasE_tagged.faa"),
                g10p=temp("../../data/processed/searches/sp63/Sidi_gasP_tagged.faa"),

                g11a=temp("../../data/processed/searches/sp63/Cogo_gasA_tagged.faa"),
                g11b=temp("../../data/processed/searches/sp63/Cogo_gasB_tagged.faa"),
                g11c=temp("../../data/processed/searches/sp63/Cogo_gasC_tagged.faa"),
                g11d=temp("../../data/processed/searches/sp63/Cogo_gasD_tagged.faa"),
                g11e=temp("../../data/processed/searches/sp63/Cogo_gasE_tagged.faa"),
                g11p=temp("../../data/processed/searches/sp63/Cogo_gasP_tagged.faa"),

                g12a=temp("../../data/processed/searches/sp63/fThaAma1_gasA_tagged.faa"),
                g12b=temp("../../data/processed/searches/sp63/fThaAma1_gasB_tagged.faa"),
                g12c=temp("../../data/processed/searches/sp63/fThaAma1_gasC_tagged.faa"),
                g12d=temp("../../data/processed/searches/sp63/fThaAma1_gasD_tagged.faa"),
                g12e=temp("../../data/processed/searches/sp63/fThaAma1_gasE_tagged.faa"),
                g12p=temp("../../data/processed/searches/sp63/fThaAma1_gasP_tagged.faa"),

                g13a=temp("../../data/processed/searches/sp63/fGymAcu1_gasA_tagged.faa"),
                g13b=temp("../../data/processed/searches/sp63/fGymAcu1_gasB_tagged.faa"),
                g13c=temp("../../data/processed/searches/sp63/fGymAcu1_gasC_tagged.faa"),
                g13d=temp("../../data/processed/searches/sp63/fGymAcu1_gasD_tagged.faa"),
                g13e=temp("../../data/processed/searches/sp63/fGymAcu1_gasE_tagged.faa"),
                g13p=temp("../../data/processed/searches/sp63/fGymAcu1_gasP_tagged.faa"),

	run:
		shell("perl ../scripts/insert_tag.pl --fasta {input.g1a} --tag {params} > {output.g1a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2a} --tag {params} > {output.g2a}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g3a} --tag {params} > {output.g3a}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g4a} --tag {params} > {output.g4a}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g5a} --tag {params} > {output.g5a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g6a} --tag {params} > {output.g6a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7a} --tag {params} > {output.g7a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g8a} --tag {params} > {output.g8a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g9a} --tag {params} > {output.g9a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g10a} --tag {params} > {output.g10a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g11a} --tag {params} > {output.g11a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g12a} --tag {params} > {output.g12a}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g13a} --tag {params} > {output.g13a}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g1b} --tag {params} > {output.g1b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2b} --tag {params} > {output.g2b}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g3b} --tag {params} > {output.g3b}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g4b} --tag {params} > {output.g4b}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g5b} --tag {params} > {output.g5b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g6b} --tag {params} > {output.g6b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7b} --tag {params} > {output.g7b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g8b} --tag {params} > {output.g8b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g9b} --tag {params} > {output.g9b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g10b} --tag {params} > {output.g10b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g11b} --tag {params} > {output.g11b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g12b} --tag {params} > {output.g12b}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g13b} --tag {params} > {output.g13b}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g1c} --tag {params} > {output.g1c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2c} --tag {params} > {output.g2c}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g3c} --tag {params} > {output.g3c}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g4c} --tag {params} > {output.g4c}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g5c} --tag {params} > {output.g5c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g6c} --tag {params} > {output.g6c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7c} --tag {params} > {output.g7c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g8c} --tag {params} > {output.g8c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g9c} --tag {params} > {output.g9c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g10c} --tag {params} > {output.g10c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g11c} --tag {params} > {output.g11c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g12c} --tag {params} > {output.g12c}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g13c} --tag {params} > {output.g13c}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g1d} --tag {params} > {output.g1d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2d} --tag {params} > {output.g2d}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g3d} --tag {params} > {output.g3d}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g4d} --tag {params} > {output.g4d}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g5d} --tag {params} > {output.g5d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g6d} --tag {params} > {output.g6d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7d} --tag {params} > {output.g7d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g8d} --tag {params} > {output.g8d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g9d} --tag {params} > {output.g9d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g10d} --tag {params} > {output.g10d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g11d} --tag {params} > {output.g11d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g12d} --tag {params} > {output.g12d}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g13d} --tag {params} > {output.g13d}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g1e} --tag {params} > {output.g1e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2e} --tag {params} > {output.g2e}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g3e} --tag {params} > {output.g3e}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g4e} --tag {params} > {output.g4e}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g5e} --tag {params} > {output.g5e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g6e} --tag {params} > {output.g6e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7e} --tag {params} > {output.g7e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g8e} --tag {params} > {output.g8e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g9e} --tag {params} > {output.g9e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g10e} --tag {params} > {output.g10e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g11e} --tag {params} > {output.g11e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g12e} --tag {params} > {output.g12e}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g13e} --tag {params} > {output.g13e}")

		shell("perl ../scripts/insert_tag.pl --fasta {input.g1p} --tag {params} > {output.g1p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g2p} --tag {params} > {output.g2p}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g3p} --tag {params} > {output.g3p}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g4p} --tag {params} > {output.g4p}")
#		shell("perl ../scripts/insert_tag.pl --fasta {input.g5p} --tag {params} > {output.g5p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g6p} --tag {params} > {output.g6p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g7p} --tag {params} > {output.g7p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g8p} --tag {params} > {output.g8p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g9p} --tag {params} > {output.g9p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g10p} --tag {params} > {output.g10p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g11p} --tag {params} > {output.g11p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g12p} --tag {params} > {output.g12p}")
		shell("perl ../scripts/insert_tag.pl --fasta {input.g13p} --tag {params} > {output.g13p}")

rule merge_sp63:
	input:
                g1a=rules.insert_id_sp63.output.g1a,
                g1b=rules.insert_id_sp63.output.g1b,
                g2a=rules.insert_id_sp63.output.g2a,
                g2b=rules.insert_id_sp63.output.g2b,
#                g3a=rules.insert_id_sp63.output.g3a,
#                g3b=rules.insert_id_sp63.output.g3b,
#                g4a=rules.insert_id_sp63.output.g4a,
#                g4b=rules.insert_id_sp63.output.g4b,
#                g5a=rules.insert_id_sp63.output.g5a,
#                g5b=rules.insert_id_sp63.output.g5b,
                g6a=rules.insert_id_sp63.output.g6a,
                g6b=rules.insert_id_sp63.output.g6b,
                g7a=rules.insert_id_sp63.output.g7a,
                g7b=rules.insert_id_sp63.output.g7b,
                g8a=rules.insert_id_sp63.output.g8a,
                g9a=rules.insert_id_sp63.output.g9a,
                g10a=rules.insert_id_sp63.output.g10a,
                g11a=rules.insert_id_sp63.output.g11a,
                g12a=rules.insert_id_sp63.output.g12a,
                g13a=rules.insert_id_sp63.output.g13a,
                g8b=rules.insert_id_sp63.output.g8b,
		g9b=rules.insert_id_sp63.output.g9b,
                g10b=rules.insert_id_sp63.output.g10b,
                g11b=rules.insert_id_sp63.output.g11b,
                g12b=rules.insert_id_sp63.output.g12b,
                g13b=rules.insert_id_sp63.output.g13b,
                g1c=rules.insert_id_sp63.output.g1c,
                g2c=rules.insert_id_sp63.output.g2c,
#                g3c=rules.insert_id_sp63.output.g3c,
#                g4c=rules.insert_id_sp63.output.g4c,
#                g5c=rules.insert_id_sp63.output.g5c,
                g6c=rules.insert_id_sp63.output.g6c,
                g7c=rules.insert_id_sp63.output.g7c,
                g8c=rules.insert_id_sp63.output.g8c,
                g9c=rules.insert_id_sp63.output.g9c,
                g10c=rules.insert_id_sp63.output.g10c,
                g11c=rules.insert_id_sp63.output.g11c,
                g12c=rules.insert_id_sp63.output.g12c,
                g13c=rules.insert_id_sp63.output.g13c,
                g1d=rules.insert_id_sp63.output.g1d,
                g2d=rules.insert_id_sp63.output.g2d,
#		g3d=rules.insert_id_sp63.output.g3d,
#                g4d=rules.insert_id_sp63.output.g4d,
#                g5d=rules.insert_id_sp63.output.g5d,
                g6d=rules.insert_id_sp63.output.g6d,
                g7d=rules.insert_id_sp63.output.g7d,
                g8d=rules.insert_id_sp63.output.g8d,
                g9d=rules.insert_id_sp63.output.g9d,
                g10d=rules.insert_id_sp63.output.g10d,
                g11d=rules.insert_id_sp63.output.g11d,
                g12d=rules.insert_id_sp63.output.g12d,
                g13d=rules.insert_id_sp63.output.g13d,
                g1e=rules.insert_id_sp63.output.g1e,
                g2e=rules.insert_id_sp63.output.g2e,
 #               g3e=rules.insert_id_sp63.output.g3e,
 #               g4e=rules.insert_id_sp63.output.g4e,
 #               g5e=rules.insert_id_sp63.output.g5e,
                g6e=rules.insert_id_sp63.output.g6e,
                g7e=rules.insert_id_sp63.output.g7e,
                g8e=rules.insert_id_sp63.output.g8e,
                g9e=rules.insert_id_sp63.output.g9e,
                g10e=rules.insert_id_sp63.output.g10e,
                g11e=rules.insert_id_sp63.output.g11e,
                g12e=rules.insert_id_sp63.output.g12e,
                g13e=rules.insert_id_sp63.output.g13e,
               	g1p=rules.insert_id_sp63.output.g1p,
                g2p=rules.insert_id_sp63.output.g2p,
#                g3p=rules.insert_id_sp63.output.g3p,
#                g4p=rules.insert_id_sp63.output.g4p,
#                g5p=rules.insert_id_sp63.output.g5p,
                g6p=rules.insert_id_sp63.output.g6p,
                g7p=rules.insert_id_sp63.output.g7p,
                g8p=rules.insert_id_sp63.output.g8p,
                g9p=rules.insert_id_sp63.output.g9p,
                g10p=rules.insert_id_sp63.output.g10p,
                g11p=rules.insert_id_sp63.output.g11p,
                g12p=rules.insert_id_sp63.output.g12p,
                g13p=rules.insert_id_sp63.output.g13p,
	output:
		"../../data/processed/searches/sp63/sp63_allpreds.faa"	
	shell:
		"cat {input.g1a} {input.g2a} {input.g6a} {input.g7a} {input.g8a} {input.g9a} {input.g10a} {input.g11a} {input.g12a} {input.g13a}"
		"  {input.g1b} {input.g2b} {input.g6b} {input.g7b} {input.g8b} {input.g9b} {input.g10b} {input.g11b} {input.g12b} {input.g13b}"
		"  {input.g1c} {input.g2c} {input.g6c} {input.g7c} {input.g8c} {input.g9c} {input.g10c} {input.g11c} {input.g12c} {input.g13c}"
		"  {input.g1d} {input.g2d} {input.g6d} {input.g7d} {input.g8d} {input.g9d} {input.g10d} {input.g11d} {input.g12d} {input.g13d}"
		"  {input.g1e} {input.g2e} {input.g6e} {input.g7e} {input.g8e} {input.g9e} {input.g10e} {input.g11e} {input.g12e} {input.g13e}"
		"  {input.g1p} {input.g2p} {input.g6p} {input.g7p} {input.g8p} {input.g9p} {input.g10p} {input.g11p} {input.g12p} {input.g13p}"
		" > {output}"
