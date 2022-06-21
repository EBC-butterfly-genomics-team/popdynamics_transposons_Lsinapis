# Load required R packages
library(ggplot2)
library(plyr)
library(reshape2)
library(readxl)
library(cowplot)

data <- read_excel("depth.xlsx")

g1 = ggplot(data = data, aes(x=IND, y=depth))+
  ylim(c(10,23))+
  labs(y="Read Depth", x="Individuals")+
  geom_point(colour = "red", size = 4)
g1 = g1+theme(axis.text=element_text(size=6),
              axis.title=element_text(size=20,face="bold"))
g1