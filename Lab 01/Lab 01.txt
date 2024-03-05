print(100:110)
print(200:1800)
# comment == this how to comment

# to get the working directory (file location currently working)
getwd()

# change working directory
setwd("C:\\Malki\\OneDrive\\Desktop\\Year2-Sem2\\My\\PAS\\Lab sheet Answers\\PS_lab1")

getwd()

# help
?solve

# operators - scaler operators
2+8
10-2
5*4
60/4
4^2
4**2 
600%%2

# logical operators
x=5
y=-4

isTRUE(x==y)
isTRUE(x>y)
isTRUE(x<=y)
isTRUE(x!=y)
isTRUE(y==-2)
isTRUE(x<4 & y<0)
isTRUE(x>4 & y<0)
isTRUE(x<4 | y<0)

# creating variables
# local variables
a=5
a<-5

# global variables
a<<-5

# package
# donload & install packages
install.packages("ggplot2")


# create vector
p<-c(1,2,3)
p
class(p)

q<-c(10,20,30)
q
class(q)

r<-c("a","b","c")
r
class(r)

# list
e<-c(1,2,3,4,5)
e 

f<-"green"
f

g<-23
g

data<-list(e,f,g)
data

# factor
gender<-c(0,0,1,1,0,1,0,1)
gender

Gender<-factor(gender,c(0,1),c("Female","Male"))
Gender

class(Gender)

# create matrix
matrix1<-matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
matrix1

matrix2<-matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = FALSE)
matrix2

matrix3<-matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = TRUE)
matrix3

matrix4<-matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = FALSE)
matrix4

# dataframe
weight<-c(34,45,68,56,89)
height<-c(12,5,34,21,42)

data_set<-data.frame(weight,height)
data_set

