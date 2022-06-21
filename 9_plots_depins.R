# Load required R packages
library(ggplot2)
library(plyr)
library(reshape2)
library(readxl)
library(cowplot)

data1 <- read_excel("depth1_total.xlsx")
data2 <- read_excel("depth2_dna.xlsx")
data3 <- read_excel("depth3_line.xlsx")
data4 <- read_excel("depth4_ltr.xlsx")
#data5 <- read_excel("depth5_nonltr.xlsx")
data6 <- read_excel("depth6_ple.xlsx")
data7 <- read_excel("depth7_sine.xlsx")
data8 <- read_excel("depth8_unk.xlsx")


##################
g1 = ggplot(data = data1, aes(x=depth, y=nonref_ins))+
  xlim(c(10.5,22.5))+
  ylim(c(11000,14250))+
  labs(y="Total Insertions", x="Read Depth")+
  geom_point(colour = "red", size = 4)
g1 = g1+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g1
#####################
g2 = ggplot(data = data2, aes(x=depth, y=DNA))+
  xlim(c(10.5,22.5))+
  ylim(c(4250,6250))+
  labs(y="DNA Insertions", x="Read Depth")+
  geom_point(colour = "lightblue", size = 4)
g2 = g2+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g2
#################
g3 = ggplot(data = data3, aes(x=depth, y=LINE))+
  xlim(c(10.5,22.5))+
  ylim(c(5500,8300))+
  labs(y="LINE Insertions", x="Read Depth")+
  geom_point(colour = "green", size = 4)
g3 = g3+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g3
#################
g4 = ggplot(data = data4, aes(x=depth, y=LTR))+
  xlim(c(10.5,22.5))+
  ylim(c(160,275))+
  labs(y="LTR Insertions", x="Read Depth")+
  geom_point(colour = "purple", size = 4)
g4 = g4+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g4
###############
#lm(formula = depth ~ scale(nonLTR), data = data)
#reg5 = lm(formula = depth ~ scale(nonLTR), data = data)
#coeff5=coefficients(reg5)
#eq5 = paste0("y = ", round(coeff5[2],5), "*x + ", round(coeff5[1],1))

#g5 = ggplot(data = data, aes(x=depth, y=scale(nonLTR)))+
  #labs(y="non-LTR Insertions", x="Read Depth")+
  #geom_point(colour = "orange", size = 4)
#g5 = g5+theme(axis.text=element_text(size=12),
              #axis.title=element_text(size=12,face="bold"))
#g5 = g5 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq5)
#g5
##################
g6 = ggplot(data = data6, aes(x=depth, y=PLE))+
  xlim(c(10.5,22.5))+
  ylim(c(100,200))+
  labs(y="PLE Insertions", x="Read Depth")+
  geom_point(colour = "blue4", size = 4)
g6 = g6+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g6
##################
g7 = ggplot(data = data7, aes(x=depth, y=SINE))+
  xlim(c(10.5,22.5))+
  ylim(c(2900,4600))+
  labs(y="SINE Insertions", x="Read Depth")+
  geom_point(colour = "coral4", size = 4)
g7 = g7+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g7
####################
g8 = ggplot(data = data8, aes(x=depth, y=Unknown))+
  xlim(c(10.5,22.5))+
  ylim(c(1050,1550))+
  labs(y="Unknown Insertions", x="Read Depth")+
  geom_point(colour = "grey4", size = 4)
g8 = g8+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=18,face="bold"))
g8

plot_grid(g1,g2,g3,g4,g6,g7,g8 + rremove("x.text"),
          labels = c("A", "B", "C","D","E","F","G"),
          ncol = 4, nrow = 2)