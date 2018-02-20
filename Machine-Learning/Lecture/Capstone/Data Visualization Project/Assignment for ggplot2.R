
getwd()
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Capstone/Data Visualization Project')

library(ggplot2)
library(data.table)
df <- fread("Economist_Assignment_Data.csv", drop=1) #skip the first column
head(df)

colnames(df)
pl <- ggplot(data=df, aes(x=CPI, y=HDI, color=Region)) + geom_point(shape=1, size=4) +
  geom_smooth(aes(group=1), method='lm', formula=y~log(x), se=FALSE, color='red')

pl2 #<- pl  +geom_text(aes(label=Country, color=Region))
pl2 <- ggplot(data=df, aes(x=CPI, y=HDI, color=Region)) + geom_point(shape=1, size=4) +
  geom_smooth(aes(group=1), method='lm', formula=y~log(x), se=FALSE, color='red')
pl2


pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore", "Korea (South)")

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel), check_overlap = TRUE)

pl3
pl4 <- pl3 +
  theme_economist_white()+
  scale_x_continuous(name="Corruption Perceptions Index, 2011 (10=least corrupt)", limits=c(.9, 10.5), breaks=1:10) 

pl4

pl5 <- pl4 + scale_y_continuous(name="Human Development Index, 2011 (1=Best)",breaks = seq(0, 1, .2), limits = c(0,1))
pl6 <- pl5+ggtitle("Corruptio and Human development") + theme(plot.title=element_text(hjust=0.5))
pl6

