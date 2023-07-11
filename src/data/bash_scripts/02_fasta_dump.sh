#! /bin/bash

module load sratoolkit/2.10.9

export WRKDIR=/home/cisseoh/scratch/gasdermins

fastq-dump $WRKDIR/SP4/SRR5092313/SRR5092313.sra --outdir $WRKDIR/SP4/SRR5092313/fq --split-files --gzip
fastq-dump $WRKDIR/SP9/SRR3200453/SRR3200453.sra --outdir $WRKDIR/SP9/SRR3200453/fq --split-files --gzip
fastq-dump $WRKDIR/SP5/ERR1331670/ERR1331670.sra --outdir $WRKDIR/SP5/ERR1331670/fq --split-files --gzip
fastq-dump $WRKDIR/SP8/SRR8270603/SRR8270603.sra --outdir $WRKDIR/SP8/SRR8270603/fq --split-files --gzip
fastq-dump $WRKDIR/SP11/SRR11580492/SRR11580492.sra --outdir $WRKDIR/SP11/SRR11580492/fq --split-files --gzip
fastq-dump $WRKDIR/SP12/SRR636852/SRR636852.sra --outdir $WRKDIR/SP12/SRR636852/fq --split-files --gzip
fastq-dump $WRKDIR/SP13/SRR11458315/SRR11458315.sra --outdir $WRKDIR/SP13/SRR11458315/fq --split-files --gzip
fastq-dump $WRKDIR/SP15/ERR2812428/ERR2812428.sra --outdir $WRKDIR/SP15/ERR2812428/fq --split-files --gzip 
fastq-dump $WRKDIR/SP22/SRR629636/SRR629636.sra --outdir $WRKDIR/SP22/SRR629636/fq --split-files --gzip
fastq-dump $WRKDIR/SP24/SRR6180864/SRR6180864.sra --outdir $WRKDIR/SP24/SRR6180864/fq --split-files --gzip
fastq-dump $WRKDIR/SP31/SRR513760/SRR513760.sra --outdir $WRKDIR/SP31/SRR513760/fq --split-files --gzip
fastq-dump $WRKDIR/SP32/SRR2532444/SRR2532444.sra --outdir $WRKDIR/SP32/SRR2532444/fq --split-files --gzip
fastq-dump $WRKDIR/SP36/SRR2131237/SRR2131237.sra --outdir $WRKDIR/SP36/SRR2131237/fq --split-files --gzip
fastq-dump $WRKDIR/SP37/SRR8300886/SRR8300886.sra --outdir $WRKDIR/SP37/SRR8300886/fq --split-files --gzip
fastq-dump $WRKDIR/SP38/ERR2215729/ERR2215729.sra --outdir $WRKDIR/SP38/ERR2215729/fq --split-files --gzip
