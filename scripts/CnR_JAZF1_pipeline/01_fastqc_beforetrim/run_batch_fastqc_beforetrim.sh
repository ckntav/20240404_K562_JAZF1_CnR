#!/bin/sh

sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_JAZF1_rep1_R1.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_JAZF1_rep1_R2.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_JAZF1_rep2_R1.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_JAZF1_rep2_R2.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_IgG_rep1_R1.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_IgG_rep1_R2.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_IgG_rep2_R1.sh
sbatch scripts/CnR_JAZF1_pipeline/01_fastqc_beforetrim/batch_sh/fastqc_beforetrim_K562_IgG_rep2_R2.sh