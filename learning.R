#experiment with print    trial
print(class(4))
print(class(T))
print(class(1 + 4i))
print(class("sample"))
print(class(charToRaw("sample")))   

#vectors
numbers=c(1,2,3,4)
print(numbers[1])

#sequence 
evens=seq(from=2,by=2,length.out=10)
print(evens)
sprintf("4 in evens %s",4 %in% evens)

#check sequence
oneTo20=c(1:20)
isEven=oneTo20 %% 2 == 0
isEven
justEvens=oneTo20[isEven]
justEvens

#switch
grade="C"
switch(grade,
       "A"=print("Great"),
       "B"=print("OK"),
       "C"=print("pass"),
       print("No such grade"))

#string
sub(pattern="owl",replacement="Hawk","owlbear")

#factor
dow=c("Monday","Tuesday","Wednesday",
      "Thursday","Friday","Saturday","Sunday")
wDays=c("Tuesday","Thursday","Monday")
wdFact=factor(x=wDays,levels=dow,ordered=T)
wdFact

#data frame 
custData=data.frame(name=c("Tom","Sally","Sue"),
                    age=c(43,28,35),
                    stringsAsFactors=F)
custData[1,1:2]       #row and column
custData[1:3,1]   

dim(custData)

#add a new record
recordMark=data.frame(name="Mark",age=33)
custData=rbind(custData,recordMark)
custData

#add debt
debt=c(0,25.50,36,48.19)
custData=cbind(custData,debt)
custData

#check if customer owes money
owesMoney=custData[custData$debt>0,]     #subsetting by row
owesMoney

#loop
num=1
repeat{
  print(num)
  num=num+1
  if(num>5){
    break
  }
}

#for loop
for(i in 1:5){
  print(i)
}

#matrix
matrix1=matrix(data=c(1,2,3,4))
matrix1

matrix2=matrix(data=c(1,2,3,4),nrow=2,ncol=2)
matrix2

matrix3=matrix(data=c(1,2,3,4),nrow=2,ncol=2,byrow=T)
matrix3

#array
array1=array(data=1:8,dim=c(2,2,2))
array1
array1[1,2,2]

#function
getSum=function(num1,num2){
  return(num1+num2)
}
sprintf("5+6=%d",getSum(5,6))

#missing function
missFunc=function(x){
  if(missing(x)){
    return("Missing Argument")
  }else{
    return(x)
  }
}
missFunc()


getSumMore=function(...){
  numList=list(...)
  sum=0
  for(i in numList){
    sum=sum+i
  }
  return(sum)
}
getSumMore(1,2,3,4)

#double every element in the list
numList=1:10
dblList=(function(x) x*2)(numList)
dblList

#exponential
power=function(exp){
  function(x){
    x^exp
  }
}
cubed=power(3)
cubed(2)

#store function in list 
addFunc=list(
  add2=function(x) x+2,
  add3=function(x) x+3
)
addFunc$add2(5)

#exception handling
divide=function(num1,num2){
  tryCatch(
    num1/num2,
    error=function(e){
      if(is.character(num1) || is.character(num2)){
        print("Can't divide with Strings")
      }
    }
  )
}
divide("cat",4)

#File I/O
myPeople=read.table(file=file.choose(),
                    header=T,sep=" ",
                    na.strings="`",
                    stringsAsFactors=F)

donnaRecord=data.frame(fname="Donna",
                       lname="Heyward",
                       sex="female")
myPeople=rbind(myPeople,donnaRecord)
myPeople[7,2]="Marx"
write.table(x=myPeople,file=file.choose(),
            sep=" ",na="`",quote=F,row.names=F)
  
tail(myPeople)

#plot
xy1=matrix(data=c(1,2,3,4,5),nrow=5,ncol=5)
plot(xy1)

x2=c(1,2,3,4,5)
y2=c(1,2,3,4,5)
plot(x2,y2,type="o",
     main="My Plot",xlab="x axis",ylab="y axis",
     col="steelblue")


x2=c(1,2,3,4,5)
y2=c(1,2,3,4,5)

plot(x2,y2,type="b")

abline(h=c(2,4),col="red",lty=2)

segments(x0=c(2,4),y0=c(2,2),x1=c(2,4),y1=c(4,4),
         col="red",lty=2)

arrows(x0=1.5,y0=4.5,x1=2.7,y1=3.25,col="blue")

text(x=1.25,y=4.75,labels="Center")

plot(faithful)

eruptions4=with(faithful,faithful[eruptions>4,])

points(eruptions4,col="red",pch=3)

#Math Functions
sqrt(x=100)

log(x=4,base=2)

exp(x=2)

sum(c(1,2,3))

randD1=c(1,5,6,7,10,16)
mean(randD1)

median(randD1)

sample(0:1,10,replace=T)

#pie chart
library(plotrix)
foodPref=c(15,35,10,25,15)
foodLabels=c("Spaghetti","Pizza","MacNCheese",
             "Chicken","Tacos")

png(file="food_pref_bar_chart.png")

colors=rainbow(length(foodPref))

barplot(foodPref,names.arg=foodLabels,
        xlab="Votes",ylab="Food Options",
      main="Food Prefs",col=colors)

dev.off()

#regression analysis
mlbPlayers=read.table(file=file.choose(),
                      header=T,sep=" ",
                      na.strings="`",
                      stringsAsFactors=F)
playerData = mlbPlayers[,c("RBI","AVG")]

relation=lm(playerData$RBI~playerData$AVG)

png(file="RBI_AVG_Regression.png")

plot(playerData$AVG,playerData$RBI,
     main="AVG & RBI Regression",
     abline(relation),
     xlab="AVG",ylab="RBIs")

dev.off()










































