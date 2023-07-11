#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=12
#SBATCH --time=240:00:00
#SBATCH --job-name=sp5


source /data/$USER/conda/etc/profile.d/conda.sh
conda activate snakemake
module use --append ~/modulefiles
module load braker

export WRKDIR=/home/cisseoh/scratch/gasdermins
export SRCDIR=/gpfs/gsfs11/users/cisseoh/gasdermins/src
export TMPDIR=/lscratch/$SLURM_JOB_ID

#perl $SRCDIR/scripts/chop_name.pl $WRKDIR/SP5/GCF_000003625.3_OryCun2.0_genomic.fna  > $WRKDIR/SP5/sp5.fna

braker.pl --genome=$WRKDIR/SP5/sp5.fna --species=sp5 \
--prot_seq=/home/cisseoh/data/gasdermins/data/raw/Stephen/Gsdm_family_clustalo.fasta \
--bam=$WRKDIR/SP5/sp5.bam --softmasking --gff3 --etpmode \
--workingdir=$TMPDIR \
--cores $SLURM_CPUS_PER_TASK \
> $TMPDIR/braker.log

mkdir -p $WRKDIR/SP5/braker2
cp -r $TMPDIR/* $WRKDIR/SP5/braker2

