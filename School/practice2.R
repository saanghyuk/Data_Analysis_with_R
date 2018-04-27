
set.seed(1)
beonho <- round(runif(10, 1, 100))
beonho
height <- c(175, 170, 180, 170, 172, 180, 173, 180, 165, 170)
weight <- c(88, 70, 76, 85, 80, 75, 69, 75, 80, 60)

bmi.r <- (weight*1000)/(height**2)
bmi.r
bmi <- round(bmi.r, 2)
bmi
bmi.df <- data.frame(beonho, height, weight, bmi)  
bmi.df

library(dplyr)
bmi.df %>% mutate(decision=ifelse(bmi>-2.5, "over", "normal"))
bmi.df

bmi.df %>% arrange(bmi)
bmi.df %>% arrange(beonho)
bmi.df %>% arrange(desc(beonho))
bmi.df %>% arrange(height, weight)

bmi.df
bmi.df
mean(bmi.df$height)
sd(bmi.df$height)
mean(bmi.df$weight)
sd(bmi.df$weight)

bmi
attach(bmi.df)
beonho
bmi
height
weight


lst <- list(name="Kim Gildong", dept="Sales", salary = 40000000, union=T)
lst
unlst <- unlist(lst)
unlst
length(height)
var(height)
sd(height)
sqrt(var(height))
se <- sd(height)/sqrt(length(height))
se

detach(bmi.df)
bmi.df

bmi.df$bmi
summary(bmi.df$bmi)
quantile(bmi.df$bmi)

summary(bmi.df$bmi)

quantile(bmi.df$bmi)
quantile(bmi.df$bmi, probs=c(0, 0.5, 0.8))
boxplot(bmi.df$bmi, col="sky blue")

bmi <- c(bmi.df$bmi)
bmi
sort(bmi)
sort(bmi, decreasing=TRUE)



is.numeric(score1$haksaeng)
is.ch

bmi.df


data()
data(iris)
iris
head(iris)
head(iris, 10)
tail(iris)
iris
dim(iris)
str(iris)
summary(iris)
?iris
View(iris)
length(iris)
mode(iris)

head(iris)
names(iris)
row.names(iris)
length(iris)
class(iris)

name <- c("Kim", "Lee", "Park", "Choi", "Kang", "Shin")
height <- c(160, 170, 180, 172, 182, 170)
gender <- c("female", "male", "female", "female", "male", "male")

ks.df
temp.df <- ks.df
temp.df

library(dplyr)
ks.df <- data.frame(name, height, gender, stringsAsFactors = F)
add <- data.frame(name="Hong", height=165, gender="male", stringsAsFactors = F)
add
summary(ks.df)

ks.df1 <- bind_rows(ks.df, add)



data(iris)
library(dplyr)
iris.anal<-iris
iris.anal
iris.anal <- rename(iris.anal, SL=Sepal.Length, SW=Sepal.Width, PL=Petal.Length, PW=Petal.Width, Type=Species)
head(iris.anal)
iris.anal 


attach(iris.anal)
mean(SL)
sd(PW)

Type
iris.anal %>% filter(Type=="setosa") %>% summarise(mean.sl=mean(SL), sd.sl=sd(SL))

install.packages("doBy")
library(doBy)
summary(iris)
summaryBy(Sepal.Width ~ Species, iris)
summaryBy(Sepal.Width+Sepal.Length ~ Species, iris)
?summaryBy

iris.anal %>% summarise(mean.sl = mean(SL), sd.sl=sd(SL), round(mean.sl, 2))



#scatter plot
data()
data(trees)
str(trees)
head(trees)
dim(trees)
plot(trees)
plot(trees$Girth, trees$Volume)


library('ggplot2')
data(iris)
str(iris)
head(iris)
head(iris)
plot(iris)
plot(iris$Sepal.Length, iris$Sepal.Width)
qplot(data=iris, Sepal.Length, Sepal.Width, col=Species)
qplot(data=iris, Sepal.Length, Sepal.Width, col=Species, size=Sepal.Length)
qplot(data=iris, Sepal.Length, Sepal.Width, col=Species, geom="line", main="Love Iris")



