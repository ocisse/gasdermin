#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=6
#SBATCH --time=240:00:00
#SBATCH --job-name=mafft

source /data/$USER/conda/etc/profile.d/conda.sh
conda activate snakemake

snakemake -s rules/03_phylogeny.smk -p msa --cores 6 --rerun-incomplete
