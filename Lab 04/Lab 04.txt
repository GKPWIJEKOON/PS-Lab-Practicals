
#q1
setwd("C:\\Users\\IT22575562\\Desktop\\PClab04")
getwd()

data<-read.table("DATA 4.txt",header=TRUE,sep="")
data

names(data)<-c("Team","Attendance","Salary","Years")
data

#q2a

attach(data)



boxplot(Attendance,main="Boxplot for Attendance", outline=TRUE,ylab="Attendance")
boxplot(Salary,main="Boxplot for Salary", outline=TRUE,ylab="Salary")
boxplot(Years,main="Boxplot for Years", outline=TRUE,ylab="Years")

hist(Attendance,main="Histogram for Attendance",ylab="Frequency")
hist(Salary,main="Histogram for Salary",ylab="Frequency")
hist(Years,main="Histogram for Years",ylab="Frequency")

stem(Attendance)
stem(Salary)
stem(Years)

#q2b

mean(Attendance)
mean(Salary)
mean(Years)

median(Attendance)
median(Salary)
median(Years)

sd(Attendance)
sd(Salary)
sd(Years)

summary(Attendance)
summary(Salary)
summary(Years)

#q2c

quantile(Attendance) #all quartile
quantile(Attendance)[2]#first quartile
quantile(Attendance)[4]#third quartile

quantile(Salary) #all quartile
quantile(Salary)[2]#first quartile
quantile(Salary)[4]#third quartile

quantile(Years) #all quartile
quantile(Years)[2]#first quartile
quantile(Years)[4]#third quartile

#q2d

IQR(Attendance)
IQR(Salary)
IQR(Years)

#q3


get.mode<-function(y){
  counts<-table(y)
  names(counts)[counts==max(counts)]
  
}
get.mode(Years)

#q4

get.outliers<-function(z){
  q1<-quantile(z)[2]#firstqurntile
  q3<-quantile(z)[4]#thirtqurntile
  iqr<-q3-q1 #Enter quantile Range
  ub<-q3+1.5*iqr #upper bound
  lb<-q1-1.5*iqr #lower bound
  print(paste("uper bound=",ub)) #print upper bound
  print(paste("lover bound=",lb)) #print lower bound
  print(paste("Outliers=",paste(sort(z[z<lb|z>ub]),collapse=",")))
}
get.outliers(Attendance)
get.outliers(Salary)
get.outliers(Years)



