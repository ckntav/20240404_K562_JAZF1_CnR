setwd("/Users/chris/Desktop/20240318_CnR_batch2")

library(tidyverse)
library(GenomicRanges)

#
wdir_path <- "/Users/chris/Desktop/20240318_CnR_batch2"
output_pipeline_dir <- "cnr-pipeline_batch2-GRCh38_PE"
tracks_dir <- file.path(wdir_path, "output", output_pipeline_dir, "bigbed_byReplicate")
chromsizeshg38 <- file.path(wdir_path, "input/genome_annot/hg38.chrom.sizes")

#
fastq_list_filename <- "20240318_CnR_batch2_fastq_list.txt"
df <- read_tsv(file.path("input", "batch2", fastq_list_filename)) %>% 
  dplyr::filter(antibody != "IgG")
peaks_antibody_dir <- file.path(wdir_path, "output", output_pipeline_dir, "peak_call")

# for (i in (which(df$antibody != "WCE"))) {
for (i in 1:nrow(df)) {
  sample_name <- df$sample_name[i]
  antibody_factor <- df$antibody[i]
  condition_i <- df$condition[i]
  rep_i <- df$replicate[i]
  cell_line_i <- df$cell_line[i]
  message("# ", sample_name)
  
  #
  basename <- paste(cell_line_i, antibody_factor, condition_i, rep_i, sep = "_")
  
  input_bed <- paste0(basename, "_peaks.narrowPeak.stdchr.bed")
  input_path <- file.path(peaks_antibody_dir, basename, input_bed)
  output_bb <- str_replace(input_bed, pattern = "bed", replacement = "bb")
  output_path <- file.path(tracks_dir, output_bb)
  
  # 
  call_bedToBigBed <- paste("/Users/chris/Documents/software/bedToBigBed",
                            "-type=bed3+3",
                            input_path, chromsizeshg38, output_path)
  # message(call_bedToBigBed)
  system(call_bedToBigBed)
}
