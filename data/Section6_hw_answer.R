 ?read.csv()

 getwd() 
 setwd("/Users/sanghyuk/documents/r/data")
 mov <- read.csv("Section6-Homework-Data.csv")

#Data Exploration 
mov(stats)
mov(stats)

#activate ggplot2
#install.packages("ggplot2")
library(ggplot2)

#cool insight:
?ggplot
ggplot(data=mov, aes(x=Day.of.Week)) + geom_bar()

#filter #1 for the DF
filt <- (mov$Genre =="action")| (mov$Genre =="animation")|(mov$Genre =="adventure")|(mov$Genre =="comedy")|(mov$Genre =="drama") 
mov2 <- mov[filt,]
str(mov2)

#filter #2 "
filt2 <- mov$Studio %in% c("Buena Vista Studios", "WB", "Fox", "Universal", "Sony", "Paramount Pictures")
filt2

mov2 <- mov[filt & filt2, ]
mov2
str(mov2)
summary(mov2)
mov2
