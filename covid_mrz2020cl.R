#install.packages("pid")
library(pid)

#--------------------------------------------------------------------------------------

#                                                               COVID19  Chile Marzo

#--------------------------------------------------------------------------------------

data <- read.csv("C:/2020_04ABRIL/analisiscovid/data.csv")

f<-data$Nfallecidos
a<-data$año
DL<-data$Ddias
cV19<-data$COvid19

model.f<-lm(f ~ DL*cV19 )
summary(model.f)
paretoPlot(model.f)

