#Here, we wanted to check the divergence of each consensus sequence. This would give us the chance to compare sequences with percent divergence.
#Since, the data was too big, I had divided them into 3 different sub-files. Calculations have been made for 3 different files and then merged.

library(readxl)
library(writexl)
library(plyr)

data1 <- read_excel("seqdiv1.xlsx")
data2 <- read_excel("seqdiv2.xlsx")
data3 <- read_excel("seqdiv3.xlsx")

res1 <- aggregate(data1[,1], list(data1$subj_hit), mean)
res2 <- aggregate(data2[,1], list(data2$subj_hit), mean)
res3 <- aggregate(data3[,1], list(data3$subj_hit), mean)

write_xlsx(res1, "divperc1.xlsx")
write_xlsx(res2, "divperc2.xlsx")
write_xlsx(res3, "divperc3.xlsx")

#divperc1/2/3 manually merged and put on the divperc_tot.xlsx
total <- read_excel("divperc_tot.xlsx")
tot_res <- aggregate(total[,2], list(total$Group.1), mean)
write_xlsx(tot_res,"final_div.xlsx")