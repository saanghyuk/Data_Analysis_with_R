 
#GP -> total Games Played
#MPG -> Minutes Per Game
#FG -> Field Goals   
#PPG -> Point Per Game

#벡터들을 넣기만 합치기만 하면 Matrix가 됨.
#matrix()라는 함수가 있긴 하지만 잘 안씀. 

#matrix()
?matrix
my.data <- 1:20
my.data
A <- matrix(my.data, 4, 5)
A
A[2,3]

B <- matrix(my.data, 4,5, byrow=T)
B
B[2,5]


#rbind()
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1, r2, r3)
C
is.matrix(C)
#cbind()
c1 <- 1:5
c2 <- -1: -5
D <- cbind(c1, c2)
D


#


