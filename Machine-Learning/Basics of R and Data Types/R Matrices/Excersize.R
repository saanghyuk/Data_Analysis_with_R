
#1
A <- c(1,2,3)
B <- c(4,5,6)

mat1.1 <- rbind(A, B)
mat1.2 <- cbind(A, B)

v <- c(A, B)
mat1.3 <- matrix(v, byrow=T, nrow=2)
rownames(v3) <- c('A', 'B')
v3

#2
mat2 <- matrix(1:9, byrow=TRUE , nrow=3)
mat2

#3
is.matrix(mat2)

#4
mat4.1<- matrix(1:25, byrow=TRUE ,nrow=5)
v1 <- mat4[2, 2:3]
v2 <- mat4[3, 2:3]

mat4.2 <- rbind(v1, v2)
mat4.2

mat4.1
mat4.3<-mat4.1[4:5, 4:5]
is.matrix(mat4.3)
mat4.3

#7
sum(mat4.3)

#8 연속 균등 분포, 모든 숫자 확률 일정
help(runif)
mat8.1 <- matrix(runif(20, 0, 100), nrow=4, byrow = TRUE)
mat8.1
runif(20, 0, 100)
