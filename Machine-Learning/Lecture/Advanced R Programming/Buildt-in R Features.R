#seq(start, end, step)
seq(0, 10, by=2)
seq(0, 100, by=10)
seq(0, 24, by=2)
help(seq)

#sort()
v <- c(1, 4, 7, 2, 13, 3, 11)
sort(v) #ascending
sort(v, decreasing=T)

cv<-c('b', 'd', 'a', 'C', 'A')
sort(cv) #알파벳 순서대로, 대문자 first


#rev() #반대 순서로
v<- 1:10
rev(v) 

#str()
str(v)
str(mtcars)

#summary
summary(mtcars)

#append() -> merge object together
v <- 1:10
v2 <- 35:40
append(v, v2) 
append(v2, v)

#Checking and Converting the Data Type
#is
v<- c(1, 2, 3)
is.vector(v)
is.data.frame(v)
is.data.frame(mtcars)

#as -> convert data type
as.data.frame(v)
as.list(v)
as.matrix(v)
