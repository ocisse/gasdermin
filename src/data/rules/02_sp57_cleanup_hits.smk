# 
include: "01_find_gasdermins_sp57.smk"


rule gff2bed:
	input:
		s1=rules.fix_gff.output.split1, 
		s2=rules.fix_gff.output.split2,
		s3=rules.fix_gff.output.split3,
		s4=rules.fix_gff.output.split4,
		s5=rules.fix_gff.output.split5,
	output:
		
