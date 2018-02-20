library(ggplot2)
library(ggthemes)
head(mpg)

#1
pl1 <- ggplot(data=mpg, aes(x=hwy))
pl + geom_histogram(bins=20, fill="red", alpha=.5)

#2
pl2 <- ggplot(data=mpg, aes(x=manufacturer))
pl2+geom_bar(aes(fill=factor(cyl))) + theme_gdocs()

#3 
head(txhousing)
pl3 <- ggplot(data=txhousing, aes(x=sales, y=volume))
pl3+geom_point(color="blue", alpha=.5)


#4
pl3+geom_point(color="blue", alpha=.5) + geom_smooth(color="red")
