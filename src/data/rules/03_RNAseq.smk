# 
rule index:
	input:
		sp11="/home/cisseoh/scratch/gasdermins/SP11/GCA_015220235.1_mChoDid1.pri_genomic.fna",
		sp12="/home/cisseoh/scratch/gasdermins/SP12/GCA_000296755.1_EriEur2.0_genomic.fna",
		sp13="/home/cisseoh/scratch/gasdermins/SP13/GCA_000001905.1_Loxafr3.0_genomic.fna",
		sp15="/home/cisseoh/scratch/gasdermins/SP15/GCF_004115215.1_mOrnAna1.p.v1_genomic.fna",
		sp22="/home/cisseoh/scratch/gasdermins/SP22/GCA_000281125.4_ASM28112v4_genomic.fna",
		sp24="/home/cisseoh/scratch/gasdermins/SP24/GCA_000230535.1_PelSin_1.0_genomic.fna",
		sp31="/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_genomic.fna",
		sp32="/home/cisseoh/scratch/gasdermins/SP32/GCA_010993605.1_kPetMar1.pri_genomic.fna",
		sp36="/home/cisseoh/scratch/gasdermins/SP36/GCA_001039355.2_LinAna2.0_genomic.fna",
		sp37="/home/cisseoh/scratch/gasdermins/SP37/GCA_902652985.1_xPecMax1.1_genomic.fna",
		sp38="/home/cisseoh/scratch/gasdermins/SP38/GCF_000150275.1_v1.0_genomic.fna",
		sp4="/home/cisseoh/scratch/gasdermins/SP4/GCF_000349665.1_MesAur1.0_genomic.fna",
		sp5="/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_genomic.fna",
		sp8="/home/cisseoh/scratch/gasdermins/SP8/GCA_009873245.3_mBalMus1.pri.v3_genomic.fna",
		sp9="/home/cisseoh/scratch/gasdermins/SP9/GCA_000181335.4_Felis_catus_9.0_genomic.fna"
	output:
		sp11="/home/cisseoh/scratch/gasdermins/SP11/GCA_015220235.1_mChoDid1.pri_genomic",
		sp12="/home/cisseoh/scratch/gasdermins/SP12/GCA_000296755.1_EriEur2.0_genomic",
                sp13="/home/cisseoh/scratch/gasdermins/SP13/GCA_000001905.1_Loxafr3.0_genomic",
                sp15="/home/cisseoh/scratch/gasdermins/SP15/GCF_004115215.1_mOrnAna1.p.v1_genomic",
                sp22="/home/cisseoh/scratch/gasdermins/SP22/GCA_000281125.4_ASM28112v4_genomic",
                sp24="/home/cisseoh/scratch/gasdermins/SP24/GCA_000230535.1_PelSin_1.0_genomic",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/GCF_000165045.1_Callorhinchus_milii-6.1.3_genomic",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/GCA_010993605.1_kPetMar1.pri_genomic",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/GCA_001039355.2_LinAna2.0_genomic",
                sp37="/home/cisseoh/scratch/gasdermins/SP37/GCA_902652985.1_xPecMax1.1_genomic",
                sp38="/home/cisseoh/scratch/gasdermins/SP38/GCF_000150275.1_v1.0_genomic",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/GCF_000349665.1_MesAur1.0_genomic",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/GCF_000003625.3_OryCun2.0_genomic",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/GCA_009873245.3_mBalMus1.pri.v3_genomic",
                sp9="/home/cisseoh/scratch/gasdermins/SP9/GCA_000181335.4_Felis_catus_9.0_genomic"


	threads: 32
	params: s="1234"

	run:

		shell("echo > {output.sp11}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp11} {output.sp11}")
		shell("echo > {output.sp12}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp12} {output.sp12}")
 		shell("echo > {output.sp13}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp13} {output.sp13}")
		shell("echo > {output.sp15}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp15} {output.sp15}")
		shell("echo > {output.sp22}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp22} {output.sp22}")
		shell("echo > {output.sp24}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp24} {output.sp24}")
		shell("echo > {output.sp31}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp31} {output.sp31}")
		shell("echo > {output.sp32}")
		shell("hisat2-build -p {threads} --seed {params.s} {input.sp32} {output.sp32}")
		shell("echo > {output.sp36}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp36} {output.sp36}")
		shell("echo > {output.sp37}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp37} {output.sp37}")
		shell("echo > {output.sp38}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp38} {output.sp38}")
		shell("echo > {output.sp4}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp4} {output.sp4}")
		shell("echo > {output.sp5}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp5} {output.sp5}")
		shell("echo > {output.sp8}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp8} {output.sp8}")
		shell("echo > {output.sp9}")
                shell("hisat2-build -p {threads} --seed {params.s} {input.sp9} {output.sp9}")

