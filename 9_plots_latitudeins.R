# Load required R packages
library(ggplot2)
library(plyr)
library(reshape2)
library(readxl)
library(cowplot)

data <- read_excel("latitude1_total.xlsx")
data2 <- read_excel("latitude2_dna.xlsx")
data3 <- read_excel("latitude3_line.xlsx")
data4 <- read_excel("latitude4_ltr.xlsx")
data6 <- read_excel("latitude6_ple.xlsx") 
data7 <- read_excel("latitude7_sine.xlsx")
data8 <- read_excel("latitude8_unk.xlsx")

g1 = ggplot(data = data, aes(x=Latitude, y=nonref_ins))+
  xlab("Latitude")+
  ylim(c(10000,15000))+
  labs(y="Total Insertions", x="Latitude")+
  geom_point(colour = "red", size = 4)
g1 = g1+theme(axis.text=element_text(size=22),
        axis.title=element_text(size=22,face="bold"))

g2 = ggplot(data = data2, aes(x=Latitude, y=DNA))+
  xlab("Latitude")+
  ylim(c(4000,6500))+
  labs(y="DNA Insertions", x="Latitude")+
  geom_point(colour = "lightblue", size = 4)
g2 = g2+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))

g3 = ggplot(data = data3, aes(x=Latitude, y=LINE))+
  xlab("Latitude")+
  ylim(c(5500,8300))+
  labs(y="LINE Insertions", x="Latitude")+
  geom_point(colour = "green", size = 4)
g3 = g3+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))

g4 = ggplot(data = data4, aes(x=Latitude, y=LTR))+
  xlab("Latitude")+
  ylim(c(150,300))+
  labs(y="LTR Insertions", x="Latitude")+
  geom_point(colour = "purple", size = 4)
g4 = g4+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))

#g5 = ggplot(data = data5, aes(x=Latitude, y=nonLTR))+
  #xlab("Latitude")+
  #ylim(c(2200,3300))+
  #labs(y="non-LTR Insertions", x="Latitude")+
  #geom_point(colour = "orange", size = 4)
#g5 = g5+theme(axis.text=element_text(size=22),
              #axis.title=element_text(size=22,face="bold"))

g6 = ggplot(data = data6, aes(x=Latitude, y=PLE))+
  xlab("Latitude")+
  ylim(c(100,200))+
  labs(y="PLE Insertions", x="Latitude")+
  geom_point(colour = "blue4", size = 4)
g6 = g6+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))

g7 = ggplot(data = data7, aes(x=Latitude, y=SINE))+
  xlab("Latitude")+
  ylim(c(2900,4600))+
  labs(y="SINE Insertions", x="Latitude")+
  geom_point(colour = "coral4", size = 4)
g7 = g7+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))

g8 = ggplot(data = data8, aes(x=Latitude, y=Unknown))+
  xlab("Latitude")+
  ylim(c(1000,1600))+
  labs(y="Unknown Insertions", x="Latitude")+
  geom_point(colour = "grey4", size = 4)
g8 = g8+theme(axis.text=element_text(size=22),
              axis.title=element_text(size=22,face="bold"))

plot_grid(g1,g2,g3,g4,g6,g7,g8 + rremove("x.text"),
          labels = c("A", "B", "C","D","E","F","G"),
          ncol = 4, nrow = 2)

cor.test(data8$Latitude,data8$Unknown, method="spearman")