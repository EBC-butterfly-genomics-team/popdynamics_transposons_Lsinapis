#Here, we wanted to check the frequency of each consensus sequence. This would give us the chance to compare sequences with frequency.
#Since, the data was too big, I had divided them into 3 different sub-files. Calculations have been made for 3 different files and then merged.
#The selection for manual curation has been made according to this result. We've selected 150 most common consensus sequences in our genome for manual curation.

library(readxl)
library(writexl)
library(plyr)

data1 <- read_excel("rmsk_out1.xlsx")
data2 <- read_excel("rmsk_out2.xlsx")
data3 <- read_excel("rmsk_out3.xlsx")

count1 <- count(data1$subj_hit)
count2 <- count(data2$subj_hit)
count3 <- count(data3$subj_hit)

write_xlsx(count1,"c1.xlsx")
write_xlsx(count2,"c2.xlsx")
write_xlsx(count3,"c3.xlsx")

#I merged c1,c2,c3 all together at c1.xlsx (manually).
all_dat <- read_excel("c1.xlsx")
all_count <- aggregate(freq ~ x, data=all_dat, sum)
write_xlsx(all_count, "repeats_count.xlsx")