#
include: "01_find_gasdermins_sp31b.smk"
include: "01_find_gasdermins_sp61.smk"
include: "01_find_gasdermins_sp62.smk" 
include: "01_find_gasdermins_sp63.smk"

# need reference
# module load mafft
rule msa:
	input:
                a="../../data/raw/Stephen/MSA/GsdmA.fst",
                b="../../data/raw/Stephen/MSA/GsdmB.fst",
                c="../../data/raw/Stephen/MSA/GsdmC.fst",
                d="../../data/raw/Stephen/MSA/GsdmD.fst",
                e="../../data/raw/Stephen/MSA/GsdmE.fst",
                p="../../data/raw/Stephen/MSA/Pjvk.fst",
	threads: 6
	output:
		u=temp("../../data/raw/Stephen/MSA/all_gasd_merged.fa"),
		msa="../../data/raw/Stephen/MSA/all_gasd_merged_aln.fa"
	run:
                shell("cat {input.a}  {input.b} {input.c} {input.d}  {input.e} {input.p} > {output.u}")
		shell("mafft --thread {threads} --genafpair  --maxiterate 16 --reorder {output.u} > {output.msa}")


rule merge_and_rename:
        input:
                sp4="../../shared/braker2_2/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.classified.fa",
                sp5="../../data/processed/searches/sp5_gsdm.aa",
                sp31b=rules.clean_up_31b.output.clean,
                sp57="../../data/processed/searches/sp57_exonerate_gasP_ext.aug_ppx.aa",
                sp58="../../data/processed/searches/sp58_exonerate_gasPv2_ext.aug_ppx.mc.aa",
                sp61="../../data/processed/searches/SP61/sp31_allpreds.clt.mc.faa",
                sp62="../../data/processed/searches/sp62/sp62_allpreds.mc.faa",
                sp63=rules.merge_sp63.output,
        output:
                msa=temp("../../data/processed/searches/combined/gsd_all_seqs.fas"),
        run:
                shell("cat {input.sp4} {input.sp5} {input.sp31b} {input.sp57}  {input.sp58}  {input.sp61}  {input.sp62}  {input.sp63} > {output.msa}")

# try to attach to a ref alignment
# module load clustalo
rule reattach:
	input:
		refmsa=rules.msa.output.msa,
		sp4="../../shared/braker2_2/SP4/GCF_017639785.1_BCM_Maur_2.0_protein.classified.fa",
		sp5="../../data/processed/searches/sp5_gsdm.aa",	
		sp31b=rules.clean_up_31b.output.clean, 
		sp57="../../data/processed/searches/sp57_exonerate_gasP_ext.aug_ppx.aa",
		sp58="../../data/processed/searches/sp58_exonerate_gasPv2_ext.aug_ppx.mc.aa", 
#		sp61=rules.cluster_sp61.output,
		sp61="../../data/processed/searches/SP61/sp31_allpreds.clt.mc.faa",
#		sp62=rules.merge_sp62.output,	
		sp62="../../data/processed/searches/sp62/sp62_allpreds.mc.faa",
		sp63=rules.merge_sp63.output,
		msa=rules.merge_and_rename.output.msa
	threads: 6
	output:
#		sp5="../../data/processed/searches/sp5_gsdm.aln",
#		sp31b="../../data/processed/searches/SP31b/ref_and_sp31.aln", 
#		sp57="../../data/processed/searches/sp57_and_ref.aln",
#		sp58="../../data/processed/searches/sp58_and_ref.aln",
#		sp61="../../data/processed/searches/SP61/sp61_and_ref.aln",
#		sp62="../../data/processed/searches/sp62/sp62_and_ref.aln",
#		sp63="../../data/processed/searches/sp63/sp63_and_ref.aln",	
#		un="../../data/processed/phylo/all_merged.fas",
#		all="../../data/processed/phylo/all_gasmd.aln"
		msa="../../data/processed/searches/combined/gsd_all_seqs.aln"
	run:
#		shell("clustalo --p1={input.refmsa} -i {input.sp5} --threads {threads} -o {output.sp5}")
#		shell("clustalo --p1={input.refmsa} -i {input.sp31b} --threads {threads} -o {output.sp31b}")
#		shell("clustalo --p1={input.refmsa} -i {input.sp57} --threads {threads} -o {output.sp57}")
#		shell("clustalo --p1={input.refmsa} -i {input.sp58} --threads {threads} -o {output.sp58}")
#		shell("clustalo --p1={input.refmsa} -i {input.sp61} --threads {threads} -o {output.sp61}")
#		shell("clustalo --p1={input.refmsa} -i {input.sp62} --threads {threads} -o {output.sp62}")
#		shell("clustalo --p1={input.refmsa} -i {input.sp63} --threads {threads} -o {output.sp63}")
#		shell("cat {input.sp31b}  {input.sp57} {input.sp58}  {input.sp61} {input.sp62} {input.sp63} > {output.un}")
#		shell("clustalo --p1={input.refmsa} -i {output.un} --threads {threads} -o {output.all}")	
		shell("clustalo --p1={input.refmsa} -i {input.msa} --threads {threads} -o {output.msa}")		
