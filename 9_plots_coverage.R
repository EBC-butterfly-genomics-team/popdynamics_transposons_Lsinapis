# Load required R packages
library(ggplot2)
library(plyr)
library(reshape2)
library(readxl)
library(cowplot)

data <- read_excel("coverage.xlsx")

g1 = ggplot(data = data, aes(x=IND, y=coverage))+
  ylim(c(82,88))+
  labs(y="Percentage of covered bases", x="Individuals")+
  geom_point(colour = "red", size = 4)
g1 = g1+theme(axis.text=element_text(size=6),
              axis.title=element_text(size=20,face="bold"))
g1