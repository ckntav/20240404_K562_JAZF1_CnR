#!/bin/sh

sbatch scripts/CnR_JAZF1_pipeline/04_align_with_bowtie2/batch_sh/align_with_bowtie2_K562_JAZF1_rep1.sh
sbatch scripts/CnR_JAZF1_pipeline/04_align_with_bowtie2/batch_sh/align_with_bowtie2_K562_JAZF1_rep2.sh
sbatch scripts/CnR_JAZF1_pipeline/04_align_with_bowtie2/batch_sh/align_with_bowtie2_K562_IgG_rep1.sh
sbatch scripts/CnR_JAZF1_pipeline/04_align_with_bowtie2/batch_sh/align_with_bowtie2_K562_IgG_rep2.sh