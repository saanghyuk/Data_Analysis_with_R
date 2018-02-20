install.packages('ggplot2')
library(ggplot2)
install.packages('ggplot2movies') #data set
library(ggplot2movies)


#DATA & AESTHETICS
colnames(movies)
head(movies)
pl <- ggplot(data=movies, aes(x=rating))

#GEOMETRY
pl2<- pl+geom_histogram(binwidth = 0.1, color='red', 
                  fill='pink', alpha=.4) #alpha 0~1

#label
pl3 <- pl2 + xlab('Movie Rating') + ylab('Count')

#title
pl3+ggtitle('SANGHYUK SON')

#Advanced Technic

pl2<- pl+geom_histogram(binwidth = 0.1, 
                        aes(fill=..count..)) #fill out the color of histogram bases on count of the histogram
#higher -> blue color lighter
pl2
