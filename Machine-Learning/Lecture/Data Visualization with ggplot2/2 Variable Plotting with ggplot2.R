library(ggplot2)
library(ggplot2movies)

pl<-ggplot(movies, aes(x=year, y=rating))
pl+geom_bin2d() # x와 y사이의, count를 color로 알려 주는 것. 
pl+geom_bin2d()+scale_fill_gradient(high='red', low='green')
pl+geom_bin2d(binwidth=c(3,1)) + scale_fill_gradient(high='red', low='green')

install.packages('hexbin')
pl+geom_hex()


pl+geom_density2d()
