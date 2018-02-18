

install.packages('tidyr')
install.packages('data.table') 

#data.table -> dataframe+ few extra features 
#cleaner syntax
library(tidyr)
library(data.table)

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100) #random number
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
df

#gather()
gather(df, Quarter, Revenue, Qtr1:Qtr4)

df %>% gather(Quarter, Revenue, Qtr1:Qtr4)

#spread()
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

stocks.gathered <- stocks %>% gather(stock, price, X:Z)
stocks.gathered <- stocks %>% gather(stock, price, X,Y,Z) #same with above
stocks.gathered
stocks

stocks.gathered %>% spread(stock, price) #spread 했던 걸 원래대로 되돌리는 듯. 
spread(stocks.gathered, stock, price)
spread(stocks.gathered, time, price) #기존에 있는 time을 넣었음. 


#separate()
df <- data.frame(new.col=c(NA, "a.x", "b.y", "c.z"))
df
separate(df, new.col , c('ABC', 'xyz')) #자동으로 separate

df <- data.frame(new.col=c(NA, "a-x", "b-y", "c-z"))
#일단 왠만한건 다 그대로 작동 잘하는데, 안되면 sep달아서 딱 구분 하자
df.sep<- separate(data=df, col=new.col, into=c('ABC', 'xyz'), sep='-')
df.sep

#unite()
unite(df.sep, new.joined.col , ABC, xyz , sep='')
unite(df.sep, new.joined.col , ABC, xyz , sep='-')
