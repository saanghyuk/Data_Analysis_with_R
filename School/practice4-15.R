
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

array <- array(1:24, dim=c(3, 4, 2))
array


array1 <- array(1:24, dim=c(3, 4, 2), dimnames=list(c("rice", "bread", "vegetable"),
                                                    c("Seoul", "Daejeon", "Busan", "Gwangju"),
                                                    c("male", "female")))
array1

attributes(array1)


##list

lst <- list(name="KIM", dept="Sales")
class(lst)
lst_tot <- c(lst, dept="Marketing")
lst_tot1 <- c(lst, lst_tot)
lst_tot1
unlst <- unlist(lst)
unlst


##factor
vec <- c(2, 3, 4, 2, 2)
class(vec)
mode(vec)
length(vec)
levels(vec)

fac <- factor(vec)
mean(fac)
length(fac)
levels(fac)
class(fac)
mode(fac)
length(fac)

##Data Frame
height <- c(120, 130, 140)
weight

height <- c(175, 170, 180, 170, 172, 180, 173, 180, 165, 170)
weight <- c(88, 70, 76, 85, 80, 75, 69, 75, 80, 60)

df <- data.frame(height, weight, row.names =c(1,2,3,4,5,6, 7, 8, 9, 10))
df[1:3, 2]
df
?subset()
subset(df, select=c("weight", "height"))
vector <- c(1,2,3,4,5,6,7,8)
vector
filter(vector, vector<3)
?filter()


#time series
set.seed(1)
x <- round(runif(12, 1, 100))
ts1 <- ts(x, start=2017, frequency=12)
length(ts1)

mat <- matrix(1:24, ncol=2)
mts1 <- ts(mat, start=2018, frequency=4)
dim(mts1)
length(mts1)
dimnames(mts1) <- list(NULL, c("REVENUE", "PROFIT"))
mts1

set.seed(1)
x <- round(runif(12, 1, 100))
y <- round(runif(12, 1, 100))
df.temp <- matrix(c(x, y), ncol=2)
mts3 <- ts(df.temp, start=2018, frequency=4)
mts3 <- rename(mts3, c("Revenue", "Profit"))
mts3


#dplyr
library(dplyr)
name <- c("NAME", "LEE", "PARK","CHOI", "KANG", "SON")
height <- c(160, 170, 180, 170, 180, 172)
weight <- c(60, 90, 68, 70, 64, 74)
gender <- c("female", "male", "female", "female", "male", "male")
student.df <- data.frame(name, height, weight, gender)

filter(student.df, gender=="female")
student.df


student.df %>% mutate(index=height*0.7+weight*0.3, decision= ifelse(index>=145, "fit", "not-fit"))
student.df %>% mutate(index=height*0.7+weight*0.3, decision= ifelse(index>=145, "fit", 
                                                                    ifelse(index>=140, "reverse", "not-fit")))


student.df %>% mutate(index=height*0.7+weight*0.3) %>% arrange(index)

student.df %>% group_by(gender, name)

sales <- c(200, 100, 300, 100, 100, 100 )
sales
mat <- matrix(sales, ncol=2)
mat
sum <- sum(sales)
sum
mat_total <- mat/total
mat_total

round(mat_total, 2)

#
sum<- rowSums(mat)
mat/sum

#prop.table 사용시
mat
prop.table(mat, 1)

#
colsum <- apply(t(mat), 1, sum)
round(t(mat)/colsum, 2)
#prop.table 사용 시
prop.table(mat, 2)

rm(list=ls())

data()

Titanic

set.seed(1)
round(runif(10, 1, 100))

runif()

dimnames(Titanic)
Titanic

mat <- matrix(sales, ncol=2)
Titanic[1, 2, , ]

View(Titanic)


#1 
mat
#2
total <- sum(mat)
mat_total <- mat/total
round(mat_total, 2)

#3
mat
round(mat/rowSums(mat), 2)

#4
t(mat)
sum <- apply(t(mat), 1, sum)
round(t(mat)/sum, 2)

x <- 1:100
x
filter(x, x<3)
filter(x, rep(1, 3), sides = 1)

library("dplyr")

student.df <- filter(student.df, gender=="female")
  
sqrt(9)

3**2

14%/%14
  
filter(x, rep(1, 3), sides = 1, circular = TRUE)
filter(presidents, rep(1, 3))


sales <- c(200, 100, 300, 100, 100, 100)
month <- c("May", "June","July")
mat <- matrix(sales, ncol= 2)
mat
total <- sum(sales)

round(mat/total,2)

rowsum <- rowSums(mat)
mat
rowsum
mat /rowsum


############4
mat
t(mat)
colsum <- apply(t(mat) , 1, sum)
t(mat) / colsum


