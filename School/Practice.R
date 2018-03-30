
v <- 4+12
w <- v*2

y = 5
y

z= 10
z
z ==5

z <- 3e+2
z <- 3e+1
z

mode(z) <- "character"
z
mode(z)

z <- as.integer(z)
z
mode(z)
xx<- 3.14
xx <- as.integer(xx)
mode(xx)
xx

mode("T")

c(1,2,3)
c("a", "b", "c")

xy <- c(1,2,3)
yz <- c(4,5,6)
xy+yz

ww <- c("male", "female")

seq(1, 10)
seq(1, 10, by=2)

x <- c(1,2,3)
y <- c(4,5,6)
?matrix
xy <- matrix(c(x,y), nrow=2, ncol= 3)
xy

xy2 <- t(xy)
xy
xy <- matrix(c(x,y), nrow=2, ncol=3, byrow=T)
xy

mat <- matrix(1:12, ncol=4)
dim(mat)
dimnames(mat)
length(mat)
mode(mat)
class(mat)

mat1 <- matrix(1:12, ncol=4, dimnames = list(c("rice", "bread", "vegetable"), c("Seoul", "Incheon", "Busan", "Gwangju")))
mat1

dimnames(mat1)

mat2 <- matrix(1:12, ncol=4)
mat2
mat2[3,1]
mat1 <- matrix(1:12, ncol=4,  dimnames = list(c("rice", "bread", "vegetable"), c("Seoul", "Incheon", "Busan", "Gwangju")))
mat1
colSums(mat1)
mat3 <- rbind(mat1, colSums(mat1))
mat3

mat1
rowSums(mat1)
mat4 <- cbind(mat1, rowSums(mat1))
mat4

mat1
mat2 <- rbind(mat1, colSums(mat1))
mat2
rowSums(mat2)
mat2
mat3 <- cbind(mat2
              , rowSums(mat2))
mat3
colnames(mat3) <- c("Seoul", "Daejeon", "Busan", "Gwangju", "Total")
rownames(mat3) <- c("rice", "Bread", "vegetable", "total")
mat3

sum
mat1
apply(mat1, 1, sum)
apply(mat1, 2, sum)
mat1

mat3
mat4 <- cbind(mat3, rowSums(mat3[, 2:3]))
mat4

mat10 <- 1:6
mat10
dim(mat10) <- c(2, 3)
mat10

arry <- array(1:24, dim =c(3,4, 2))
arry

arry1 <- array(1:24, dim=c(3,4,2), dimnames =list(c("rice", "bread", "vegetable"), c("Seoul", "Incheon", "Daejeon", "Gwangju"), c("male", "female")))
arry1

mode(arry1)
class(arry1)
length(arry1)
dim(arry1)
names(arry1)
dimnames(arry1)

mid <- matrix(c(60, 80, 70, 45, 65, 95), ncol=2, dimnames=list(c("kim", "kang", "shin"), c("math", "english")))
mid
final <- matrix(c(70, 90, 60, 55, 75, 85), ncol=2, dimnames = list(c("kim", "kang", "shin"), c("math", "english")))
final
total.array <- array(c(mid, final), dim=c(3, 2, 2), dimnames = list(c("kim", "kang", "shin"), c("math", "english"), c("mid", "final")))
total.array
?array


#과제 
?array
score<-c( 100, 30, 40, 50, 50, 50, 80, 80, 80, 70, 120, 60)
mat4 <- matrix(score[1:6], ncol=2, dimnames=list(c("YES", "NO", "NO IDEA"), c("MAN", "WOMEN")))
mat4
mat5 <- matrix(score[7:12], ncol=2, dimnames=list(c("YES", "NO", "NO IDEA"), c("MAN", "WOMEN")))
mat5
mat6 <- cbind(mat4, mat5)
mat4
mat5
?array
mat7 <- array(c(mat4, mat5), dim=c(3, 2, 2),  dimnames=list(c("YES", "NO", "NO IDEA"), c( "MAN", "WOMEN"), c("Seoul Store", "Busan Store")))
mat7


?cbind


#LIST
lst <- list(name="KIM SANG HYUK", dept="SALES", salary=400000, union=T)
lst
lst1<- list("Sanghyuk SON", "Marketing", 30000, T)
lst1
lst$salary
lst[["salary"]]
lst[[1]]
lst[1]


lst2 <- list(name="SANGHYUK SON", dept="Sales", salary=40000, union=T)
lst2$gender="male"
lst2
lst2$dept <- NULL
lst2

lst_tot <- c(lst2, lst1)
lst_tot


lst
class(lst)
names(lst)
unlst <- unlist(lst)
unlst
class(unlst)

lst_rm  <- unlst
lst_rm
names(lst_rm) <- NULL
lst_rm
unlst
lst_rm1 <- unname(unlst)
lst_rm1



#FACTOR
vec <- c(2,3,4,4,2)
vec
class(vec)
mean(vec)
levels(vec)
length(vec)
fac <- factor(c(2,3,4,4,2))
fac
class(fac)
mean(fac) #불가
levels(fac)
length(vec)

fac<- as.numeric(fac)
fac


