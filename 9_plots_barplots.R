# Load required R packages
library(ggplot2)
library(plyr)
library(reshape2)
library(readxl)
library(cowplot)
library(ggpubr)

res1 <- read_excel("results2.xlsx")
res2 <- read_excel("results2_2.xlsx")


sd1 = sd(res2$DNA)
mean1 = mean(res2$DNA)

mean2= mean(res2$LINE)
sd2 = sd(res2$LINE)

mean3 = mean(res2$SINE)
sd3 = sd(res2$SINE)

mean4 = mean(res2$LTR)
sd4 = sd(res2$LTR)

mean5 = mean(res2$PLE)
sd5 = sd(res2$PLE)

mean6 = mean(res2$Unknown)
sd6 = sd(res2$Unknown)

TEs <- c("DNA", "LINE", "SINE", "LTR", "PLE", "Unknown")
Insertions <- c(mean1,mean2,mean3,mean4,mean5,mean6)
sds <- c(sd1,sd2,sd3,sd4,sd5,sd6)

data <- data.frame(TEs, Insertions,sds)

g1 = ggplot(data) +
  geom_bar( aes(x=TEs, y=Insertions), stat="identity",fill = "skyblue", alpha=0.7, ) +
  ylim(c(0,8000))+
  labs(y="Number of Insertions", x="Transposable Elements") +
  geom_errorbar( aes(x=TEs, ymin=Insertions-sds, ymax=Insertions+sds), width=0.4, colour="purple", alpha=0.9, size=1.3)
g1 = g1+theme(axis.text=element_text(size=14),
         axis.title=element_text(size=22,face="bold"))
g1

g2 = ggplot(data) +
  geom_bar( aes(x=TEs, y=Insertions), stat="identity",fill = "skyblue", alpha=0.7, ) +
  ylim(c(0,200))+
  labs(y="Insertions per cons.", x="Transposable Elements") +
  geom_errorbar( aes(x=TEs, ymin=Insertions-sds, ymax=Insertions+sds), width=0.4, colour="purple", alpha=0.9, size=1.3)
g2 = g2+theme(axis.text=element_text(size=14),
      axis.title=element_text(size=22,face="bold"))
g2

ggarrange(g1, g2 + rremove("x.text"), 
          labels = c("A", "B"),
          ncol = 2, nrow = 1)