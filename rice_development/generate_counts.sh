mkdir genome && cd genome
wget https://rapdb.dna.affrc.go.jp/download/archive/irgsp1/IRGSP-1.0_genome.fasta.gz
wget https://rapdb.dna.affrc.go.jp/download/archive/irgsp1/IRGSP-1.0_representative_transcript_exon_2020-12-02.gtf.gz
gunzip *
kb ref -i index.idx -g t2g.txt -f1 IRGSP-1.0_genome.fasta IRGSP-1.0_representative_transcript_exon_2020-12-02.gtf
cd ..
wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR13853439/SRR13853439
parallel-fastq-dump --sra-id SRR13853439 --threads 40 --outdir . --split-files --gzip
kb count -i genome/index.idx -g genome/t2g.txt -x 10xv3 --h5ad -t 6 SRR13853439_1.fastq.gz SRR13853439_2.fastq.gz