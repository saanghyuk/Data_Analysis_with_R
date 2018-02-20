library(ggplot2)

#모든 테마 default 설정
theme_set(theme_minimal())

pl <- ggplot(mtcars, aes(x=wt, y=mpg)) +geom_point()

#add theme individual plot
pl+theme_dark()

#theme download
install.packages('ggthemes')
library(ggthemes)
#갑자기 theme_이 매우 많아 짐.
pl+theme_economist()
pl+theme_fivethirtyeight()
pl+theme_wsj() #wall street journal