resp.vec <- c("yes", "yes", "no", "yes")
resp.fac <- factor(resp.vec)
names(resp.fac)
name <- c("A", "B", "C", "D")
name
name.fac <- factor(name)
year <- c("10대", "20대", "10대", "30대")
pers.fac <- factor(year)

length(pers.fac)

quality <- c("best", "better", "good", "best")
prefer <- ordered(quality, levels=c("good", "better", "best"))
prefer


#data frame이용
height <- c(160, 170, 180, 170, 180, 170)
weight <- c(70, 60, 80, 60, 80, 70)
gender <- c("male", "female", "female", "male", "male", "female")
class <- c("1", "1", "1", "2", "2", "2")

df1 <- data.frame(height, weight, gender, class, row.names=c("Kim", "Lee", "Park", "Choi", "Son", "Kang"), stringsAsFactors = F)
df1
length(df1)
mode(df1)
class(df1)
row.names(df1)
dim(df1)
df1$height
is.numeric(df1$height)
is.character(df1$class)

str(df1)


score1 <- data.frame(hakseong = c("K", "K", "C", "J", "C"), midterm=c(86, 33, 25,64,74))
score1

is.numeric(score1$hakseong)
is.numeric(score1$midterm)

score1[[2]]
score1[, 2]
score1$midterm

score1[1:3, ]
score1[1:3, 2]
score1
class(score1[1:3, 2])

score1[1:3, 2, drop=FALSE]
class(score1[1:3, 2, drop=F])

score1
name <- c("KIM", "LEE", "PARK", "CHOI", "KANG")
height <- c(168, 123,124,234,235)
gender <- c("female", "male", "female", "female", "male")
ks.df <- data.frame(name, height, gender)
temp.df <- ks.df

install.packages("dplyr")
library(dplyr)
ks.df
add <- data.frame(name="HONG", height=165, gender="male")
add
ks.df1 <- bind_rows(ks.df, add)
ks.df1

add <- data.frame(name=c("Chung", "Kim"), height=c(168, 183), gender=c("male", "female"))
ks.df2 <- bind_rows(ks.df1, add)
ks.df2

#열 추가. left_join()
ks.df3 <- temp.df
add <- data.frame(weight=c(60, 50, 40, 20, 50))
ks.df3
?data.frame
ks.df3 <- data.frame(ks.df3, add, list=("height", "weight", "gender"))
ks.df3[c("height", "weight", "gender")]

data <- subset(ks.df3, select=c("height", "weight", "gender"))
data


ht <- data.frame(name=c("Kim", "Lee", "Park", "Choi", "Kang", "Shin"), height=c(160, 170, 180, 172 ,182, 170))
wt <- data.frame(student=c("Kim", "Lee", "Park", "Choi", "Kang", "Shin"), weight=c(55, 65, 34, 63, 77, 34))
body <- merge(ht, wt, by="name")

body1 <- merge(ht, wt, by.x="name", by.y="student")
body1


set.seed(1)
x <- round(runif(12, 1, 100))
ts1 <- ts(x, start=2017, frequency=12)
ts2 <- ts(x, start=2017, frequency = 4) 
ts3 <- ts(x, start=2017, frequency = 1)  #frequency 는 일년에 몇번 관찰?
ts4 <- ts(x, end=2020, frequency=1)
x
ts1
ts2
ts3
ts4

length(ts1)
mode(ts1)
ts1
tsp(ts1)
start(ts1)

mat <- matrix(1:24, ncol=2)
mts1 <- ts(mat, start=2018, frequency=4)
mts1

set.seed(1)
x<- round(runif(12, 1, 100))
y <- round(runif(12, 1, 100))
df.temp <- matrix(c(x, y), ncol=2)
mts3 <- ts(df.temp, start=2018, frequency=4)
mts3


dimnames(mts3) <- list(NULL, c("Revenue","Profit"))
mts3 <- rename(mat3, c("G", "K"))
mts3



search()
install.packages("dplyr")
install.packages("dplyr", "ggplot2")
library("dplyr")

name <- c("KIM", "LEE", "PARK", "CHOI", "KANG")
height <- c(168, 123,124,234,235)
weight <- c(60, 90, 180, 170, 92)
gender <- c("female", "male", "female", "female", "male")

student.df <- data.frame(name, height, weight, gender)
student.df

student.df %>% filter(gender =="female") %>% select("height", "weight")
student.df %>% filter(gender!="female")

student.df.female <- student.df  %>% filter(gender=="female")
student.df.female

mean(student.df.female$height)


student.df %>% select(name, height)
student.df %>% select(-name)

student.df %>% filter(gender=="female") %>% select(name, height) 
student.df %>% select(name, height)  %>% head(2)

student.df %>% mutate(index= height*.7 + weight*.3)
student.df %>% mutate(index= height*.7 + weight*.3, decision=ifelse(index>=145, "fit", "not-fit"))
student.df %>% mutate(index= height*.7 + weight*.3, decision=ifelse(index>=145, "fit" , ifelse(index>=140, "reserve", "notfit")))

student.df %>% mutate(index=height*0.7+weight*0.3) %>% arrange(index)
student.df %>% group_by(gender) %>% summarise(mean.height = mean(height), sd.hgt=sd(height))
