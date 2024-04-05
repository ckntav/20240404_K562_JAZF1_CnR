setwd("/Users/chris/Desktop/20240404_K562_JAZF1_CnR")

library(tidyverse)
library(GenomicRanges)
library(kableExtra)
source("scripts/ckn_utils/ckn_utils_overlaps.R")

#
K562_JAZF1_rep1 <- rtracklayer::import("output/cnr-pipeline_JAZF1-GRCh38_PE/peak_call/K562_JAZF1_rep1/K562_JAZF1_rep1_peaks.narrowPeak.stdchr.bed")
K562_JAZF1_rep2 <- rtracklayer::import("output/cnr-pipeline_JAZF1-GRCh38_PE/peak_call/K562_JAZF1_rep2/K562_JAZF1_rep2_peaks.narrowPeak.stdchr.bed")

K562_JAZF1_peaks <- GRangesList(
  "K562_JAZF1_rep1" = K562_JAZF1_rep1,
  "K562_JAZF1_rep2" = K562_JAZF1_rep2
)

#
sapply(K562_JAZF1_peaks, length) %>% as.data.frame() %>%
  set_names("number_of_peaks") %>% kbl %>%
  kable_classic_2(full_width = F, html_font = "Arial", font_size = 20)

#
plotVenn3(K562_JAZF1_peaks, labels = FALSE, legend = TRUE, quantities_val = list(type = c("counts")))

#
combMat_JAZF1 <- generate_comb_mat(K562_JAZF1_peaks)
displayUpSet(combMat_JAZF1)