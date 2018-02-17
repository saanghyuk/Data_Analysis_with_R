v <- c(1, 2, 3)
m <- matrix(1:10, nrow=2)
df <- mtcars
class(v)
class(m)
class(df)


#List allows us to save various type of data in single Variable 
my.list <- list(v, m, df)
my.list


#You can use list when organizing your working data
my.named.list <- list(sample.vec = v, my.matrix = m, sample.df = df)
#어떤 방식으로든 다 부를 수 있음.
my.named.list['sample.vec']
my.named.list$sample.vec
my.named.list[1]
my.named.list['my.matrix']
my.named.list['sample.df']

class(my.named.list['sample.vec']) #계속 list로 나옴.
my.named.list$sample.vec
class(my.named.list$sample.vec) #numeric vector 로 나옴.
#위 두가지의 차이 알아야 함. 
class(my.named.list[['sample.vec']]) #numeric vector 로 나옴.


#combining list
double.list <- c(my.named.list, my.named.list)
double.list

str(my.named.list)
