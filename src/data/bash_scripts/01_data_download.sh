#! /bin/bash

module load sratoolkit/2.10.9

export WRKDIR=/home/cisseoh/data/gasdermins/data/external/ncbi

#prefetch --progress -O $WRKDIR/SP4 SRR5092313
#prefetch --progress -O $WRKDIR/SP9 SRR3200453
#prefetch --progress -O $WRKDIR/SP5 ERR1331670
#prefetch --progress -O $WRKDIR/SP8 SRR8270603
#prefetch --progress -O $WRKDIR/SP11 SRR11580492
#prefetch --progress -O $WRKDIR/SP12 SRR636852
#prefetch --progress -O $WRKDIR/SP13 SRR11458315
#prefetch --progress -O $WRKDIR/SP15 ERR2812428
#prefetch --progress -O $WRKDIR/SP22 SRR629636
#prefetch --progress -O $WRKDIR/SP24 SRR6180864
#prefetch --progress -O $WRKDIR/SP31 SRR513760
#prefetch --progress -O $WRKDIR/SP32 SRR2532444
#prefetch --progress -O $WRKDIR/SP36 SRR2131237
#prefetch --progress -O $WRKDIR/SP37 SRR8300886
#prefetch --progress -O $WRKDIR/SP38 ERR2215729

wget -O $WRKDIR/GCF_000349665.1_MesAur1.0_genomic.fna.gz -np https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/349/665/GCF_000349665.1_MesAur1.0/GCF_000349665.1_MesAur1.0_genomic.fna.gz
wget -O $WRKDIR/GCA_000181335.4_Felis_catus_9.0_genomic.fna.gz -np https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/181/335/GCA_000181335.4_Felis_catus_9.0/GCA_000181335.4_Felis_catus_9.0_genomic.fna.gz
wget -O $WRKDIR/GCF_000003625.3_OryCun2.0_genomic.fna.gz -np https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/003/625/GCF_000003625.3_OryCun2.0/GCF_000003625.3_OryCun2.0_genomic.fna.gz
wget -O $WRKDIR/GCA_009873245.3_mBalMus1.pri.v3_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/009/873/245/GCA_009873245.3_mBalMus1.pri.v3/GCA_009873245.3_mBalMus1.pri.v3_genomic.fna.gz
wget -O $WRKDIR/GCA_015220235.1_mChoDid1.pri_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/015/220/235/GCA_015220235.1_mChoDid1.pri/GCA_015220235.1_mChoDid1.pri_genomic.fna.gz
wget -O $WRKDIR/GCA_000296755.1_EriEur2.0_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/296/755/GCA_000296755.1_EriEur2.0/GCA_000296755.1_EriEur2.0_genomic.fna.gz
wget -O $WRKDIR/GCA_000001905.1_Loxafr3.0_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/001/905/GCA_000001905.1_Loxafr3.0/GCA_000001905.1_Loxafr3.0_genomic.fna.gz
wget -O $WRKDIR/GCF_004115215.1_mOrnAna1.p.v1_genomic.fna.gz -np https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/004/115/215/GCF_004115215.1_mOrnAna1.p.v1/GCF_004115215.1_mOrnAna1.p.v1_genomic.fna.gz
wget -O $WRKDIR/GCA_000281125.4_ASM28112v4_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/281/125/GCA_000281125.4_ASM28112v4/GCA_000281125.4_ASM28112v4_genomic.fna.gz
wget -O $WRKDIR/GCA_000230535.1_PelSin_1.0_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/230/535/GCA_000230535.1_PelSin_1.0/GCA_000230535.1_PelSin_1.0_genomic.fna.gz
wget -O $WRKDIR/GCF_000165045.1_Callorhinchus_milii-6.1.3_genomic.fna.gz -np https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/165/045/GCF_000165045.1_Callorhinchus_milii-6.1.3/GCF_000165045.1_Callorhinchus_milii-6.1.3_genomic.fna.gz
wget -O $WRKDIR/GCA_010993605.1_kPetMar1.pri_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/010/993/605/GCA_010993605.1_kPetMar1.pri/GCA_010993605.1_kPetMar1.pri_genomic.fna.gz
wget -O $WRKDIR/GCA_001039355.2_LinAna2.0_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/001/039/355/GCA_001039355.2_LinAna2.0/GCA_001039355.2_LinAna2.0_genomic.fna.gz
wget -O $WRKDIR/GCA_902652985.1_xPecMax1.1_genomic.fna.gz -np ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/902/652/985/GCA_902652985.1_xPecMax1.1/GCA_902652985.1_xPecMax1.1_genomic.fna.gz
wget -O $WRKDIR/GCF_000150275.1_v1.0_genomic.fna.gz -np https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/150/275/GCF_000150275.1_v1.0/GCF_000150275.1_v1.0_genomic.fna.gz

