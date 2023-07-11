## the first thing I want to know what the difference between Schutter_2021, Stephen and NCBI data?
# run cd-hit, remove the redundant

# first I need to make sure the the proteins and cds have the same labels -- if there duplicates, let's pick one
# some issues
rule clip_name:
	input:
#		gap="../../data/external/Schutter_2021/gA.fasta",
		gap="../../data/external/Schutter_2021/gA.fasta.full_len", # checking if shorting are not cause pal2nal to failed - remove Modo5-10	
#		gad="../../data/external/Schutter_2021/gA.cds",
		gad="../../data/external/Schutter_2021/gA.cds.full_len",		
	output:
		gap="../../data/external/Schutter_2021/gA.fasta.cl",
		gad="../../data/external/Schutter_2021/gA.cds.cl"
	run:
		shell("perl ../scripts/clip_name.pl {input.gap} > {output.gap}"),
		shell("perl ../scripts/clip_name.pl {input.gad} > {output.gad}"),	

rule clustalo:
	input:
		gap=rules.clip_name.output.gap,
		gad=rules.clip_name.output.gad,
	output:
		gap="../../data/external/Schutter_2021/gA.fasta.cl.aln",
	
	threads: 2
	run:
		shell("clustalo -i {input.gap} -o {output.gap} --threads={threads}")

rule convert_aa_2_cds:
	input:
		gap=rules.clustalo.output.gap,
		gad=rules.clip_name.output.gad,
	output:
		ga="../../data/external/Schutter_2021/gA.pal2nal"
	params:
		"-output paml -nogap"
	run:
		shell("perl ../tools/pal2nal.v14/pal2nal.pl {input.gap} {input.gad} {params} > {output.ga}")

### do this manual
# ~/data/gasdermins/data/external/Schutter_2021/codeml_test
# cp ../gA.pal2nal .
# cp ../../../../src/tools/dnds/codeml.ctl .
# conda activate py2
# python ../../../../src/tools/dnds/parse_codeml_output.py codeml.txt > codeml.txt.parsed
# don't forget you need to compute p-value and do some corrections I think
# I'll probably have to clean the msa, and remove all short proteins
# You could overlap with a tree 
#
#