rule hisat2:
	input:
		sp11=rules.index.output.sp11,
		sp11r1="/home/cisseoh/scratch/gasdermins/SP11/SRR11580492/fq/SRR11580492_1.fastq.gz",
		sp11r2="/home/cisseoh/scratch/gasdermins/SP11/SRR11580492/fq/SRR11580492_2.fastq.gz", 
		sp12=rules.index.output.sp12,
		sp12r1="/home/cisseoh/scratch/gasdermins/SP12/SRR636852/fq/SRR636852_1.fastq.gz",
		sp12r2="/home/cisseoh/scratch/gasdermins/SP12/SRR636852/fq/SRR636852_2.fastq.gz",
                sp13=rules.index.output.sp13,
		sp13r1="/home/cisseoh/scratch/gasdermins/SP13/SRR11458315/fq/SRR11458315_1.fastq.gz",
		sp13r2="/home/cisseoh/scratch/gasdermins/SP13/SRR11458315/fq/SRR11458315_2.fastq.gz",
		sp15=rules.index.output.sp15,	
		sp15r1="/home/cisseoh/scratch/gasdermins/SP15/ERR2812428/fq/ERR2812428_1.fastq.gz",
                sp22=rules.index.output.sp22,
		sp22r1="/home/cisseoh/scratch/gasdermins/SP22/SRR629636/fq/SRR629636_1.fastq.gz",
		sp22r2="/home/cisseoh/scratch/gasdermins/SP22/SRR629636/fq/SRR629636_2.fastq.gz",
		sp24=rules.index.output.sp24,
		sp24r1="/home/cisseoh/scratch/gasdermins/SP24/SRR6180864/fq/SRR6180864_1.fastq.gz",
		sp24r2="/home/cisseoh/scratch/gasdermins/SP24/SRR6180864/fq/SRR6180864_2.fastq.gz",
                sp31=rules.index.output.sp31,
		sp31r1="/home/cisseoh/scratch/gasdermins/SP31/SRR513760/fq/SRR513760_1.fastq.gz",
		sp31r2="/home/cisseoh/scratch/gasdermins/SP31/SRR513760/fq/SRR513760_2.fastq.gz",
		sp32=rules.index.output.sp32,
		sp32r1="/home/cisseoh/scratch/gasdermins/SP32/SRR2532444/fq/SRR2532444_1.fastq.gz",
		sp32r2="/home/cisseoh/scratch/gasdermins/SP32/SRR2532444/fq/SRR2532444_2.fastq.gz",
                sp36=rules.index.output.sp36,
		sp36r1="/home/cisseoh/scratch/gasdermins/SP36/SRR2131237/fq/SRR2131237_1.fastq.gz",
		sp36r2="/home/cisseoh/scratch/gasdermins/SP36/SRR2131237/fq/SRR2131237_2.fastq.gz",
                sp37=rules.index.output.sp37,
		sp37r1="/home/cisseoh/scratch/gasdermins/SP37/SRR8300886/fq/SRR8300886_1.fastq.gz",
		sp37r2="/home/cisseoh/scratch/gasdermins/SP37/SRR8300886/fq/SRR8300886_2.fastq.gz",
		sp38=rules.index.output.sp38,
		sp38r1="/home/cisseoh/scratch/gasdermins/SP38/ERR2215729/fq/ERR2215729_1.fastq.gz",
		sp38r2="/home/cisseoh/scratch/gasdermins/SP38/ERR2215729/fq/ERR2215729_2.fastq.gz",
                sp4=rules.index.output.sp4,
		sp4r1="/home/cisseoh/scratch/gasdermins/SP4/SRR5092313/fq/SRR5092313_1.fastq.gz",
		sp4r2="/home/cisseoh/scratch/gasdermins/SP4/SRR5092313/fq/SRR5092313_2.fastq.gz",
		sp5=rules.index.output.sp5,
		sp5r1="/home/cisseoh/scratch/gasdermins/SP5/ERR1331670/fq/ERR1331670_1.fastq.gz",
		sp5r2="/home/cisseoh/scratch/gasdermins/SP5/ERR1331670/fq/ERR1331670_2.fastq.gz",
		sp8=rules.index.output.sp8,
		sp8r1="/home/cisseoh/scratch/gasdermins/SP8/SRR8270603/fq/SRR8270603_1.fastq.gz",
		sp8r2="/home/cisseoh/scratch/gasdermins/SP8/SRR8270603/fq/SRR8270603_2.fastq.gz",
                sp9=rules.index.output.sp9,
		sp9r1="/home/cisseoh/scratch/gasdermins/SP9/SRR3200453/fq/SRR3200453_1.fastq.gz",
		sp9r2="/home/cisseoh/scratch/gasdermins/SP9/SRR3200453/fq/SRR3200453_2.fastq.gz",
	output:
		sp11="/home/cisseoh/scratch/gasdermins/SP11/sp11.sam",
                sp12="/home/cisseoh/scratch/gasdermins/SP12/sp12.sam",
                sp13="/home/cisseoh/scratch/gasdermins/SP13/sp13.sam",
                sp15="/home/cisseoh/scratch/gasdermins/SP15/sp15.sam",
                sp22="/home/cisseoh/scratch/gasdermins/SP22/sp22.sam",
                sp24="/home/cisseoh/scratch/gasdermins/SP24/sp24.sam",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/sp31.sam",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/sp32.sam",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/sp36.sam",
                sp37="/home/cisseoh/scratch/gasdermins/SP37/sp37.sam",
                sp38="/home/cisseoh/scratch/gasdermins/SP38/sp38.sam",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/sp4.sam",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/sp5.sam",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/sp8.sam",
                sp9="/home/cisseoh/scratch/gasdermins/SP9/sp9.sam"

	threads: 32

	run:
		
		shell("hisat2 -p {threads} --dta -x {input.sp11} -1 {input.sp11r1} -2 {input.sp11r2} -S {output.sp11}")
		shell("hisat2 -p {threads} --dta -x {input.sp12} -1 {input.sp12r1} -2 {input.sp12r2} -S {output.sp12}")
		shell("hisat2 -p {threads} --dta -x {input.sp13} -1 {input.sp13r1} -2 {input.sp13r2} -S {output.sp13}")
		shell("hisat2 -p {threads} --dta -x {input.sp15} -U {input.sp15r1}  -S {output.sp15}")
		shell("hisat2 -p {threads} --dta -x {input.sp22} -1 {input.sp22r1} -2 {input.sp22r2} -S {output.sp22}")	
		shell("hisat2 -p {threads} --dta -x {input.sp24} -1 {input.sp24r1} -2 {input.sp24r2} -S {output.sp24}")
		shell("hisat2 -p {threads} --dta -x {input.sp31} -1 {input.sp31r1} -2 {input.sp31r2} -S {output.sp31}")
		shell("hisat2 -p {threads} --dta -x {input.sp32} -1 {input.sp32r1} -2 {input.sp32r2} -S {output.sp32}")
		shell("hisat2 -p {threads} --dta -x {input.sp36} -1 {input.sp36r1} -2 {input.sp36r2} -S {output.sp36}")
		shell("hisat2 -p {threads} --dta -x {input.sp37} -1 {input.sp37r1} -2 {input.sp37r2} -S {output.sp37}")
		shell("hisat2 -p {threads} --dta -x {input.sp38} -1 {input.sp38r1} -2 {input.sp38r2} -S {output.sp38}")
		shell("hisat2 -p {threads} --dta -x {input.sp4} -1 {input.sp4r1} -2 {input.sp4r2} -S {output.sp4}")
		shell("hisat2 -p {threads} --dta -x {input.sp5} -1 {input.sp5r1} -2 {input.sp5r2} -S {output.sp5}")
		shell("hisat2 -p {threads} --dta -x {input.sp8} -1 {input.sp8r1} -2 {input.sp8r2} -S {output.sp8}")
		shell("hisat2 -p {threads} --dta -x {input.sp9} -1 {input.sp9r1} -2 {input.sp9r2} -S {output.sp9}")

