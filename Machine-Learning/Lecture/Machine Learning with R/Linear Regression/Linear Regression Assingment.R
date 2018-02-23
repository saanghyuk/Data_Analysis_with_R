

#
library(ggplot2)
getwd()
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Machine Learning with R/Linear Regression')
bike <- read.csv('bikeshare.csv')
head(bike)
colnames(bike)

head(bike)
colnames(bike)
ggplot(bike,aes(temp,count)) + geom_point(alpha=0.2, aes(color=temp)) + theme_bw()

bike$datetime
as.POSIXct(bike$datetime)
bike$datetime<-as.POSIXct(bike$datetime)
ggplot(bike,aes(datetime,count)) + geom_point(aes(color=temp),alpha=0.5)  + scale_color_continuous(low='#55D8CE',high='#FF6E2E') +theme_bw()

library(dplyr)
head(bike)

bike
bike1 <- subset(bike, select=c(temp, count)) #correlation
head(bike1)
cor(bike[, c('temp', 'count')])
cor.bike <- cor(bike1)
cor.bike

#BOXPLOT
colnames(bike)
summary(bike)
ggplot(bike,aes(factor(season),count)) + geom_boxplot(aes(color=factor(season))) +theme_bw()

bike.box

pl<- ggplot(df, aes(x=factor(cyl), y=mpg))
pl + geom_boxplot()+ coord_flip() #coordinate layer flip시키기
pl+geom_boxplot(fill='blue')
pl+geom_boxplot(aes(fill=factor(cyl))) + theme_dark() #각각 색갈 다르게 정도? 


head(bike)
#Feature Engineering

time.stamp <- bike$datetime

bike$hour<- format(time.stamp, "%H")
bike$datetime <- format(time.stamp, "%y-%m-%d")
head(bike)
bike$hour <- sapply(bike$datetime, function(x){format(x, "%H")})

pl <- ggplot(filter(bike,workingday==1),aes(hour,count)) 
pl <- pl + geom_point(position=position_jitter(w=1, h=0),aes(color=temp),alpha=0.5)
pl <- pl + scale_color_gradientn(colours = c('dark blue','blue','light blue','light green','yellow','orange','red'))
pl + theme_bw()

pl <- ggplot(filter(bike,workingday==0),aes(hour,count)) 
pl <- pl + geom_point(position=position_jitter(w=1, h=0),aes(color=temp),alpha=0.8)
pl <- pl + scale_color_gradientn(colours = c('dark blue','blue','light blue','light green','yellow','orange','red'))
pl + theme_bw()


#BUILD THE MODEL
temp.model <- lm(count ~ temp , data=bike )
summary(temp.model)

head(bike)
?data.frame
predict1<-data.frame(temp=c(25))
predict1
predict1

predict(model, predict1)


#
bike$hour <-sapply(bike$hour, as.numeric)
class(bike$hour)

time.stamp <- bike$datetime[4]
format(time.stamp, "%H")

time.stamp <- bike$datetime[4]
format(time.stamp, "%H")


#
model <- lm(count ~ . -casual - registered -datetime -atemp,bike )
summary(model)
