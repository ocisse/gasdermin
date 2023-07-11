#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=12
#SBATCH --time=240:00:00
#SBATCH --job-name=sp11

source /data/$USER/conda/etc/profile.d/conda.sh
conda activate snakemake
module use --append ~/modulefiles
module load braker


export WRKDIR=/home/cisseoh/scratch/gasdermins
export SRCDIR=/gpfs/gsfs11/users/cisseoh/gasdermins/src
export TMPDIR=/lscratch/$SLURM_JOB_ID

#perl $SRCDIR/scripts/chop_name.pl $WRKDIR/SP11/GCA_015220235.1_mChoDid1.pri_genomic.fna > $WRKDIR/SP11/sp11.fna


braker.pl --genome=$WRKDIR/SP11/sp11.fna --species=sp11 \
--prot_seq=/home/cisseoh/data/gasdermins/data/raw/Stephen/Gsdm_family_clustalo.fasta \
--bam=$WRKDIR/SP11/sp11.bam --softmasking --gff3 --etpmode \
--workingdir=$TMPDIR \
--cores $SLURM_CPUS_PER_TASK \
> $TMPDIR/braker.log

mkdir -p $WRKDIR/SP11/braker
cp -r $TMPDIR/* $WRKDIR/SP11/braker

