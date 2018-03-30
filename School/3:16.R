
xy <- c(1,2,3)
yz <- c(4,5,6)
xyz <- xy+yz
xyz


#VECTOR
xyz1 <- c(xy, yz)
xyz1

x <- 1:6
x <- c(10, 20, 30, 40, 50, 60)

x[-3]
x[3] <- 300 


#MATRIX
x <- c(1,2,3)
y <- c(4,5,6)

xy <- matrix(c(x, y))
xy
xy1 <- matrix(c(x,y), 2, 3)
xy1 
xy2 <- t(xy1)
xy2


xy3 <- matrix(c(x,y ), ncol=3, byrow=T)
xy3

xy4 <- matrix(c(x, y) , ncol=3)
xy4

mat <- matrix(1:12, ncol=4)
mat <- matrix(1:12, ncol=4, byrow=T)

?dimnames
dimnames(mat) <-  list(c(1,2,3), c(4, 5, 6, 7))
dimnames(mat)

 dim(mat)
dimnames(mat)
length(mat)
mode(mat)
class(mat)



mat2 <- matrix(1:12, ncol=4)
mat2
mat2[3,1]
mat2[3, ]
mat2[, 2]



list=ls()
rm(list=ls())


mat1 <- matrix(1:12, ncol=4, dimnames=list(c("rice", "bread", "vegetable"), c("Seoul", "Daejeon", "Busan", "Gwangju")))

mat1
mat4 <- cbind(mat1, rowSums(mat1))
mat3 <- rbind(mat1, colSums(mat1))
mat3



mat1 <- matrix(1:12, ncol=4, dimnames=list(c("rice", "bread", "vegetable"), c("Seoul", "Daejeon", "Busan", "Gwangju")))
mat1
mat2 <- cbind(mat1, rowSums(mat1))

mat3 <- rbind(mat2, colSums(mat2)) 
mat3

mat1

apply(mat1, 1, sum) #1??? ???
apply(mat1, 2, sum) #2??? ??? 
?apply()


arry <- array(1:24, dim=c(3, 4, 2))
arry

arry1 <- array(1:24, dim=c(3,4,2), dimnames=list(c("rice", "bread", "vegetable"),
                                                 c("Seoul", "Daejeon", "Busan", "Gwangju"), 
                                                 c("male", "female")))
arry1




lst <- list(name="SANGHYUK SON", dept="Sales", salary=4000000, union=T)
lst
lst$salary
lst$union
lst$dept 
  
length(lst)

lst1 <- list("SANGHYUK SON", "Sales", 4000000, T)

middle=c("KIM", "KANG")
high=c("LEE", "KO")
college =c("SON", "PARK")


friends <- list(middle=middle, high=high, college=college)
friends

#FACTOR
#LEVELS -> ì¹´í??ê³?ë¦?(ë²?ì£?)
vec <- c(2,3,4,4,2 )
fac <- factor(vec)
fac
fac1 <- as.numeric(fac)
fac1


#P50 DATA FRAME
#2ì°¨ì?? ???ë©´ì?? ??????. BUT ???ë¬´ê±°??? ?????´ì?? ??£ì?? ??? ??????(?????¬ì?? ??¨ì?? ê²?ë§? ??£ì?? ??? ??????). 
height <- c(160, 170, 180, 170, 180, 170)
weight <- c(70, 60, 80, 60, 80, 70)
gender <- c("female", "male", "male", "female", "female", "male")
class <- c(1,2,3,4,5,6 )

df1 <- data.frame(height, weight, gender, class)
df1
?rownames()
row.names(df1) <- c(1,2,3,4,5,7)

mode(df1) #???ë£? ????????? ?????? ë²?
class(df1) #???ë£? êµ¬ì¡°ë¥? ?????? ë²?


#length 
#????????? ???

#dimension 
#???ê³? ???



df1$height
is.numeric(df1$height)



is.character(df1$class)
is.factor(df1$class)

#******************stringasfactor*********



set.seed(1)
x <- round(runif(12, 1, 100))

ts1 <- ts(x, start=2017, frequency=12)
ts2 <- ts(x, start=2017, frequency=4)
ts3 <- ts(x, start=2017, frequency=1)
ts4 <- ts(x, start=2020, frequency=1)
ts4

print(ts(x, end=2020, frequency = 1), calendar=T)

length(ts1)
mode(ts1)
tsp(ts1)

mat <- matrix(1:24, ncol=2)
mat
mat1 <- ts(mat, start=2018, frequency = 4)
mat1
dimnames(mts1) <- list(NULL, c("REVENUE", "PROFIT"))
mts1

is.ts(ts1)
is.mts(ts1)


set.seed(1)
x<- round(runif(12, 1, 100))
y<- round(runif(12, 1, 100))
df.temp <- matrix(c(x, y), ncol=2)
df.temp
mts3 <- ts(df.temp, start=2018, frequency=4)
mts3
dimnames(mts3) <- list(NULL, c("REVENUE", "PROFIT"))
mts3



install.packages("dplyr")
update.packages()


library(dplyr)
name <- c("KIM", "LEE", "PARK", "CHOI", "KANG", "SHIN")
height <- c(160, 176, 180, 170, 180, 172)
weight <- c(60, 90, 68, 70, 64, 74)
gender <- c("female", "male", "female", "female", "male", "male")
student.df <- data.frame(name, height, weight, gender)
student.df

student.df %>%  filter(gender=="female") 
student.df %>% filter(height >=180 & gender=="male")

student.df %>% select(name, height)

student.df <- student.df <- student.df %>% mutate(index=height*0.7 + weight*0.3,
                                                  decision=ifelse(index>=145, "fit",
                                                                  ifelse(index>=140, "reverse", "not-fit"))) %>% arrange(index)
student.df

student.df %>% group_by(gender) %>% summarise(mean.hgt = mean(height), sd.hgt=sd(height))

#%>% summarise(mean.hgt= mean(height))
