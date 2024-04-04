#!/bin/sh
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=8G
#SBATCH --account=def-stbil30
#SBATCH --mail-user=christophe.tav@gmail.com
#SBATCH --mail-type=ALL


/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/sambamba/0.8.0/sambamba sort /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_IgG_R1881xE2_rep1/VCaP_IgG_R1881xE2_rep1.bam --out /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_IgG_R1881xE2_rep1/VCaP_IgG_R1881xE2_rep1.sorted.bam


/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/sambamba/0.8.0/sambamba index /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_IgG_R1881xE2_rep1/VCaP_IgG_R1881xE2_rep1.sorted.bam /home/chris11/projects/def-stbil30/chris11/20240318_CnR_batch2/output/cnr-pipeline_batch2-GRCh38_PE/alignment/VCaP_IgG_R1881xE2_rep1/VCaP_IgG_R1881xE2_rep1.sorted.bam.bai
