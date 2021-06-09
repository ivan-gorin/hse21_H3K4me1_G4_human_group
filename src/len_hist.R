
cwd = 'C:\\Users\\Ivan\\Documents\\hse21_H3K4me1_G4_human_group\\src'
setwd(cwd)
source('lib.R')

###
NAME <- 'merged.A549_GM23338_HCT116_intersect_G4'
###

bed_df <- read.delim(paste0(DATA_DIR, NAME, '.bed'), as.is = TRUE, header = FALSE)
colnames(bed_df) <- c('chrom', 'start', 'end')
bed_df$len <- bed_df$end - bed_df$start

max(bed_df$len)


ggplot(bed_df) +
  aes(x = len) +
  geom_histogram() +
  ggtitle(NAME, subtitle = sprintf('Number of peaks = %s', nrow(bed_df))) +
  theme_bw()
ggsave(paste0('len_hist.', NAME, '.jpg'), path = OUT_DIR)