############5
speed <-c(10, 11, 12, 14, 17, 20)
dis <- c(18, 16, 27, 20, 49, 32)


Titanic[1, , , ]
Titanic[2,1, ,]
Titanic[3,2,1, ]

barplot(c(1,2,3))
str(trees)

data()
data(trees)
str(trees)
head(trees)
dim(trees)
trees
plot(trees$Girth, trees$Volume)


head(iris)
library(ggplot2)
data(iris)
str(iris)
head(iris)
plot(iris)
plot(iris$Sepal.Length, iris$Sepal.Width)
qplot(data=iris, Sepal.Length, Sepal.Width, col=Species)
qplot(data=iris, Sepal.Length, Sepal.Width, col=Species, geom="line")



Gap <- c(354, 250, 234, 312) 
Eul <- c(234, 450, 200, 250)
sales.k <- matrix(c(Gap, Eul), ncol=4, byrow=T, 
                  dimnames=list(c("Gap", "Eul"), c("Jan", "Feb", "Mar", "Apr")))

sales.k
rowsum <- apply(sales.k, 1, sum)
rowsum
colsum <- apply(sales.k, 2, sum)
colsum

barplot(sales.k, main="Total Sales", xlab="Month", ylab="Sales")
barplot(sales.k, main="Total Sales by Month", xlab="Month", ylab="Sales", beside=T, 
        names.arg=c("Jan","Feb", "Mar", "Apr"), border="blue", col=rainbow(2), ylim=(c(0, 800)))

legend(10, 500, c("Gap","Eul"), cex=0.8, fill = rainbow(2))
m.total<- apply(sales.k, 2, sum)
m.total
lines(c(2, 5, 8, 11), m.total, type="o", pch=21, lty=1, col="blue")
text(2, 700, "588")



op= par(mfrow=c(1, 2))
hist(trees$Volume)
hist(trees$Volume, probability = T, main="histogram with pdf")


saels.tot <- c(210, 110, 400, 500, 700)
pie(saels.tot, init.angle=90)


ma <- matrix(1:12, ncol=4)
ma
prop.table(ma, 1)
prop.table(ma, 2)

rowSums(prop.table(ma, 1))
prop.table(t(ma), 1)
colSums(prop.table(ma, 2))


prop.table(ma)


Titanic
str(Titanic)





head(CHFLS)


mode(Titanic)
class(Titanic)



library(dplyr)
height<- c(160, )



##Data Frame

height <- c(160, 170, 180, 170, 170, 170)
weight <- c(70, 60, 80, 60, 80, 70)
class <- c("1", "1", "1", "2", "2", "2")
gender <- c("female", "male", "female", "female", "male", "male")

df1 <- data.frame(height, weight, gender, class)
df1

df1$height
df1[, "height"]
df1[["height"]]
df1$weight
df1$gender

library(dplyr)




4**2
sqrt(2)
hist(trees$Volume)
hist(trees$Volume, probability = T, main="histogram")
lines(density(trees$Volume))

summary(dis)
str(Titanic)
#(4)승무원 :
Titanic[1, , ,]
Titanic[2, 1, , ]
Titanic[3, 2, 1, ]
sum(Titanic[4, , , ])
sum(Titanic[4,,,])

sum(Titanic[4, ,,1])/sum(Titanic[4, , , ]) *100

Titanic[4, , , ]

#여객 : 
sum(Titanic[-4, , , ])
sum(Titanic[-4,,,]
           
#(5)
sum(Titanic[4,,,1])/sum(Titanic[4,,,])*100
           
#(6)
sum(Titanic[-4,1,2,2])/sum(Titanic[-4,1,2,])*100
sum(Titanic[-4, 1, 2, 2])/sum(Titanic[-4, 1, 2, ])
           
#(7)
sum(Titanic[-4,2,,2])/sum(Titanic[-4,2,,])*100


#여자 승객 생존률
str(Titanic)
sum(Titanic[-4, 2, , 2 ])/sum(Titanic[-4, 2, , ])


a <- c("1", "2", "3", "4")
b <- c(1,2,3,4)
c <- c("a", "b", "c", "d", "a")
factorizeda <- as.factor(c)
factorizeda[5]

str(Titanic)


mode(as.factor(b))
mode(as.factor(c)) 



?class()

arry1 <- array(1:24, dim=c(3,4,2), dimnames = list(c("rice", "bread", "vegetable"), c("Seoul", "Daejeon", "Busan", "Gwangju"), c("Male", "Female")))
arry1


str()


names(arry1)

dimnames(arry1) <-list(c("a", "b", "c"))
arry1 

str(Titanic)
sum(Titanic[-4, 1, 2, 2])/sum(Titanic[-4, 1, 2, 1])
(sum(Titanic[, 2, ,2])/ sum(Titanic[,2 , ,]))*100
