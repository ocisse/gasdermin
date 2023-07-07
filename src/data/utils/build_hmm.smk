##
rule build_hmm:
	input:
		a="../../data/raw/MSA/GsdmA.fst",
		b="../../data/raw/MSA/GsdmB.fst",
		c="../../data/raw/MSA/GsdmC.fst",
		d="../../data/raw/MSA/GsdmD.fst",
		e="../../data/raw/MSA/GsdmE.fst",
		p="../../data/raw/MSA/Pjvk.fst",
	output:
		a=temp("../../data/raw/MSA/GsdmA.sto"),       
        b=temp("../../data/raw/MSA/GsdmB.sto"),
        c=temp("../../data/raw/MSA/GsdmC.sto"),
        d=temp("../../data/raw/MSA/GsdmD.sto"),
        e=temp("../../data/raw/MSA/GsdmE.sto"),
        p=temp("../../data/raw/MSA/Pjvk.sto"),
		ahmm="../../data/raw/MSA/GsdmA.hmm",
        bhmm="../../data/raw/MSA/GsdmB.hmm",
        chmm="../../data/raw/MSA/GsdmC.hmm",
        dhmm="../../data/raw/MSA/GsdmD.hmm",
        ehmm="../../data/raw/MSA/GsdmE.hmm",
        phmm="../../data/raw/MSA/Pjvk.hmm",
		gs="../../data/raw/MSA/all_gs_concat.hmm"
	threads: 4
	run:
		shell("perl ../scripts/fasta2stockholm.pl {input.a} > {output.a}")
		shell("perl ../scripts/fasta2stockholm.pl {input.b} > {output.b}")
		shell("perl ../scripts/fasta2stockholm.pl {input.c} > {output.c}")
		shell("perl ../scripts/fasta2stockholm.pl {input.d} > {output.d}")
		shell("perl ../scripts/fasta2stockholm.pl {input.e} > {output.e}")
		shell("perl ../scripts/fasta2stockholm.pl {input.p} > {output.p}")
		shell("hmmbuild --cpu {threads} {output.ahmm} {output.a}")
		shell("hmmbuild --cpu {threads} {output.bhmm} {output.b}")
		shell("hmmbuild --cpu {threads} {output.chmm} {output.c}")
		shell("hmmbuild --cpu {threads} {output.dhmm} {output.d}")
		shell("hmmbuild --cpu {threads} {output.ehmm} {output.e}")
		shell("hmmbuild --cpu {threads} {output.phmm} {output.p}")
		shell("cat {output.ahmm} {output.bhmm} {output.chmm} {output.dhmm} {output.ehmm} {output.phmm} > {output.gs}")

rule cns:
	input:
		a=rules.build_hmm.output.ahmm,
		b=rules.build_hmm.output.bhmm,
		c=rules.build_hmm.output.chmm,
		d=rules.build_hmm.output.dhmm,
		e=rules.build_hmm.output.ehmm,
		p=rules.build_hmm.output.phmm,
	params: 
		"123"
	output:
		a="../../data/raw/MSA/GsdmA_cns.fa",
        b="../../data/raw/MSA/GsdmB_cns.fa",
        c="../../data/raw/MSA/GsdmC_cns.fa",
        d="../../data/raw/MSA/GsdmD_cns.fa",
        e="../../data/raw/MSA/GsdmE_cns.fa",
        p="../../data/raw/MSA/Pjvk_cns.fa",
	run:
		shell("hmmemit --seed {params} -c {input.a} > {output.a}")
		shell("hmmemit --seed {params} -c {input.b} > {output.b}")
		shell("hmmemit --seed {params} -c {input.c} > {output.c}")
		shell("hmmemit --seed {params} -c {input.d} > {output.d}")
		shell("hmmemit --seed {params} -c {input.e} > {output.e}")
		shell("hmmemit --seed {params} -c {input.p} > {output.p}")

# build profile for augustus ppx
# #http://bioinf.uni-greifswald.de/augustus/binaries/tutorial/ppx.html
rule build_prfl:
	input:
        a="../../data/raw/MSA/GsdmA.fst",
        b="../../data/raw/MSA/GsdmB.fst",
        c="../../data/raw/MSA/GsdmC.fst",
        d="../../data/raw/MSA/GsdmD.fst",
        e="../../data/raw/MSA/GsdmE.fst",
        p="../../data/raw/MSA/Pjvk.fst",
	output:
		ab=temp("../../data/raw/MSA/GsdmA.blocks.txt"),
		a="../../data/raw/MSA/GsdmA.prfl",
        bb=temp("../../data/raw/MSA/GsdmB.blocks.txt"),
		b="../../data/raw/MSA/GsdmB.prfl",
        cb=temp("../../data/raw/MSA/GsdmC.blocks.txt"),
		c="../../data/raw/MSA/GsdmC.prfl",
		db=temp("../../data/raw/MSA/GsdmD.blocks.txt"),
        d="../../data/raw/MSA/GsdmD.prfl",
		eb=temp("../../data/raw/MSA/GsdmE.blocks.txt"),
        e="../../data/raw/MSA/GsdmE.prfl",
		pb=temp("../../data/raw/MSA/Pjvk.blocks.txt"),
        p="../../data/raw/MSA/Pjvk.prfl",
		
	params: e="0.75", qij="/usr/local/apps/busco/Augustus/config/profile/default.qij"

	run:
		shell("/usr/local/apps/busco/Augustus/scripts/msa2prfl.pl --prefix_from_seqnames --max_entropy={params.e} --blockscorefile={output.ab} {input.a} --qij={params.qij} > {output.a}")
		shell("/usr/local/apps/busco/Augustus/scripts/msa2prfl.pl --prefix_from_seqnames --max_entropy={params.e} --blockscorefile={output.bb} {input.b} --qij={params.qij} > {output.b}")
		shell("/usr/local/apps/busco/Augustus/scripts/msa2prfl.pl --prefix_from_seqnames --max_entropy={params.e} --blockscorefile={output.cb} {input.c} --qij={params.qij} > {output.c}")
		shell("/usr/local/apps/busco/Augustus/scripts/msa2prfl.pl --prefix_from_seqnames --max_entropy={params.e} --blockscorefile={output.db} {input.d} --qij={params.qij} > {output.d}")
		shell("/usr/local/apps/busco/Augustus/scripts/msa2prfl.pl --prefix_from_seqnames --max_entropy={params.e} --blockscorefile={output.eb} {input.e} --qij={params.qij} > {output.e}")
		shell("/usr/local/apps/busco/Augustus/scripts/msa2prfl.pl --prefix_from_seqnames --max_entropy={params.e} --blockscorefile={output.pb} {input.p} --qij={params.qij} > {output.p}")

# # --blockscorefile=../../data/raw/MSA/Pjvk.blocks.txt  ../../data/raw/MSA/Pjvk.fst \
# # --qij=/usr/local/apps/busco/Augustus/config/profile/default.qij \
# # > ../../data/raw/MSA/Pjvk.prfl
#
