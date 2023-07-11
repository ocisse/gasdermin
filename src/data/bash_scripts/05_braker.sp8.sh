#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=12
#SBATCH --time=240:00:00
#SBATCH --job-name=sp8

source /data/$USER/conda/etc/profile.d/conda.sh
conda activate snakemake
module use --append ~/modulefiles
module load braker

export WRKDIR=/home/cisseoh/scratch/gasdermins
export SRCDIR=/gpfs/gsfs11/users/cisseoh/gasdermins/src
export TMPDIR=/lscratch/$SLURM_JOB_ID

#perl $SRCDIR/scripts/chop_name.pl $WRKDIR/SP8/GCA_009873245.3_mBalMus1.pri.v3_genomic.fna  > $WRKDIR/SP8/sp8.fna

braker.pl --genome=$WRKDIR/SP8/sp8.fna --species=sp8 \
--prot_seq=/home/cisseoh/data/gasdermins/data/raw/Stephen/Gsdm_family_clustalo.fasta \
--bam=$WRKDIR/SP8/sp8.bam --softmasking --gff3 --etpmode \
--workingdir=$TMPDIR \
--cores $SLURM_CPUS_PER_TASK \
> $TMPDIR/braker.log

mkdir -p $WRKDIR/SP8/braker2
cp -r $TMPDIR/* $WRKDIR/SP8/braker2

