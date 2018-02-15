
# c -> combine to be vector
nvec <- c(1, 2, 3, 4)
nvec
class(nvec) #안에 있는게 모두 numeric이라 numeric이라고 나옴 

cvec <- c("U", "S", "A")
class(cvec)

lvec <- c(T, F)
lvec

#You must put same data types in one vector
v <- c(TRUE, 20, 40) #TRUE ->1
v <- c(FALSE, 30, 40)  #FALSE -> 0

v <- c('USA', 20, 31) #20, 31 -> character

#Vector names
temps <- c(72, 71, 68, 73, 69, 75)
temps

daya<- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat')
names(temps) <- days
temps


