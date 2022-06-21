#This is an R script used to eliminate satellite elements from our library. It is used to see the satellite elements.
#We didn't discard any satellite elements, but just checked. However, this can be used for another studies.

library(readxl)
library(writexl)
data <- read_excel("0_rmask_raw.xlsx")
write_xlsx(data, "try.xlsx")

#remove satellites (the rows that don't have tot_subj_len)
library(tidyr)
data <- data %>% drop_na(tot_subj_len)
write_xlsx(data, "try2.xlsx")
### 2822-2119=703 rows were found to be satellite elements###

#save satellite elements
satellites <- data[is.na(data$tot_subj_len) == TRUE & is.na(data$SW_score) == FALSE,]
write_xlsx(satellites, "elim_satellites.xlsx")