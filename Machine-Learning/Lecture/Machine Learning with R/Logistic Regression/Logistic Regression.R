#LOGISTIC REGRESSION LECTURE
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Machine Learning with R/Logistic Regression')

df.train<- read.csv('titanic_train.csv')
print('         ')
print(head(df.train))
str(df.train)

#This package -> exploring and visualizing how much data you're missing
install.packages('Amelia') 
library('Amelia')
help('missmap') #How many NULL/NA
missmap(df.train, main = 'Missing Map'
        , col=c('yellow', 'black '), legend = T)
#missing cell/observed cell의 컬러 지정 후 확인

library(ggplot2)
ggplot(df.train, aes(Survived)) + geom_bar()
ggplot(df.train, aes(Pclass))+geom_bar(aes(fill=factor(Pclass)))
ggplot(df.train, aes(Sex))+geom_bar(aes(fill=factor(Sex)))
ggplot(df.train, aes(Age))+geom_histogram(bins=20, alpha=0.5, fill='blue')
ggplot(df.train, aes(SibSp)) + geom_bar()
ggplot(df.train, aes(Fare))+ geom_histogram(fill='green', color='black')



#Data Cleaning
#NA Value -> NA를 가지고 있는 row를 버려? 너무 심해. 
#그러면 How? 채우기. 나머지의 평균으로 채우기


pl <- ggplot(df.train, aes(Pclass, Age))
pl <- pl+ geom_boxplot(aes( group=Pclass, fill=factor(Pclass), alpha=0.4))
pl
pl + scale_y_continuous(breaks = seq(min(0), max(80), by=2)) + theme_bw()

#Make function to Fill NA
###### IMPUTATION OF AGE BASED ON CLASS
df.train$Age[13]

impute_age <- function(age,class){
  out <- age
  for (i in 1:length(age)){
    
    if (is.na(age[i])){
      
      if (class[i] == 1){
        out[i] <- 37
        
      }else if (class[i] == 2){
        out[i] <- 29
        
      }else{
        out[i] <- 24
      }
    }else{
      out[i]<-age[i]
    }
  }
  return(out)
}

###
fixed.ages <- impute_age(df.train$Age, df.train$Pclass)
fixed.ages


####Reassinging
df.train$Age <- fixed.ages
missmap(df.train, main= 'IMPUTATION CHECK', col=c('yellow', 'black'))


#BUILD OUR MODEL
str(df.train)
#안쓸 data 지우기. 
library(dplyr)
df.train <- select(df.train, -PassengerId, -Name, -Ticket, -Cabin)
head(df.train)

str(df.train)

#FACTORIZE 
df.train$Survived <- factor(df.train$Survived)
df.train$Pclass <- factor(df.train$Pclass)
df.train$Parch <- factor(df.train$Parch)
df.train$SibSp <- factor(df.train$SibSp)

str(df.train)

df.train
#
log.model <- glm(formula=Survived ~ . , family = binomial(link='logit'), data = df.train)
summary(log.model)
# * -> 많을수록 중요한 feature

#Prediction
set.seed(101)
library(caTools)
split <- sample.split(df.train$Survived, SplitRatio =0.7)
final.train <- subset(df.train, split==TRUE)
final.test <- subset(df.train, split==FALSE)

str(final.train)
final.log.model <- glm(Survived ~ ., family=binomial(link='logit'), data=final.train)
summary(final.log.model)


#
fitted.probabilities <- predict(final.log.model, final.test, type='response')

fitted.results <- ifelse(fitted.probabilities >0.5 , 1, 0)
fitted.results


misClassError <- mean(fitted.results != final.test$Survived)
1 - misClassError 

#Confusion MATRIX
#table(실제 데이터 / 예측 모델)
table(final.test$Survived, fitted.probabilities > 0.5)






#TEST
df.test <- read.csv('titanic_test.csv')
missmap(df.test, main = 'Missing Map'
        , col=c('yellow', 'black '), legend = T)




df.test$Age <-impute_age(df.test$Age, df.test$Pclass)
df.test$Age


#안쓸 data 지우기. 
library(dplyr)
df.test <- select(df.test, -PassengerId, -Name, -Ticket, -Cabin)
head(df.test)

str(df.test)
df.test
#FACTORIZE 
#df.test$Survived <- factor(df.test$Survived)
df.test$Pclass <- factor(df.test$Pclass)
df.test$Parch <- factor(df.test$Parch)
df.test$SibSp <- factor(df.test$SibSp)

missmap(df.test, main = 'Missing Map'
        , col=c('yellow', 'black '), legend = T)

str(df.test)


log.model
str(final.test)
str(df.test)
modelRun <- predict(final.log.model, df.test, type='response')
summary(modelRun)
