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
lm(formula = depth ~ scale(nonref_ins), data = data1)
reg1 = lm(formula = depth ~ scale(nonref_ins), data = data1)
coeff1=coefficients(reg1)
res1 = residuals(reg1)
eq1 = paste0("y = ", round(coeff1[2],5), "*x + ", round(coeff1[1],1))

try <- data.frame(data1$depth, res1)

g1 = ggplot(data = try, aes(x=data1.depth, y=res1))+
  labs(y="Residuals", x="Read Depth")+
  geom_point(colour = "red", size = 4)
g1 = g1+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g1
#####################
lm(formula = depth ~ scale(DNA), data = data)
reg2 = lm(formula = depth ~ scale(DNA), data = data)
coeff2=coefficients(reg2)
eq2 = paste0("y = ", round(coeff2[2],5), "*x + ", round(coeff2[1],1))

g2 = ggplot(data = data, aes(x=depth, y=scale(DNA)))+
  labs(y="DNA Insertions", x="Read Depth")+
  geom_point(colour = "lightblue", size = 4)
g2 = g2+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g2 = g2 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq2)
g2
#################
lm(formula = depth ~ scale(LINE), data = data)
reg3 = lm(formula = depth ~ scale(LINE), data = data)
coeff3=coefficients(reg3)
eq3 = paste0("y = ", round(coeff3[2],5), "*x + ", round(coeff3[1],1))

g3 = ggplot(data = data, aes(x=depth, y=scale(LINE)))+
  labs(y="LINE Insertions", x="Read Depth")+
  geom_point(colour = "green", size = 4)
g3 = g3+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g3 = g3 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq3)
g3
#################
lm(formula = depth ~ scale(LTR), data = data)
reg4 = lm(formula = depth ~ scale(LTR), data = data)
coeff4=coefficients(reg4)
eq4 = paste0("y = ", round(coeff4[2],5), "*x + ", round(coeff4[1],1))

g4 = ggplot(data = data, aes(x=depth, y=scale(LTR)))+
  labs(y="LTR Insertions", x="Read Depth")+
  geom_point(colour = "purple", size = 4)
g4 = g4+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g4 = g4 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq4)
g4
###############
#lm(formula = depth ~ scale(nonLTR), data = data)
#reg5 = lm(formula = depth ~ scale(nonLTR), data = data)
#coeff5=coefficients(reg5)
#eq5 = paste0("y = ", round(coeff5[2],5), "*x + ", round(coeff5[1],1))

#g5 = ggplot(data = data, aes(x=depth, y=scale(nonLTR)))+
  labs(y="non-LTR Insertions", x="Read Depth")+
  geom_point(colour = "orange", size = 4)
#g5 = g5+theme(axis.text=element_text(size=12),
              #axis.title=element_text(size=12,face="bold"))
#g5 = g5 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq5)
#g5
##################
lm(formula = depth ~ scale(PLE), data = data)
reg6 = lm(formula = depth ~ scale(PLE), data = data)
coeff6=coefficients(reg6)
eq6 = paste0("y = ", round(coeff6[2],5), "*x + ", round(coeff6[1],1))

g6 = ggplot(data = data, aes(x=depth, y=scale(PLE)))+
  labs(y="PLE Insertions", x="Read Depth")+
  geom_point(colour = "blue4", size = 4)
g6 = g6+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g6 = g6 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq6)
g6
##################
lm(formula = depth ~ scale(SINE), data = data)
reg7 = lm(formula = depth ~ scale(SINE), data = data)
coeff7=coefficients(reg7)
eq7 = paste0("y = ", round(coeff7[2],5), "*x + ", round(coeff7[1],1))

g7 = ggplot(data = data, aes(x=depth, y=scale(SINE)))+
  labs(y="SINE Insertions", x="Read Depth")+
  geom_point(colour = "coral4", size = 4)
g7 = g7+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g7 = g7 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq7)
g7
####################
lm(formula = depth ~ scale(Unknown), data = data)
reg8 = lm(formula = depth ~ scale(Unknown), data = data)
coeff8=coefficients(reg8)
eq8 = paste0("y = ", round(coeff8[2],5), "*x + ", round(coeff8[1],1))

g8 = ggplot(data = data, aes(x=depth, y=scale(Unknown)))+
  labs(y="Unknown Insertions", x="Read Depth")+
  geom_point(colour = "grey4", size = 4)
g8 = g8+theme(axis.text=element_text(size=12),
              axis.title=element_text(size=12,face="bold"))
g8 = g8 + stat_smooth(method="lm", se=FALSE) + ggtitle(eq8)
g8

plot_grid(g1,g2,g3,g4,g5,g6,g7,g8 + rremove("x.text"),
          labels = c("A", "B", "C","D","E","F","G","H"),
          ncol = 4, nrow = 2)