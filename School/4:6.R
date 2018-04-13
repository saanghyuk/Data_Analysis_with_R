
library(dplyr)
set.seed(1)
beonho <- round(runif(10, 1, 100))
beonho
height <- c(160, 170, 180, 170, 172, 180, 173, 180, 165, 170)
weight <- c(60, 70, 76, 85, 80, 75, 69, 75, 80, 60)
bmi.r <- (weight*1000)/(height**2)
bmi <- round(bmi.r, 2)
bmi.df <- data.frame(beonho, height, weight, bmi)

bmi.df %>% mutate(decision = ifelse(bmi>=2.5, "over", "normal"))
bmi.df %>% arrange(bmi)
bmi.df %>% arrange(beonho)
bmi.df %>% arrange(desc(beonho))
bmi.df %>% arrange(height, weight )


bmi
attach(bmi)


?attach


data(iris)
iris
head(iris)
head(iris, 10)
tail(iris)
dim(iris)


data("chickwts")
head(chickwts)
str(chickwts)
dim(chickwts)
data("cars")
trees
USArrests
str()
warpbreaks()
?warpbreaks
str(warpbreaks)
warpbreaks

str(warpbreaks)

??mpg
library(ggplot2)


mpg #******This is in package ggplot2******





########################
# 주어진 자료 매트릭스 형태로 전환하기
Gap <- c(354, 250, 234, 312)

Eul <- c(234, 450, 200, 250)

sales.k <- matrix(c(Gap, Eul), ncol=4, byrow=T, dimnames=list(c("Gap", "Eul"), c("Jan", "Feb","Mar", "Apr")))

sales.k

rowsum <- apply(sales.k, 1, sum)

rowsum

colsum <- apply(sales.k, 2, sum)

colsum

barplot(sales.k, main="Total Sales", xlab="Month", ylab="Sales", names.arg=c("Jan", "Feb","Mar", "Apr"), border="blue", col=rainbow(2), ylim=(c(0, 1000)))


barplot(sales.k, main="Total Sales by Month", xlab="Month", ylab="Sales", beside=T, names.arg=c("Jan", "Feb","Mar", "Apr"), border="blue",
          col=rainbow(2), ylim=(c(0, 500)))
legend(10, 500, c('Gap Store', 'Eul Store'), cex=0.8, fill=rainbow(2))

m.total <- apply(sales.k, 2, sum)
m.total
lines(m.total, type="o", pch=21, lty=3)
text(3, 900, "total")



