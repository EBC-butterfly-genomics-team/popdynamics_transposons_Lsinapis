#This script is used to eliminate sequences based on 95-80-98 rule. The ratios can be changed to adopt this code to any other similarity rule.
library(readxl)
library(writexl)
data <- read_excel("rawdata.xlsx")

#remove TEs shorter than 80bp
removed_short <- data[data$query_hit_len < 80,]
write_xlsx(removed_short, "removed_short_TEs.xlsx")
data <- data[data$query_hit_len > 80,]
write_xlsx(data, "rmask_shortseli.xlsx")

#Remove similar consensus sequences based on 95-80-98 rule (Flutre et al. 2011).
#criteria for this:
#(shorter than 80bp sequences were already eliminated).
#more than 95% seq similarity,
#more than 98% seq_len/tot_seq_len + more than 80% query_len/tot_query_len
removed_sim <- data[data$`div(perc)` < 5 & data$`subj_hit/tot` > 0.98,]
write_xlsx(removed_sim, "removed_sim_TEs.xlsx")

#leave the repeats longer than 80 bp and less similar than 80%
data <- data[data$`div(perc)` > 20 & data$`query_hit/tot` < 0.8 & data$`subj_hit/tot` < 0.8,]
write_xlsx(data, "rmask_shosims_eliminated.xlsx")