
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Machine Learning with R/Linear Regression')

df <- read.csv('student-mat.csv', sep=';')
head(df) #뭐야 이거. ;로 separate되있음.

#G1- first period grade. 이런식으로 g3까지 있음. 

summary(df)

#clean the data
#check NA value
any(is.na(df)) #NA value가 없다는 것. 
str(df)

#ggplot

library(ggplot2)
library(ggthemes)
library(dplyr)

#Num only
is.numeric(df)
num.cols <- sapply(df, is.numeric) #return only numeric columns
cor.data <- cor(df[, num.cols]) #correlation
cor.data

#Visualize this data above
#correlation diagram package
install.packages('corrgram')
install.packages("corrplot")
library(corrgram)
library(corrplot)

corrplot(cor.data, method='color')

#corplot -> 반드시 numeric을 줘야 하는데
#corgram은 df를 직접 줄 수 있음. 

corrgram(df, order=T, lower.panel=panel.shade, upper.panel=panel.pie, text.panel=panel.txt)


ggplot(df, aes(x=G3)) +geom_histogram(bins=20, alpha=0.5)