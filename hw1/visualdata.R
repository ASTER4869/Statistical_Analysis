#install.packages("ggplot2")
library(MASS)
library(ggplot2)
data("faithful")
?data

names(faithful)


plot(faithful)
eruptions = faithful$eruptions
waiting=faithful$waiting

plot(x=waiting,y=eruptions,cex=0.8,xlab = "Waiting",ylab = "Eruptions")


ggplot(data=faithful,aes(x=waiting,y=eruptions))+
  geom_point()+
  geom_smooth(method=lm)



ggplot(data=faithful,aes(x=waiting))+
  geom_histogram(binwidth = 2,fill="white",color="black")


ggplot(data=faithful,aes(x=waiting))+
  geom_line(stat="density",adjust=0.25,color="red")+
  geom_line(stat="density")+
  geom_line(stat="density",adjust=2,color="blue")

ggplot(data=faithful,aes(x=waiting,y=..density..))+
  geom_histogram(fill="cornsilk",color="grey60",size=0.2)+
  geom_density()+
  xlim(35,105)


ggplot(data=faithful,aes(x=eruptions,y=..density..))+
  geom_histogram(fill="cornsilk",color="grey60",size=0.2)+
  geom_density()


ggplot(data=faithful,aes(x=waiting,y=eruptions))+
  geom_point()+
  stat_density2d()


