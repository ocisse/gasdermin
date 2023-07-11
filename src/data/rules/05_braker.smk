
## don't forget to do this first
#  module use --append ~/modulefiles
#  module load braker
#
#source /data/$USER/conda/etc/profile.d/conda.sh
#conda activate snakemake
## 
include: "03_RNAseq.smk"

rule shortenId:
	input:
		sp11=rules.index.input.sp11,
		sp12=rules.index.input.sp12,
		sp13=rules.index.input.sp13,	
		sp15=rules.index.input.sp15,
		sp22=rules.index.input.sp22,
		sp24=rules.index.input.sp24,
		sp31=rules.index.input.sp31,
		sp32=rules.index.input.sp32,
		sp36=rules.index.input.sp36,
		sp37=rules.index.input.sp37,
		sp38=rules.index.input.sp38,
		sp4=rules.index.input.sp4,
		sp5=rules.index.input.sp5,
		sp8=rules.index.input.sp8,
		sp9=rules.index.input.sp9,	
        
	output:
                sp11="/home/cisseoh/scratch/gasdermins/SP11/sp11.fna",
                sp12="/home/cisseoh/scratch/gasdermins/SP12/sp12.fna",
                sp13="/home/cisseoh/scratch/gasdermins/SP13/sp13.fna",
                sp15="/home/cisseoh/scratch/gasdermins/SP15/sp15.fna",
                sp22="/home/cisseoh/scratch/gasdermins/SP22/sp22.fna",
                sp24="/home/cisseoh/scratch/gasdermins/SP24/sp24.fna",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/sp31.fna",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/sp32.fna",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/sp36.fna",
                sp37="/home/cisseoh/scratch/gasdermins/SP37/sp37.fna",
                sp38="/home/cisseoh/scratch/gasdermins/SP38/sp38.fna",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/sp4.fna",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/sp5.fna",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/sp8.fna",
                sp9="/home/cisseoh/scratch/gasdermins/SP9/sp9.fna",

	run:
		shell("perl ../scripts/chop_name.pl {input.sp11} > {output.sp11}")
		shell("perl ../scripts/chop_name.pl {input.sp12} > {output.sp12}")
		shell("perl ../scripts/chop_name.pl {input.sp13} > {output.sp13}")
		shell("perl ../scripts/chop_name.pl {input.sp15} > {output.sp15}")
		shell("perl ../scripts/chop_name.pl {input.sp22} > {output.sp22}")
		shell("perl ../scripts/chop_name.pl {input.sp24} > {output.sp24}")
		shell("perl ../scripts/chop_name.pl {input.sp31} > {output.sp31}")
		shell("perl ../scripts/chop_name.pl {input.sp32} > {output.sp32}")
		shell("perl ../scripts/chop_name.pl {input.sp36} > {output.sp36}")
		shell("perl ../scripts/chop_name.pl {input.sp37} > {output.sp37}")
		shell("perl ../scripts/chop_name.pl {input.sp38} > {output.sp38}")
		shell("perl ../scripts/chop_name.pl {input.sp4} > {output.sp4}")
		shell("perl ../scripts/chop_name.pl {input.sp5} > {output.sp5}")
		shell("perl ../scripts/chop_name.pl {input.sp8} > {output.sp8}")
		shell("perl ../scripts/chop_name.pl {input.sp9} > {output.sp9}")

