
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Machine Learning with R/Linear Regression')

df <- read.csv('student-mat.csv', sep=';')
head(df) #뭐야 이거. ;로 separate되있음.

#G1- first period grade. 이런식으로 g3까지 있음. 

summary(df)

#clean the data
#check NA value
any(is.na(df)) #NA value가 없다는 것. 
str(df)

#ggplot

library(ggplot2)
library(ggthemes)
library(dplyr)
?sapply()
#Num only
is.numeric(df)
num.cols <- sapply(df, is.numeric) #return only numeric columns
num.cols
cor.data <- cor(df[, num.cols]) #correlation
cor.data

#Visualize this data above
#correlation diagram package
install.packages('corrgram')
install.packages("corrplot")
library(corrgram)
library(corrplot)

corrplot(cor.data, method='color')

#corplot -> 반드시 numeric을 줘야 하는데
#corgram은 df를 직접 줄 수 있음. 

corrgram(df, order=T, lower.panel=panel.shade, upper.panel=panel.pie, text.panel=panel.txt)



ggplot(df, aes(x=G3)) +geom_histogram(bins=20, alpha=0.5, fill='blue')



#Spliting Data into <Training Set, Testing Set>
install.packages('caTools')
#This package allows us to randomly split up your data into Training set & Testing Set
library(caTools)

#Set A Seed 
set.seed(101) #랜덤이지만 같은 넘버 필요할 때
# Split up the Sample(caTools)
?sample.split
#70% Traing Sample
sample <- sample.split(df$G3, SplitRatio= 0.7) 
sample
# 70% of data -> TRAIN
train <- subset(df, sample==TRUE )
# 30% will betest
test <- subset(df, sample==FALSE)

#TRAIN and BUILD MODEL
#G3를 예측 할꺼고, 그걸 위해 내 모든 데이터 쓸꺼임. 
model <- lm(G3 ~ . , data=train )

#Run Model


#Interpret the Model
summary(model)


#Visualize this Model
summary(model)
res <- residuals(model)
class(res)
res <- as.data.frame(res)
head(res)
res 
library(ggplot2)
ggplot(res, aes(res)) + geom_histogram(fill='blue', alpha=0.5)


#Plotting Model
plot(model) 

#PREDICTIONS with Testing Set
#현재 모델은 G3와 나머지의 상관관계 -> 거기다가 test를 넣으면 G3예측
G3.predictions <- predict(model, test)

results <- cbind(G3.predictions, test$G3)
colnames(results) <- c('predicted', 'actual')
results <- as.data.frame(results)
head(results)
results


#Our model was predicting negative final score test values.
#점수중 가장 낮은 것의 예측치는 0 여야 함. 
#TAKE CARE OF NEGATIVE VALUES
to_zero <- function(x){
  if(x <0 ){
    return(0)
  }else{
    return (x)
  }
}


#APPLY ZERO FUNCTIONS
min(results) # -가 있음. 
results$predicted <- sapply(results$predicted, to_zero)

results

#MEAN SQUARED ERROR
mse <- mean((results$actual - results$predicted)^2)
print('MSE')
print(mse)
#ROOT MEAN SQUARED ERROR
print('Squared Root of MSE')
print(mse^0.5)

#########
#sum of the squared error
SSE  <- sum((results$predicted - results$actual)^2)
SST <- sum((mean(df$G3) - results$actual)^2)

R2 <- 1-SSE/SST
R2
#이건 뭘까?
#잔차가 정규분포처럼 나오길 원해.
#잔차가 0을 중심으로 정규분포처럼 나오나봐. 
#근데, 큰 negative값의 잔차들이 있네
#lm을 그릴떄, 모델이 poor 학생들에게 - 점수를 줌. 
#그러나, 제일 낮은 점수는 0 이잖아. 

#The General model of building a linear regression model in R
#looks like this:
#lm(linear model), (y(feature column ), )
model <- lm(y~x1+x2, data)
#or to use all the features in your data
model <- lm(y~. , data)




