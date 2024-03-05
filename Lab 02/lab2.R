x<-3
y<-5
z<--8

#if condition
if(x>0){
  print("Positive number")
}

#if-else conditions
if(y>0){
  print("Positive Number")
}else{
  print("Negative number")
}

#Nested if-else
if(x>y){
  print("X is greater than y")
}else if(x==y){
  print("x is equal to y")
} else{
  print("X is less than y")
}

#while-loop
i<-1
while(i<6){
  print(i)
  i<-i+1
}

#for loop
for (x in 1:20) { #1:20 =1,2,3,4,...,20
  print(x)
}

getwd()

setwd("C:\\Users\\it22604576\\Desktop\\PS lab 2")

getwd()

#importing files
data1<-read.csv("DATA 2.csv")
data1

#writing data
lab2<-data.frame(column1=c("value1","value2","value3"),
                 column2=c(100,35,76))

lab2

#exporting dataset
write.csv(lab2,"C:\\Users\\it22604576\\Desktop\\PS lab 2\\points.csv",
          row.names = FALSE)
write.csv(lab2,"C:\\Users\\it22604576\\Desktop\\PS lab 2\\points.csv",
          row.names = TRUE)
write.table(lab2,"C:\\Users\\it22604576\\Desktop\\PS lab 2\\points.txt",
          row.names = FALSE)



#quiz
#1
quadRoots <- function(a,b,c) {
  x1<- (-b+sqrt(b^2-(4*a*c)))/2*a
  x2<- (-b-sqrt(b^2-(4*a*c)))/2*a
  print(x1)
  print(x2)
}

quadRoots(2,3,1)

#2
x <- c(1,2,3)
x[1]/x[2]^3-1+2*x[3]-x[2-1]

#4
#1:k positive value
#k=20
vec <- c(1:20)
sum(vec%%3==0) #3,6,9,12,15,18

#6
x<-c(1,2,87,54,6,11)
max<-0

#for loop
for(i in 1:length(x)){
  if(x[i]> max){
    max<-x[i]
  }
}

print(max)

#7
x[which.max(x)]

#8
A<-0
moneyOwned<-function(P,R,n){
  for (i in 1:n) {
    A=P*((1+(R/100))^i)
    print(A)
    
  }
}
moneyOwned(5000, 11.5, 15)

