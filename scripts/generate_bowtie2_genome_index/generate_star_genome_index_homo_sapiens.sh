#!/bin/sh
#SBATCH --time=24:00:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=64G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL

module load bowtie2

mkdir -p /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/input/bowtie2_genome_index_homo_sapiens

/cvmfs/soft.computecanada.ca/easybuild/software/2023/x86-64-v3/Compiler/gcccore/bowtie2/2.5.2/bin/bowtie2-build \
	/home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/input/ensembl_fasta_homo_sapiens/Homo_sapiens.GRCh38.dna.primary_assembly.fa \
	/home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/input/bowtie2_genome_index_homo_sapiens/Homo_sapiens.GRCh38 2> /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/input/ensembl_fasta_homo_sapiens/build_index_Homo_sapiens.GRCh38.log