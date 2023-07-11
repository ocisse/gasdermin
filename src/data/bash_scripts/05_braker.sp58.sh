#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=12
#SBATCH --time=240:00:00
#SBATCH --job-name=sp58

source /data/$USER/conda/etc/profile.d/conda.sh
#conda activate snakemake
module use --append ~/modulefiles
module load braker

export WRKDIR=/home/cisseoh/data/gasdermins/data/processed/searches
export SRCDIR=/gpfs/gsfs11/users/cisseoh/gasdermins/src
export TMPDIR=/lscratch/$SLURM_JOB_ID

braker.pl --genome=$WRKDIR/sp58_exonerate_gasPv2_ext.fa --species=sp58 \
--prot_seq=/home/cisseoh/data/gasdermins/data/raw/Stephen/Gsdm_family_clustalo.fasta \
--GENEMARK_PATH=/gpfs/gsfs11/users/cisseoh/apps/gmes_linux_64_4 \
--softmasking --gff3 --etpmode \
--workingdir=$TMPDIR \
--cores $SLURM_CPUS_PER_TASK \
> $TMPDIR/braker.log

mkdir -p $WRKDIR/sp58/braker2
cp -r $TMPDIR/* $WRKDIR/sp58/braker2


