set.seed(1234)
x <- rnorm(50, 10, 5)
mean(x)
sd(x)
x1 <- as.integer(x)
mean(x1)
sd(x1)
table(x1)



###########
age <- c(25, 35, 34, 56, 38, 20, 38, 40)
opin <- c("j","j","j","b","b","b","j", "b")
income <- c(400, 350, 500, 600, 430, 300, 400, 400)

table(opin)
barplot(opin) ###ERROR;why? OPIN -> Character 

x <- table(opin)
x
barplot(x)


age.mean <- tapply(age, opin, mean)
income.mean <- tapply(income, opin, mean)
age.mean
income.mean


##make data frame
people <- data.frame(age, opin, income)
people$over30 <- ifelse(people$age > 30, 1, 2)
people


people
tapply(people$income, people[c(2, 4)], mean)
tapply(people$income, people[c(-1, -3)], mean)
tapply(people$income, list(people$opin, people$over30), mean)



###frequency
warpbreaks
str(warpbreaks)
summary(warpbreaks)
warpbreaks$brokens <- warpbreaks$breaks
brokens.mean <- mean(warpbreaks$brokens)
brokens.mean
intervals <- c(0, brokens.mean, 70)
brokens.range <- cut(warpbreaks$brokens, breaks = intervals, include.lowest=T)
intervals
brokens.range


rm(list=ls())
setwd("/Users/sanghyuk/Documents/R/School")
library(readxl)
student.x2 <- read_excel("student.xlsx", sheet=2)  
# header = 1 line 
student.x2
str(student.x2)                          # character because of NA
student.x2$score <- as.numeric(student.x2$score)
mode(student.x2$score)

write.csv(student.x2, file ="c:/users/owner/desktop/student2.csv")           
# save
str(student.x2)
mean(student.x2$score)
mean(student.x2$score, na.rm=T)

student.x3 <- read_excel("student.xlsx", sheet=3)    
# no header  
student.x3
write.csv(student.x3, file= "student3.csv")       
student.x31 <- read.csv("student3.csv", header=F)
student.x31

student.x4 <- read_excel("student.xlsx", sheet=4)    
# header = 2 lines  
student.x4
student.x41 <- read_excel("student.xlsx", sheet=4, skip=1) 
student.x41

student <- read_excel("student.xlsx", sheet=1)
write.csv(student, file="student5.xlsx")
student <- read.csv(file="student.xlsx", stringsAsFactors = F)
str(student)


student$성별
which(student$성별==5) #23, 23번째 사람이 5라고 했다.



