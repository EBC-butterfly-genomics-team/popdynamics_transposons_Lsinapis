# Load required R packages
library(ggplot2)
library(plyr)
library(reshape2)
library(readxl)
library(cowplot)

data <- read_excel("cov_insertions.xlsx")

g1 = ggplot(data = data, aes(x=coverage, y=nonref_ins))+
  labs(y="Insertions", x="Percentage of covered bases")+
  ylim(c(11000,14500))+
  geom_point(colour = "blue4", size = 4)
g1 = g1+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))
g1