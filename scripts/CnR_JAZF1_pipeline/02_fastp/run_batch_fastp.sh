#!/bin/sh

sbatch scripts/CnR_JAZF1_pipeline/02_fastp/batch_sh/fastp_K562_JAZF1_rep1.sh
sbatch scripts/CnR_JAZF1_pipeline/02_fastp/batch_sh/fastp_K562_JAZF1_rep2.sh
sbatch scripts/CnR_JAZF1_pipeline/02_fastp/batch_sh/fastp_K562_IgG_rep1.sh
sbatch scripts/CnR_JAZF1_pipeline/02_fastp/batch_sh/fastp_K562_IgG_rep2.sh