rule braker:
	input:
		sp11=rules.shortenId.output.sp11,
                sp12=rules.shortenId.output.sp12,
                sp13=rules.shortenId.output.sp13,
                sp15=rules.shortenId.output.sp15,
                sp22=rules.shortenId.output.sp22,
                sp24=rules.shortenId.output.sp24,
                sp31=rules.shortenId.output.sp31,
                sp32=rules.shortenId.output.sp32,
                sp36=rules.shortenId.output.sp36,
                sp37=rules.shortenId.output.sp37,
                sp38=rules.shortenId.output.sp38,
                sp4=rules.shortenId.output.sp4,
                sp5=rules.shortenId.output.sp5,
                sp8=rules.shortenId.output.sp8,
                sp9=rules.shortenId.output.sp9,	
		sp11b=rules.sam2bam.output.sp11,
		sp12b=rules.sam2bam.output.sp12,
		sp13b=rules.sam2bam.output.sp13,
		sp15b=rules.sam2bam.output.sp15,
		sp22b=rules.sam2bam.output.sp22,
		sp24b=rules.sam2bam.output.sp24,
		sp31b=rules.sam2bam.output.sp31,
		sp32b=rules.sam2bam.output.sp32,
		sp36b=rules.sam2bam.output.sp36,
		sp37b=rules.sam2bam.output.sp37,
		sp38b=rules.sam2bam.output.sp38,
		sp4b=rules.sam2bam.output.sp4,
		sp5b=rules.sam2bam.output.sp5,
		sp8b=rules.sam2bam.output.sp8,
		sp9b=rules.sam2bam.output.sp9
	
	output:
                sp11=directory("/home/cisseoh/scratch/gasdermins/SP11/braker"),
                sp12=directory("/home/cisseoh/scratch/gasdermins/SP12/braker"),
                sp13=directory("/home/cisseoh/scratch/gasdermins/SP13/braker"),
                sp15=directory("/home/cisseoh/scratch/gasdermins/SP15/braker"),
                sp22=directory("/home/cisseoh/scratch/gasdermins/SP22/braker"),
                sp24=directory("/home/cisseoh/scratch/gasdermins/SP24/braker"),
                sp31=directory("/home/cisseoh/scratch/gasdermins/SP31/braker"),
                sp32=directory("/home/cisseoh/scratch/gasdermins/SP32/braker"),
                sp36=directory("/home/cisseoh/scratch/gasdermins/SP36/braker"),
                sp37=directory("/home/cisseoh/scratch/gasdermins/SP37/braker"),
                sp38=directory("/home/cisseoh/scratch/gasdermins/SP38/braker"),
                sp4=directory("/home/cisseoh/scratch/gasdermins/SP4/braker"),
                sp5=directory("/home/cisseoh/scratch/gasdermins/SP5/braker"),
                sp8=directory("/home/cisseoh/scratch/gasdermins/SP8/braker"),
                sp9=directory("/home/cisseoh/scratch/gasdermins/SP9/braker"),
	log:
		sp11="/home/cisseoh/scratch/gasdermins/SP11/braker.log",
                sp12="/home/cisseoh/scratch/gasdermins/SP12/braker.log",
                sp13="/home/cisseoh/scratch/gasdermins/SP13/braker.log",
                sp15="/home/cisseoh/scratch/gasdermins/SP15/braker.log",
                sp22="/home/cisseoh/scratch/gasdermins/SP22/braker.log",
                sp24="/home/cisseoh/scratch/gasdermins/SP24/braker.log",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/braker.log",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/braker.log",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/braker.log",
                sp37="/home/cisseoh/scratch/gasdermins/SP37/braker.log",
                sp38="/home/cisseoh/scratch/gasdermins/SP38/braker.log",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/braker.log",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/braker.log",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/braker.log",
                sp9="/home/cisseoh/scratch/gasdermins/SP9/braker.log",

	threads: 32
	params: "--softmasking"
	run:
		shell("braker.pl --genome={input.sp11} --species=sp11  --bam={input.sp11b} {params} --workingdir={output.sp11} --cores {threads} > {log.sp11}")
		shell("braker.pl --genome={input.sp12} --species=sp12  --bam={input.sp12b} {params} --workingdir={output.sp12} --cores {threads} > {log.sp12}")
		shell("braker.pl --genome={input.sp13} --species=sp13  --bam={input.sp13b} {params} --workingdir={output.sp13} --cores {threads} > {log.sp13}")
		shell("braker.pl --genome={input.sp15} --species=sp15  --bam={input.sp15b} {params} --workingdir={output.sp15} --cores {threads} > {log.sp15}")
		shell("braker.pl --genome={input.sp22} --species=sp22  --bam={input.sp22b} {params} --workingdir={output.sp22} --cores {threads} > {log.sp22}")
		shell("braker.pl --genome={input.sp24} --species=sp24  --bam={input.sp24b} {params} --workingdir={output.sp24} --cores {threads} > {log.sp24}")
		shell("braker.pl --genome={input.sp31} --species=sp31  --bam={input.sp31b} {params} --workingdir={output.sp31} --cores {threads} > {log.sp31}")
		shell("braker.pl --genome={input.sp32} --species=sp32  --bam={input.sp32b} {params} --workingdir={output.sp32} --cores {threads} > {log.sp32}")
		shell("braker.pl --genome={input.sp36} --species=sp36  --bam={input.sp36b} {params} --workingdir={output.sp36} --cores {threads} > {log.sp36}")
		shell("braker.pl --genome={input.sp37} --species=sp37  --bam={input.sp37b} {params} --workingdir={output.sp37} --cores {threads} > {log.sp37}")
		shell("braker.pl --genome={input.sp38} --species=sp38  --bam={input.sp38b} {params} --workingdir={output.sp38} --cores {threads} > {log.sp38}")
		shell("braker.pl --genome={input.sp4} --species=sp4  --bam={input.sp4b} {params} --workingdir={output.sp4} --cores {threads} > {log.sp4}")
		shell("braker.pl --genome={input.sp5} --species=sp5  --bam={input.sp5b} {params} --workingdir={output.sp5} --cores {threads} > {log.sp5}")
		shell("braker.pl --genome={input.sp8} --species=sp8  --bam={input.sp8b} {params} --workingdir={output.sp8} --cores {threads} > {log.sp8}")
		shell("braker.pl --genome={input.sp9} --species=sp9  --bam={input.sp9b} {params} --workingdir={output.sp9} --cores {threads} > {log.sp9}")
		
		
