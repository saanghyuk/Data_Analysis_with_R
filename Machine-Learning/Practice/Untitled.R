5>6
6>5
v1 <- c(1,2,3)
v2 <- c(10,20,30)
v1 <v2

v1 < 2

help(vector)
help.start()
str(v1)
x=1
x
#MODE 에서 타입을 지정
as.vector(x, mode="logical")
vector(mode="logical", length=0)
is.vector(x)
x<- mtcars
x
#합치기
paste('hello', 'world', sep='-|-')
paste0('hello', 'world')

sprintf("%s is %s feet tall\n", "Sven", 7)
?sprintf()
  

#R DATA TYPES
n <- 2.2
i <- 5
t <- TRUE
f <- FALSE
char <- 'HELLO, WORLD'
char
c <- 'SINGLE QUOTE CHAR'

class(t)
mode(t)


#VARIABLES
variable.name <- 10
variable.name

bank.account <- 100
deposit <- 10
bank.account <- bank.account + deposit
bank.account 

#VECTOR BASICS
nvec <- c(1,2,3,4,5)
nvec

class(nvec)
lvec <- c(TRUE, FALSE)
lvec
class(lvec)
v <- c(FALSE, 2)
class(v)

temps <- c(123,123,123,124,124,41)
temps

names(temps) <- c('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT')
temps 

days <- c('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT')
temps2 <- c(1,2,3,4,5,6)
names(temps2) <- days
temps2


#VECTOR INDEXING AND SLICING 
v1 <- c(100, 200, 300)
v2 <- c('a', 'b', 'c')
v1
v2

v1[2]
v2[3]
v1[c(1,2)]
v1[c(1,3)]
v1[2:4]
v2[1:3]
v <- c(1,2,3,4)
names(v) <- c('a', 'b', 'c', 'd')
v['a']
v['c']
v[1:3]
v[c('a', 'b', 'c')]

v
v>2
v[v>2]
filter<- v>2
v[filter]


#VECTOR OPERATIONS
v1 <- c(1,2,3)
v2 <- c(5,6,7)
v1+v2
v1-v2

sum(v1)
v <- c(12, 45, 100, 2)
sd(v)
var(v)
max(v)
prod(v)
v1 <- c(1,2,3,4,5)
prod(v1)  #전체 다 곱하기


#-------MATRIX ----------
1:10
v<-1:10
matrix(v)
matrix(v, nrow=2)
matrix(v, byrow = T, nrow=2)
v


goog <- c(450, 451, 452, 445, 268)
msft <- c(230, 231, 232, 234, 235)

stocks <- c(goog, msft)
stocks
stock.matrix <- matrix(stocks, byrow=T, nrow=2)
stock.matrix

#NAMING MATRIX
days <- c('A', 'B', 'C', 'D', 'E')
st.names <- c('GOOD', 'MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
stock.matrix


animal <- c('d', 'c', 'd', 'c', 'c')
id <- c(1,2,3,4,5)
factor.ani <- factor(animal)
factor.ani
ord.cat <- c('cold', 'med', 'hot')
ord.cat
temps <- c('cold','med','cold','med','hot','hot','cold')
fact.temp <- factor(temps, ordered=TRUE, levels =c('cold', 'med', 'hot'))
fact.temp
summary(temps)
summary(fact.temp)


#MATRIX ARITHMETIC
