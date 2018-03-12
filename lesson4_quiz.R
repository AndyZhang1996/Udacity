#Quiz1
summary(diamonds)
names(diamonds)
diamonds$color

factor(diamonds$color)

?diamonds

levels(diamonds$carat)

#Quiz2
names(diamonds)
qplot(x=price,data=diamonds)

#Quiz3
summary(diamonds$price)

#Quiz4
library(plyr)
cost_less_500=ifelse(diamonds$price<500,1,0)
count(cost_less_500,1)

#Quiz4(second way to do the first question)
cost_less_500=ifelse(diamonds$price<500,1,0)
cost_less_500=factor(cost_less_500)
summary(cost_less_500)


cost_less_250=ifelse(diamonds$price<250,1,0)
cost_less_250=factor(cost_less_250)
summary(cost_less_250)
  
  cost_more_15000=ifelse(diamonds$price>=15000,1,0)
  cost_more_15000=factor(cost_more_15000)
  summary(cost_more_15000)


#Quiz5
qplot(x=price,data=diamonds,binwidth=1)+
  scale_x_continuous(limit=c(0,2000),breaks=seq(0,2000,25))
ggsave("priceHistogram.png")


#Quiz6
qplot(x=price,data=diamonds)+
  facet_wrap(~cut)


#Quiz7
by(diamonds$price,diamonds$cut,summary)


#Quiz8
qplot(x=price,data=diamonds)+
  facet_wrap(~cut,scales="free_y")


#Quiz9
qplot(x=log10(price/carat+1),data=diamonds,
      xlab="Price per Carat",
      color=I('black'),fill=I('#099DD9'))+
facet_wrap(~cut)


#Quiz10
library(grid)
qplot(x=clarity,y=price,
      data=diamonds,
      geom='boxplot')+
  coord_cartesian(ylim=c(0,5000))

by(diamonds$price,diamonds$clarity,summary)


#Quiz11
library(grid)
qplot(x=color,y=price,
      data=diamonds,
      geom='boxplot')+
  coord_cartesian(ylim=c(0,5000))

by(diamonds$price,diamonds$color,summary)


#Quiz12
library(grid)
qplot(x=color,y=price/carat,data=diamonds,
      xlab="color",
      ylab="Price per Carat",
      geom='boxplot')


#Quiz13
qplot(x=carat,data=diamonds,binwidth=0.1,
      geom='freqpoly')

dim(table(diamonds$carat))
  
table=table(diamonds$carat)






















