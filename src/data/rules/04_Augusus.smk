# 
include: "03_RNAseq.smk"

rule bam2hints:
	input:
		sp11=rules.sam2bam.output.sp11,
		sp12=rules.sam2bam.output.sp12,
		sp13=rules.sam2bam.output.sp13,
		sp15=rules.sam2bam.output.sp15,
		sp22=rules.sam2bam.output.sp22,
		sp24=rules.sam2bam.output.sp24,
		sp31=rules.sam2bam.output.sp31,
		sp32=rules.sam2bam.output.sp32,
		sp36=rules.sam2bam.output.sp36,
		sp37=rules.sam2bam.output.sp37,
		sp38=rules.sam2bam.output.sp38,
		sp4=rules.sam2bam.output.sp4,
		sp5=rules.sam2bam.output.sp5,
		sp8=rules.sam2bam.output.sp8,
		sp9=rules.sam2bam.output.sp9
	output:
                sp11="/home/cisseoh/scratch/gasdermins/SP11/sp11.gff",
                sp12="/home/cisseoh/scratch/gasdermins/SP12/sp12.gff",
                sp13="/home/cisseoh/scratch/gasdermins/SP13/sp13.gff",
                sp15="/home/cisseoh/scratch/gasdermins/SP15/sp15.gff",
                sp22="/home/cisseoh/scratch/gasdermins/SP22/sp22.gff",
                sp24="/home/cisseoh/scratch/gasdermins/SP24/sp24.gff",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/sp31.gff",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/sp32.gff",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/sp36.gff",
                sp37="/home/cisseoh/scratch/gasdermins/SP37/sp37.gff",
                sp38="/home/cisseoh/scratch/gasdermins/SP38/sp38.gff",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/sp4.gff",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/sp5.gff",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/sp8.gff",
                sp9="/home/cisseoh/scratch/gasdermins/SP9/sp9.gff"
	
	threads: 12

	run:
		shell("bam2hints --in={input.sp11} --out={output.sp11}")
		shell("bam2hints --in={input.sp12} --out={output.sp12}")
		shell("bam2hints --in={input.sp13} --out={output.sp13}")
		shell("bam2hints --in={input.sp15} --out={output.sp15}")
		shell("bam2hints --in={input.sp22} --out={output.sp22}")
		shell("bam2hints --in={input.sp24} --out={output.sp24}")
		shell("bam2hints --in={input.sp31} --out={output.sp31}")
		shell("bam2hints --in={input.sp32} --out={output.sp32}")
		shell("bam2hints --in={input.sp36} --out={output.sp36}")
		shell("bam2hints --in={input.sp37} --out={output.sp37}")
		shell("bam2hints --in={input.sp38} --out={output.sp38}")
		shell("bam2hints --in={input.sp4} --out={output.sp4}")
		shell("bam2hints --in={input.sp5} --out={output.sp5}")
		shell("bam2hints --in={input.sp8} --out={output.sp8}")
		shell("bam2hints --in={input.sp9} --out={output.sp9}")
		
