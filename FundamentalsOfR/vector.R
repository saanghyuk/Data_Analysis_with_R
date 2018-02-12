
#Vector에 넣기.
MyFirstVector <- c(3, 45, 56, 732)

#위 벡터가 숫자 벡터 인지 확인.
is.numeric(MyFirstVector)

#정수
is.integer(MyFirstVector)
is.double(MyFirstVector)
#R에서는 기본이 double임. 

V2 <- c(3L, 12L, 243L, 0L)
is.integer(V2)
is.numeric(V2)
is.double(V2)

V3 <- c("a", "834", "Hello")
is.character(V3)
is.numeric(V3)

#You cannot mix data type in vector
V4 <- c("a", "834", "Hello", 7)
#7 is actomatically turned into charactor
V4


#sequece - like ':'
seq(1, 15) #1:15 와 같음.
1:15
seq(1, 15, 2) #3번째는 step
#둘다 되네?, 

z <- seq(1, 15, 4)
z

#repicate
# 벡터는, x번
a <- rep(3, 50)
a

rep("a", 5)
x <- c(80, 20)
y <- rep(x, 10)
y