rule sam2bam:
	input:
		sp11=rules.hisat2.output.sp11,
		sp12=rules.hisat2.output.sp12,
		sp13=rules.hisat2.output.sp13,
		sp15=rules.hisat2.output.sp15,
		sp22=rules.hisat2.output.sp22,
		sp24=rules.hisat2.output.sp24,
		sp31=rules.hisat2.output.sp31,
		sp32=rules.hisat2.output.sp32,
		sp36=rules.hisat2.output.sp36,
		sp37=rules.hisat2.output.sp37,
		sp38=rules.hisat2.output.sp38,
		sp4=rules.hisat2.output.sp4,
		sp5=rules.hisat2.output.sp5,
		sp8=rules.hisat2.output.sp8,
		sp9=rules.hisat2.output.sp9
	output:
                sp11="/home/cisseoh/scratch/gasdermins/SP11/sp11.bam",
                sp12="/home/cisseoh/scratch/gasdermins/SP12/sp12.bam",
                sp13="/home/cisseoh/scratch/gasdermins/SP13/sp13.bam",
                sp15="/home/cisseoh/scratch/gasdermins/SP15/sp15.bam",
                sp22="/home/cisseoh/scratch/gasdermins/SP22/sp22.bam",
                sp24="/home/cisseoh/scratch/gasdermins/SP24/sp24.bam",
                sp31="/home/cisseoh/scratch/gasdermins/SP31/sp31.bam",
                sp32="/home/cisseoh/scratch/gasdermins/SP32/sp32.bam",
                sp36="/home/cisseoh/scratch/gasdermins/SP36/sp36.bam",
                sp37="/home/cisseoh/scratch/gasdermins/SP37/sp37.bam",
                sp38="/home/cisseoh/scratch/gasdermins/SP38/sp38.bam",
                sp4="/home/cisseoh/scratch/gasdermins/SP4/sp4.bam",
                sp5="/home/cisseoh/scratch/gasdermins/SP5/sp5.bam",
                sp8="/home/cisseoh/scratch/gasdermins/SP8/sp8.bam",
                sp9="/home/cisseoh/scratch/gasdermins/SP9/sp9.bam"
	
	threads: 12

	run:
		shell("samtools view  -bS {input.sp11} | samtools sort -@ {threads} -O bam -o {output.sp11}")
		shell("samtools view  -bS {input.sp12} | samtools sort -@ {threads} -O bam -o {output.sp12}")
		shell("samtools view  -bS {input.sp13} | samtools sort -@ {threads} -O bam -o {output.sp13}")
		shell("samtools view  -bS {input.sp15} | samtools sort -@ {threads} -O bam -o {output.sp15}")
		shell("samtools view  -bS {input.sp22} | samtools sort -@ {threads} -O bam -o {output.sp22}")
		shell("samtools view  -bS {input.sp24} | samtools sort -@ {threads} -O bam -o {output.sp24}")
		shell("samtools view  -bS {input.sp31} | samtools sort -@ {threads} -O bam -o {output.sp31}")
		shell("samtools view  -bS {input.sp32} | samtools sort -@ {threads} -O bam -o {output.sp32}")
		shell("samtools view  -bS {input.sp36} | samtools sort -@ {threads} -O bam -o {output.sp36}")
		shell("samtools view  -bS {input.sp37} | samtools sort -@ {threads} -O bam -o {output.sp37}")
		shell("samtools view  -bS {input.sp38} | samtools sort -@ {threads} -O bam -o {output.sp38}")
		shell("samtools view  -bS {input.sp4} | samtools sort -@ {threads} -O bam -o {output.sp4}")
		shell("samtools view  -bS {input.sp5} | samtools sort -@ {threads} -O bam -o {output.sp5}")
		shell("samtools view  -bS {input.sp8} | samtools sort -@ {threads} -O bam -o {output.sp8}")
		shell("samtools view  -bS {input.sp9} | samtools sort -@ {threads} -O bam -o {output.sp9}")
		
