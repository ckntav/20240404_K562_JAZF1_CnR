#!/bin/sh

mkdir -p /home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR/output/cnr-pipeline_JAZF1-GRCh38_PE/tracks_byReplicate

sbatch scripts/CnR_JAZF1_pipeline/09_bamToBigwig/batch_sh/bamToBigwig_K562_JAZF1_rep1.sh
sbatch scripts/CnR_JAZF1_pipeline/09_bamToBigwig/batch_sh/bamToBigwig_K562_JAZF1_rep2.sh
sbatch scripts/CnR_JAZF1_pipeline/09_bamToBigwig/batch_sh/bamToBigwig_K562_IgG_rep1.sh
sbatch scripts/CnR_JAZF1_pipeline/09_bamToBigwig/batch_sh/bamToBigwig_K562_IgG_rep2.sh