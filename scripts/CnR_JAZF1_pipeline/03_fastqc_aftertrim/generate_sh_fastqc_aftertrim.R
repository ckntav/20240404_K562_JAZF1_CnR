setwd("/Users/chris/Desktop/20240404_K562_JAZF1_CnR")

library(tidyverse)

##### module load fastqc

#
fastq_list_filename <- "20240404_CnR_JAZF1_fastq_list.txt"
df <- read_tsv(file.path("input", "cnr_JAZF1", fastq_list_filename))
fastq_folder <- "cnr_JAZF1"
output_pipeline_dir <- "cnr-pipeline_JAZF1-GRCh38_PE"
script_pipeline_dir <- "CnR_JAZF1_pipeline"
workdir <- "/home/chris11/projects/def-stbil30/chris11/20240404_K562_JAZF1_CnR"

#
header_sh <- c("#!/bin/sh",
               "#SBATCH --time=3:00:00",
               "#SBATCH --nodes=1",
               "#SBATCH --ntasks-per-node=1",
               "#SBATCH --cpus-per-task=4",
               "#SBATCH --mem-per-cpu=8G",
               "#SBATCH --account=def-stbil30",
               "#SBATCH --mail-user=christophe.tav@gmail.com",
               "#SBATCH --mail-type=ALL")

fastqc_path <- "/cvmfs/soft.computecanada.ca/easybuild/software/2023/x86-64-v3/Core/fastqc/0.12.1/fastqc"

for (i in 1:nrow(df)) {
  sample_name <- df$sample_name[i]
  # message("# ", i, " | ", sample_name)
  
  output_fastp_dir <- file.path(workdir, "raw", fastq_folder, "fastp_output")
  
  ##### R1
  # message(" > R1")
  fastq_R1_filename <- paste0(sample_name, "_1.fastq.gz")
  fastq_R1_filepath <- file.path(output_fastp_dir, fastq_R1_filename )
  output_fastqc_R1_path <- file.path(workdir, "output", output_pipeline_dir, "fastqc_aftertrim_output", paste(sep = "_", sample_name, "R1"))
  call_mkdir_R1 <- paste("mkdir", "-p", output_fastqc_R1_path)
  
  #
  call_fastqc_R1 <- paste(fastqc_path,
                          "--outdir", output_fastqc_R1_path,
                          "--format", "fastq",
                          fastq_R1_filepath)
  
  #
  file_sh1 <- file.path("scripts", script_pipeline_dir, "03_fastqc_aftertrim", "batch_sh",
                       paste0("fastqc_aftertrim_", sample_name, "_R1.sh"))
  message("sbatch ", file_sh1)
  fileConn1 <- file(file_sh1)
  writeLines(c(header_sh, "\n", call_mkdir_R1, "\n", call_fastqc_R1), fileConn1)
  close(fileConn1)
  
  ##### R2
  #
  # message(" > R2")
  fastq_R2_filename <- paste0(sample_name, "_2.fastq.gz")
  fastq_R2_filepath <- file.path(output_fastp_dir, fastq_R2_filename)
  output_fastqc_R2_path <- file.path(workdir, "output", output_pipeline_dir, "fastqc_aftertrim_output", paste(sep = "_", sample_name, "R2"))
  call_mkdir_R2 <- paste("mkdir", "-p", output_fastqc_R2_path)
  
  #
  call_fastqc_R2 <- paste(fastqc_path,
                          "--outdir", output_fastqc_R2_path,
                          "--format", "fastq",
                          fastq_R2_filepath)
  
  #
  file_sh2 <- file.path("scripts", script_pipeline_dir, "03_fastqc_aftertrim", "batch_sh",
                        paste0("fastqc_aftertrim_", sample_name, "_R2.sh"))
  message("sbatch ", file_sh2)
  fileConn2 <- file(file_sh2)
  writeLines(c(header_sh, "\n", call_mkdir_R2, "\n", call_fastqc_R2), fileConn2)
  close(fileConn2)
}