#lattice
data(trees)
library(lattice)

mini = min(trees$Volume)
maxi = max(trees$Volume)
r=ceiling((maxi-mini)/5)

mini
maxi
inf = seq(mini, maxi, r)
inf

trees$Volume = factor(floor((trees$Volume - mini)/r), labels=paste(inf, inf+r, sep="-"))
xyplot(Girth ~ Height | Volume, data=trees, main ="TREE")
splom(trees[, 1:3])
cloud(data=trees, Volume~Height*Girth, sub="NAMU")
bwplot(data=trees, Volume~Girth, main='TREE')



##########bar chart
Gap <- c(354, 250, 234, 312)
Eul <- c(234, 450, 200, 250)
sales.k <- matrix(c(Gap, Eul), ncol=4, byrow=T, dimnames=list(c("Gap", "Eul"), c("Jan", "Feb", "Mar", "Apr")))
sales.k


rowsum <- apply(sales.k, 1, sum)
rowsum
colsum <- apply(sales.k, 2, sum)
colsum

barplot(sales.k,  main="Total Sales", xlab="Month", ylab="Sales", names.arg=c("Jan", "Feb", "Mar", "Apr"), 
        border="blue", col=rainbow(2), ylim=(c(0, 1000)))
legend(4, 1000, c("Gap Store", "Eul Store"), cex=0.7, fill=rainbow(2))

barplot(sales.k, main="Total Sales by Month", xlab="Month", ylab="Sales", beside=T, names.arg=c("Jan", "Feb", "Mar", "Apr"),
        col=rainbow(2), ylim=(c(0, 500)))
legend(10, 500, c("Gap", "Eul"), cex=0.7, fill=rainbow(2))

sales.k
barplot(t(sales.k), main="Total Sales by Store", xlab="Store", ylab="Sales", 
        beside=T, names.arg=c("Gar", "Eul"), border="blue", 
        col=rainbow(4), ylim=(c(0, 400)))

legend(8.5, 400, c("Jan", "Feb", "Mar", "Apr"), cex=0.8, fill=rainbow(4))


#line chart

barplot(sales.k, main="Total Sales by Month", xlab="Month", ylab="Sales", beside=T, names.arg=c("Jan", "Feb", "Mar", "Apr"),
        col=rainbow(2), ylim=(c(0, 500)))
legend(10, 500, c("Gap", "Eul"), cex=0.7, fill=rainbow(2))

Q1 <- c("Jan", "Feb", "Mar", "Apr")
Seoul <- c(354, 250, 234, 312)
Busan <- c(234, 450, 200, 250)


plot(Seoul, type="o", col="red", ylim=c(0, 500))
axis(1, at=1:4, lab=c("Jan", "Feb", "Mar", "Apr"))
axis(2, ylim=c(0, 500))

title(main="Sales", col.main="blue", font.main=4)
title(xlab="month", col.lab="black")
title(ylab="won", col.lab="black")

lines(Busan, type="o", pch=22, col="green", lty=2)
legend(3, 500, c("Seoul", "Busan"), cex=0.8, col=c("red", "green"),pch =21, lty=1:3 )





sales.k
t(sales.k)
barplot(t(sales.k), main="Total Sales by Store", xlab="Store", ylab="Sales", beside=T, names.arg=c("Gap", "Eul"),
        border="blue", col=rainbow(4), ylim=(c(0, 400)))

#ggplot2
library(ggplot2)
Month <- c("Jan", "Feb", "Mar", "Apr")
Gap <- c(354, 250, 234, 312)
Eul <- c(234, 450, 200, 250)
sales.df <- data.frame(Month, Gap, Eul)
sales.df

