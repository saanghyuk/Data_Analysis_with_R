
library(ggplot2)
df<- mpg
head(mpg)

pl <- ggplot(df, aes(x=class)) #x는 categorical 이여야 함.
#histogram 이랑, 차이는 ggplot에서는 categorical data를 x축에서 사용. 
pl+geom_bar(color='red', fill='blue') #outline
pl+geom_bar(aes(fill=drv))
pl+geom_bar(aes(fill=drv), position='dodge') 
pl+geom_bar(aes(fill=drv), position='fill') #percentage

?geom_bar

