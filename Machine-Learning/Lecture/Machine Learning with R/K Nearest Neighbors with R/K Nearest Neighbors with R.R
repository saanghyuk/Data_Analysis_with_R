setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Machine Learning with R/K Nearest Neighbors with R')

install.packages('ISLR')
library(ISLR)
str(Caravan)

summary(Caravan$Purchase)
any(is.na(Caravan)) #NA가 없는 것. 

var(Caravan[, 1]) #1번 컬럼의 분산
var(Caravan[, 2]) #2번이 분산이 적음

purchase <- Caravan[, 'Purchase']
standardized.Caravan <- scale(Caravan[, -86]) #86번 제외하고 나머지 정규화
standardized.Caravan
var(standardized.Caravan[, 1])
var(standardized.Caravan[, 2])
mean(standardized.Caravan[, 3])

standardized.Caravan[, 1]

#TRAIN 
summary(standardized.Caravan)
mean(standardized.Caravan[3])

#TRAIN TEST SPLIT
test.index <- 1:1000
test.data <- standardized.Caravan[test.index, ]

test.purchase <- purchase[test.index]

#TRAIN
train.data <- standardized.Caravan[ -test.index, ]
train.purchase <- purchase[-test.index]

#######################
#######################
#######################
#BUILD KNN MODEL
library(class) #contains knn function
set.seed(101)

#label 없는 train, test 넣고, 그리고, training label data 를 넣음. 이게 중요
predicted.purchase <- knn(train.data, test.data, train.purchase, k=1 )
predicted.purchase

#EVALUDATE
missclass.error <- mean(test.purchase != predicted.purchase)
missclass.error

######
#CHOOSING A K VALUE
######
predicted.purchase <- knn(train.data, test.data, train.purchase, k=3 )
predicted.purchase

#EVALUDATE
missclass.error <- mean(test.purchase != predicted.purchase)
missclass.error


predicted.purchase <- knn(train.data, test.data, train.purchase, k=5 )
predicted.purchase

#EVALUDATE
missclass.error <- mean(test.purchase != predicted.purchase)
missclass.error


#위와 같이 계속 k를 높여 가면서 정확도를 확인해 보는 것. 
#근데 이걸 for loop으로 만들 수 있음. 
predicted.purchase <- NULL 
error.rate <- NULL
for(i in 1:20){
  predicted.purchase <- knn(train.data, test.data, train.purchase, k=i)
  error.rate[i] <- mean(test.purchase != predicted.purchase)
}
print(error.rate)


##VISUALIZE K ELLBOW METHOD
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate, k.values)
error.df

ggplot(error.df, aes(k.values, error.rate))+geom_point()+geom_line(lty='dotted', color='red')