Month <- rep(c("Jan", "Feb", "Mar", "Apr"), each=2, len=8)
Month
Store <- rep(c("Gap", "Eul"), times=4)
Store
Sales <- c(354, 234, 250, 450, 234, 200, 312, 250)
sales.df2 <- data.frame(Month, Store, Sales)
sales.df2

d <- ggplot(sales.df2, aes(x=Month, y=Sales, fill=Store))+geom_col()
d+scale_x_discrete(limits=c("Jan", "Feb", "Mar", "Apr"))


Pct <- round((Sales/600)*100, 1)
sales.df2
sales.df2 <- data.frame(sales.df2, Pct)
d <- ggplot(sales.df2, aes(Month, Pct, fill=Store))+geom_col()
d + scale_x_discrete(limits=c("Jan", "Feb", "Mar", "Apr"))

?reorder
Month
Sales
Month
Sales
reorder(Month, Sales)

ggplot(data=sales.df2, aes(x= reorder(Month , -Sales), y=Sales, fill=Store))+ geom_col()
ggplot(data=sales.df2, aes(x=reorder(Month, -Sales), y=Sales, fill=Store))+geom_col()+ coord_flip()


ht<- data.frame(name=c("kim", "lee", "park"), height=c(160, 170, 180))
wt <- data.frame(student=c("kim", "lee", "park", "choi"), weight=c(60, 70, 80, 72))
ht
wt
body1 <- merge(ht, wt, by.x="name", by.y="student")
body1



###relation

frt <- c(7, 17, 27, 18, 9, 10)
vgt <- c(2, 4, 7, 5, 3, 3)

mean(frt)
sd(frt)
mean(vgt)
sd(vgt)
cov(frt, vgt)
plot(frt, vgt)

cor.test(frt, vgt)
cor(frt, vgt)

mat1 <- matrix(1:12, ncol=4, dimnames=list(c("rice", "bread", "vegetable"), 
                                          c("Seoul", "Daejeon", "Busan", "Gwangju")))
mat1

mat3 <- rbind(mat1, colSums(mat1))
mat2 <- cbind(mat3, rowSums(mat3))
mat2

colnames(mat2) <- c("Seoul", "Daejeon", "Busan", "Gwangju", "total")
rownames(mat2) <- c("rice", "bread", "vegetable", "total")
mat2

apply(mat2, 1, sum)
apply(mat2, 2, sum)
mat2
mat1
apply(mat1, 1, quantile)


mid <- matrix(c(60, 80, 70, 45, 65, 95), ncol=2, dimnames=list(c("kim", "kang", "shin"), c("math", "english"))) 
mid
final <- matrix(c(70, 90, 60, 55, 75, 85), ncol=2, dimnames=list(c("kim", "kang", "shin"), c("math", "english")))

mid
final

total.array <- array(data=c(mid, final), dim=c(3, 2, 2), dimnames = list(c("kim", "kang", "shin"), 
                                                                         c("math", "english"), c("mid", "final")))
total.array
attributes(total.array)
dimnames(total.array)


x <- c(1,2, 3 )
y <- c(4, 5, 6)

mat <- matrix(c(xy, yz), 2, 3)
t(mat)


matrix(c(x, y), ncol=3, byrow=T)

mat <- matrix(1:12, ncol=4)
length(mat)
dim(mat)
dimnames(mat)


class(mat)

mat <- matrix(1:12, ncol=4, dimnames=list(c("rice", "bread", "vegetable"), c("a", "b", "c", "d")))
mat
dimnames(mat)

xyz <- xy+yz


mat2 <- matrix(1:12, ncol=4)
mat2[3, ]

mat3 <- matrix(1:12, ncol=4)
mat3
apply(mat3, 1, sum)
apply(mat3, 2, sum)



rowSums(mat3[, 2:3])
mat10 <- 1:6
class(mat10)
dim(mat10) <- c(2, 3)
class(mat10)


rbind(mat1, colSums(mat1))


xyz
seq(1, 10)
seq(1, 10, by=2)
