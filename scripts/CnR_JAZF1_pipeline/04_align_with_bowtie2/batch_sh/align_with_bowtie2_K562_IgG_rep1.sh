#!/bin/sh
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=32G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


mkdir -p /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/alignment/K562_IgG_rep1


/cvmfs/soft.computecanada.ca/easybuild/software/2023/x86-64-v3/Compiler/gcccore/bowtie2/2.5.2/bin/bowtie2 -1 /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/raw/cnr_JAZF1/fastp_output/K562_IgG_rep1_1.fastq.gz -2 /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/raw/cnr_JAZF1/fastp_output/K562_IgG_rep1_2.fastq.gz -x /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/input/bowtie2_genome_index_homo_sapiens/Homo_sapiens.GRCh38 --local --very-sensitive-local --no-mixed --no-discordant --phred33 -I 10 -X 700 --threads 8 2> /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/alignment/K562_IgG_rep1/K562_IgG_rep1.bowtie2.log | /cvmfs/soft.computecanada.ca/easybuild/software/2023/x86-64-v3/Compiler/gcccore/samtools/1.18/bin/samtools view -bS > /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/alignment/K562_IgG_rep1/K562_IgG_rep1.bam
