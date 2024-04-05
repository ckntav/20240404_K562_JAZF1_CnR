#!/bin/sh
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=8G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


mkdir -p /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/peak_call/K562_JAZF1_rep1


touch /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/peak_call/K562_JAZF1_rep1


macs2 callpeak --format BAMPE --gsize 2479938032.8 --treatment /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/alignment/K562_JAZF1_rep1/K562_JAZF1_rep1.sorted.markdup.filtered.bam --control /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/alignment/K562_IgG_rep1/K562_IgG_rep1.sorted.markdup.filtered.bam --name /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/peak_call/K562_JAZF1_rep1/K562_JAZF1_rep1 >& /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/peak_call/K562_JAZF1_rep1/K562_JAZF1_rep1.diag.macs.out
