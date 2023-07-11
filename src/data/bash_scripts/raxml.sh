#! /bin/bash

#SBATCH --gres=lscratch:500
#SBATCH --mem=10g
#SBATCH --cpus-per-task=12
#SBATCH --time=240:00:00
#SBATCH --job-name=rg

source /data/$USER/conda/etc/profile.d/conda.sh
conda activate snakemake

raxml-ng --all \
--msa ../../data/processed/searches/combined/gsd_all_seqs.renamed.aln \
--model LG+G8+F --tree pars{10} --bs-trees 200 --threads $SLURM_CPUS_PER_TASK

