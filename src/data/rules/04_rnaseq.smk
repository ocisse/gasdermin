####

rule index:
	input:
		rhbi="../../data/external/ncbi/Rhbi/genome/ncbi_dataset/data/GCF_901001135.1/rna.fna"
	output:
		"../../data/processed/rnaseq/rhbi/rna.idx"
	shell:
		"kallisto index -i {output} {input}"

rule quant:
	input:
		t=rules.index.output,
		s1="../../data/external/ncbi/Rhbi/ERR3132328.fastq",
		s2="../../data/external/ncbi/Rhbi/ERR3132329.fastq",
		s3="../../data/external/ncbi/Rhbi/ERR3132330.fastq",
		s4="../../data/external/ncbi/Rhbi/ERR3132331.fastq",
		s5="../../data/external/ncbi/Rhbi/ERR3132332.fastq",
		s6="../../data/external/ncbi/Rhbi/SRR5114778.fastq",
		s7="../../data/external/ncbi/Rhbi/SRR5591419.fastq",
		s8="../../data/external/ncbi/Rhbi/SRR5591420.fastq",
		s9="../../data/external/ncbi/Rhbi/SRR5591432.fastq",
		s10="../../data/external/ncbi/Rhbi/SRR5591433.fastq",
		s11="../../data/external/ncbi/Rhbi/SRR5591434.fastq",
		s12="../../data/external/ncbi/Rhbi/SRR5591435.fastq",
		s13="../../data/external/ncbi/Rhbi/SRR5591436.fastq",
		s14="../../data/external/ncbi/Rhbi/SRR5591438.fastq",
		s15="../../data/external/ncbi/Rhbi/SRR5591442.fastq",
		s16="../../data/external/ncbi/Rhbi/SRR5591443.fastq",
	threads: 12
	output:
		s1=directory("../../data/processed/rnaseq/rhbi/kallisto/ERR3132328"),
		s2=directory("../../data/processed/rnaseq/rhbi/kallisto/ERR3132329"),
                s3=directory("../../data/processed/rnaseq/rhbi/kallisto/ERR3132330"),
                s4=directory("../../data/processed/rnaseq/rhbi/kallisto/ERR3132331"),
                s5=directory("../../data/processed/rnaseq/rhbi/kallisto/ERR3132332"),
                s6=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5114778"),
                s7=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591419"),
                s8=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591420"),
                s9=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591432"),
                s10=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591433"),
                s11=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591434"),
                s12=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591435"),
                s13=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591436"),
                s14=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591438"),
                s15=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591442"),
                s16=directory("../../data/processed/rnaseq/rhbi/kallisto/SRR5591443"),
		
	params: b="100"
	run:
		shell("kallisto quant -i {input.t} -o {output.s1} -b {params.b} --single -l 180 -s 20 {input.s1} -t {threads}")	
		shell("kallisto quant -i {input.t} -o {output.s2} -b {params.b} --single -l 180 -s 20 {input.s2} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s3} -b {params.b} --single -l 180 -s 20 {input.s3} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s4} -b {params.b} --single -l 180 -s 20 {input.s4} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s5} -b {params.b} --single -l 180 -s 20 {input.s5} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s6} -b {params.b} --single -l 180 -s 20 {input.s6} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s7} -b {params.b} --single -l 180 -s 20 {input.s7} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s8} -b {params.b} --single -l 180 -s 20 {input.s8} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s9} -b {params.b} --single -l 180 -s 20 {input.s9} -t {threads}")
		shell("kallisto quant  -i {input.t} -o {output.s10} -b {params.b} --single -l 180 -s 20 {input.s10} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s11} -b {params.b} --single -l 180 -s 20 {input.s11} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s12} -b {params.b} --single -l 180 -s 20 {input.s12} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s13} -b {params.b} --single -l 180 -s 20 {input.s13} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s14} -b {params.b} --single -l 180 -s 20 {input.s14} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s15} -b {params.b} --single -l 180 -s 20 {input.s15} -t {threads}")
		shell("kallisto quant -i {input.t} -o {output.s16} -b {params.b} --single -l 180 -s 20 {input.s16} -t {threads}")

### merging (manual for now)
#
# perl ../scripts/merge_kallisto.pl --meta ../../data/external/ncbi/Rhbi/metadata.csv --cutoff 1 --binary TRUE > merged_realtpm.csv
# mv merged_realtpm.csv bindary.txt ../../data/processed/rnaseq/rhbi/kallisto/

