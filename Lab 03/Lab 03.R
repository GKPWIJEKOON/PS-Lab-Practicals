
getwd()
setwd("C:\\Users\\it22575562\\Desktop\\Lab 03-20240226")

#impoer data
datas<-read.csv("DATA 3.csv",header = TRUE, sep=",")
datas

fix(datas)


#rename column names
names(datas)<- c("Age","Gender","Accommodation")

datas$Gender<- factor(datas$Gender,c(1,2),c("male","female"))
datas

datas$Accomendation<-factor(datas$Accomendation,c(1,2,3),c("Home","borded Students","Lodging"))
datas

attach(datas)

#q2
gender.freq<-table(Gender)
gender.freq

acc.freq<-table(Accomendation)
acc.freq

#pie chart
pie(gender.freq,"pie chart for Genders")
pie(acc.freq,"Pie chart for Accommondation")

#barplot
barplot(gender.freq,main = "barplot for Gender",ylab = "Frequency")
abline(h=0)

barplot(acc.freq,main = "barplot for Accommondation",ylab = "Frequency")
abline(h=0)

#boxplot
boxplot(Age,main="boxplot for age",ylab="Age",outpch=8)

gender_acc.freq <-table(Gender,Accommodation)
gender_acc.freq

#stack barplot
barplot(gender_acc.freq,main ="Gender & Accommodation stack barplot",legend=rownames(gender_acc.freq))

#clusted
barplot(gender_acc.freq,beside=TRUE ,main ="Gender & Accommodation stack barplot",legend=rownames(gender_acc.freq))


#q4

boxplot(Age~Gender,main = "boxplot for Age by Gender", ylab = "Age",xlab = "Gender")

boxplot(Age~Accomendation,main = "boxplot for Age by Accommondation", ylab = "Age",xlab = "Accommodation")

#q5
xtabs(Age~Gender+Accomendation)/gender_acc.freq
xtabs(Age~Gender+Accommondation)








