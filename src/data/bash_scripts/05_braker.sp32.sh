#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=12
#SBATCH --time=240:00:00
#SBATCH --job-name=sp32

source /data/$USER/conda/etc/profile.d/conda.sh
conda activate snakemake
module use --append ~/modulefiles
module load braker

export WRKDIR=/home/cisseoh/scratch/gasdermins
export SRCDIR=/gpfs/gsfs11/users/cisseoh/gasdermins/src
export TMPDIR=/lscratch/$SLURM_JOB_ID

#perl $SRCDIR/scripts/chop_name.pl $WRKDIR/SP32/GCA_010993605.1_kPetMar1.pri_genomic.fna  > $WRKDIR/SP32/sp32.fna

braker.pl --genome=$WRKDIR/SP32/sp32.fna --species=sp32 \
--prot_seq=/home/cisseoh/data/gasdermins/data/raw/Stephen/Gsdm_family_clustalo.fasta \
--bam=$WRKDIR/SP32/sp32.bam --softmasking --gff3 --etpmode \
--workingdir=$TMPDIR \
--cores $SLURM_CPUS_PER_TASK \
> $TMPDIR/braker.log

mkdir -p $WRKDIR/SP32/braker2
cp -r $TMPDIR/* $WRKDIR/SP32/braker2
