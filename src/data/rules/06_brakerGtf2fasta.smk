### no time for a proper snakemake -- but to do before final pap
# I had to run the jobs manually -- snakemake jobs failed

cd ~/scratch/gasdermins/SP13/braker2
gffread braker.gtf -g ../sp13.fna -w braker.transcripts.fa
cd ~/scratch/gasdermins/SP15/braker2
gffread braker.gtf -g ../sp15.fna -w braker.transcripts.fa
~/scratch/gasdermins/SP22/braker2
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP22

cd ~/scratch/gasdermins/SP24/braker2
gffread braker.gtf -g ../sp24.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP24

cd ~/scratch/gasdermins/SP31/braker2
gffread braker.gtf -g ../sp31.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP31

cd ~/scratch/gasdermins/SP32/braker2
gffread braker.gtf -g ../sp32.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP32

cd ~/scratch/gasdermins/SP36/braker2
gffread braker.gtf -g ../sp36.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP36

cd ~/scratch/gasdermins/SP38/braker2
gffread braker.gtf -g ../sp38.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP38

cd ~/scratch/gasdermins/SP4/braker2
gffread braker.gtf -g ../sp4.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP4

cd ~/scratch/gasdermins/SP5/braker2
gffread braker.gtf -g ../sp5.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP5

cd ~/scratch/gasdermins/SP8/braker2
gffread braker.gtf -g ../sp8.fna -w braker.transcripts.fa
cp braker.* augustus.hints.* ~/data/gasdermins/shared/braker2/SP8


