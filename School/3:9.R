mode(3)
mode("3")
mode(T)
mode("T")

x <- "3"
mode(x) <- "integer"

xx <- 3.14
xx <- as.integer(xx)
xx


xy <- c(1,2,3)
yz <- c(4,5,6)

xyz <- xy+yz  
xyz  
  
sanghyuk <- seq(1, 10, by=2)
sanghyuk

sangwon <- matrix(c(1,2,3,4,5,6), ncol=2, byrow=T)
sangwon <- matrix(c(1,2,3,4,5,6), 2, 3)
sangwon

apply(sangwon,  1, sum)
apply(sangwon, 2, sum)

sangwon
sangwon1 <- cbind(sangwon, rowSums(sangwon[, 2:3 ]))
sangwon1 


dim(sangwon)


arry <- array(1:24, dim=c(3, 4, 2))
arry

length(arry)
class(arry)
mode(arry)
dimnames(arry)
names(arry)


mid <- matrix(c(80, 60, 70, 65, 54, 96), ncol=2, dimnames=list(c("kim", "kang", "shin"), c("math", "english")))
mid
final <- matrix(c(70, 90, 60, 55, 75, 87), ncol=2, dimnames=list(c("kim", "kang", "shin"), c("math", "english")))
final


total.array <- array(c(mid, final), dim=c(3, 2, 2),dimnames=list(c("kim", "kang", "shin"), c("math", "english"), c("mid", "final")))
total.array


attributes(total.array)
total.array[3, 1, 2]
total.array

test <- array(data=c(100, 30, 40, 50, 50, 50, 80, 80, 80, 70, 120, 60), dim=(c(3, 2, 2)), 
              dimnames=list(c("ê·¸ë?????", '?????????', 'ëª¨ë¥´ê²????'), c('??¨ì??', '??¬ì??'), c('?????¸ë§¤???', 'ë¶???°ë§¤???')))

test

sangwon
sangwon <- rbind(sangwon, colSums(sangwon))
sangwon

mat1 <- matrix(1:12, ncol=4, dimnames=list(c("rice", "bread", "vegetable"), c("Seoul", "Dageon", "Incheon", "Gwangju")))
mat1


mid <- matrix(c(1,2,3,4,5,6), ncol=2, dimnames=list(c("kim", "kang", "shin"), c("math", "english")))

lst <- list(name="KIM GILDONG", dept="Sales", salary=4000000, union=T)
lst

lst$name
lst['dept']
lst[1]
lst[['name']]
lst[[1]]

lst2 <- c(lst, dept="Marketing")
lst2


un <- unlist(lst2)
names(un) <- NULL
lst2 <- unname(un)
lst2


mid

mode(array1)
 
z <- sqrt(9)
z


x <- rnorm(100, mean=0, sd=1)

install.packages('ggplot2')

hist(x)


#???ê²½ì°½ -> ë³????-ê°???? ê³???? ì¶????. 


rm(list=ls()) #--> ???ê²½ì°½ ?????? ?????¹ë?? ë³???? ???ì²? ??????. 
a <- rnorm(1000)
head(a)

x <-as.complex(2)
x     

integer(3)
double(3)
mode(3)  


xy <- c(1,2,3)
yz <- c(4,5,6)


vec <- c(2, 3, 4, 4, 2)
vec
class(vec)
mode(vec)
mean(vec)
length(vec)
levels(vec)
vec.fac <- factor(vec)
vec.fac
length(vec.fac)
fac1 <- as.vector(vec.fac)
fac1


quality <- c("best", "better", "good", "best")
prefer <- ordered(quality, levels=c("good", "better", "best"))
prefer

height <- c(160, 170, 180, 170, 180, 170)
weight <- c(70, 60, 50, 80, 60, 50)
gender <- c("female", "male", "female", "female", "female", "male")
class <- c("1", "2", "1", "1", "2", "1")

df1 <- data.frame(height, weight, gender, class, row.names=c("KIM", "LEE", "SON", "PARK", "KANG", "CHOI"))
df1$gender

df1[1:3, 2, drop=FALSE]

install.packages("dplyr")
library(dplyr)
df1
add <- data.frame(height=c(190, 180), weight=c(10, 20), gender=c("female", "male"), class=c('1', '2'))
df2 <- bind_rows(df1, add)
df2


add1 <- data.frame(hi=c(1, 2, 3, 4, 5, 6, 7, 8))
ks.df3 <- data.frame(df2, add1)
ks.df3
ks.df3[c('gender', 'class', 'hi')]
subset(ks.df3, selects=c('gender', 'class'))

?left_join
