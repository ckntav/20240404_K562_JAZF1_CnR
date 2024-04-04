#!/bin/sh
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=8G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


bamCoverage -e --binSize 50 -p 16 --normalizeUsing RPKM --blackListFileName /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/input/ENCODE_exclusion_list_regions_ENCFF356LFX.bed -b /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_IgG_R1881_rep1/VCaP_IgG_R1881_rep1.sorted.markdup.filtered.bam -o /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/tracks_byReplicate/VCaP_IgG_R1881_rep1_RPKM.bw