rule rename:
	input:
		msa=rules.reattach.output.msa
	output:
		o="../../data/processed/searches/combined/gsd_all_seqs.renamed.aln"
		
	shell:
		"perl ../scripts/rename.pl {input.msa} > {output.o}"



# quick phylo
# # module load FastTree
rule tree:
	input:	
#		msa=rules.msa.output.msa,
#		sp5=rules.reattach.output.sp5,
#		sp31b=rules.reattach.output.sp31b,
#		sp57=rules.reattach.output.sp57,
#		sp58=rules.reattach.output.sp58,
#		sp61=rules.reattach.output.sp61,
#		sp62=rules.reattach.output.sp62,
#		sp63=rules.reattach.output.sp63,
#		all=rules.reattach.output.all
		msa=rules.rename.output.o
	output:
#		sp5="../../data/processed/searches/sp5_gsdm.nwk",
#		#tref="../../data/raw/Stephen/MSA/all_gasd_merged_aln.nwk"
#		sp31b="../../data/processed/searches/SP31b/ref_and_sp31.nwk", 
#		sp57="../../data/processed/searches/sp57_and_ref.nwk",
#		sp58="../../data/processed/searches/sp58_and_ref.nwk",
#		sp61="../../data/processed/searches/SP61/sp61_and_ref.nwk",
#		sp62="../../data/processed/searches/sp62/sp62_and_ref.nwk",
#		sp63="../../data/processed/searches/sp63/sp63_and_ref.nwk",
#		all="../../data/processed/phylo/all_gasmd.nwk"
		cb="../../data/processed/searches/combined/gsd_all_seqs.renamed.nwk"
	run:
#		shell("FastTree {input.sp5} > {output.sp5}")
		#shell("FastTree {input.msa} > {output.tref}")
#		shell("FastTree {input.sp31b} > {output.sp31b}")
#		shell("FastTree {input.sp57} > {output.sp57}")
#		shell("FastTree {input.sp58} > {output.sp58}")
#		shell("FastTree {input.sp61} > {output.sp61}")
#		shell("FastTree {input.sp62} > {output.sp62}")
#		shell("FastTree {input.sp63} > {output.sp63}")
#		shell("FastTree {input.all} > {output.all}")		
		shell("FastTree {input.msa} > {output.cb}")

rule update_tree:
	input:
		id="../../data/processed/searches/combined/gsd_all_seqs.aln.id2names.mc.txt",
		ft=rules.tree.output.cb
	run:
		shell("perl ../scripts/rename_put_names_back.pl {input.id} {input.ft}")

#rule raxml:
#	input:
#		msa=rules.reattach.output.rn
#	output:
#		"../../data/processed/searches/combined/raxml"
#	threads = 12
#	run:
#		shell("echo > {output}")
#		shell("raxml-ng --all --msa {input.msa} --model LG+G8+F --tree pars{10} --bs-trees 200 --threads {params.t}")

#sbatch raxml.sh 

## ___to delete
# not a good idea
# this tree is better than orthofinder tree
# tet epa-ng
# muscle \
# -in ../../data/processed/Orthofinder_results/Results_Oct31/Orthogroup_Sequences/OG0000000.fa \
# -out ../../data/processed/Orthofinder_results/Results_Oct31/Orthogroup_Sequences/OG0000000.aln
#
#rule placement:
#	input:
#		msa=rules.msa.output.msa,
#		tree=rules.tree.output.tref,
##		sp31b=rules.merge_sp31b.output.all
#		sp31b="../../data/processed/Orthofinder_results/Results_Oct31/Orthogroup_Sequences/OG0000000.aln"
#	output:
#		sp31b=directory("../../data/processed/searches/SP31b/placement")
#	params:
#		m="GTR{0.7/1.8/1.2/0.6/3.0/1.0}+FU{0.25/0.23/0.30/0.22}+G4{0.47}"
#	run:
#		shell("epa-ng --ref-msa {input.msa} --tree {input.tree} --query {input.sp31b} --model {params.m} -w {output.sp31b}")
