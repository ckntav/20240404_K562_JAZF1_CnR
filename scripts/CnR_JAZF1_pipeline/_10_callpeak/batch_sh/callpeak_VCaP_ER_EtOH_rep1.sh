#!/bin/sh
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=8G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


mkdir -p /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/peak_call/VCaP_ER_EtOH_rep1


touch /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/peak_call/VCaP_ER_EtOH_rep1


macs2 callpeak --format BAMPE --gsize 2479938032.8 --treatment /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_ER_EtOH_rep1/VCaP_ER_EtOH_rep1.sorted.markdup.filtered.bam --control /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_IgG_EtOH_rep1/VCaP_IgG_EtOH_rep1.sorted.markdup.filtered.bam --name /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/peak_call/VCaP_ER_EtOH_rep1/VCaP_ER_EtOH_rep1 >& /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/peak_call/VCaP_ER_EtOH_rep1/VCaP_ER_EtOH_rep1.diag.macs.out
