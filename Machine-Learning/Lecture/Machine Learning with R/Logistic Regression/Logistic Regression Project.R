
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Machine Learning with R/Logistic Regression')
adult <- read.csv('adult_sal.csv')
head(adult)

library(dplyr)
adult <- select(adult, -X)
head(adult)
str(adult)
summary(adult)

table(adult$type_employer)
# There are 1836 ?
#Two Smallest Group?
#Never Workded, Without-pay

class(adult$type_employer)

adult$type_employer<-as.character(adult$type_employer)

change_type <- function(column, string1, string2, string3){
  output <- column
  for( i in 1:length(column)){
  
    if(output[i] == string1){  
      output[i] <- string3
    
      }else if(output[i] == string2){
        output[i] <- string3
        }
  }
  return(output)
}

change_type(adult$type_employer, 'Without-pay', 'Never-worked', 'Unemployed')
#
adult$type_employer<-change_type(adult$type_employer, 'Without-pay', 'Never-worked', 'Unemployed')
unique(adult$type_employer)
table(adult$type_employer)


#
adult$type_employer<-change_type(adult$type_employer, 'State-gov', 'Local-gov', 'SL-gov')
unique(adult$type_employer)

#
adult$type_employer<-change_type(adult$type_employer, 'Self-emp-not-inc', 'Self-emp-inc', 'self-emp')
unique(adult$type_employer)
table(adult$type_employer)


#
adult$marital<-as.character(adult$marital)
head(adult$marital)
adult$marital<-change_type(adult$marital, 'Separated', 'Divorced', 'Not-Married')
adult$marital<-change_type(adult$marital, 'Not-Married', 'Widowed', 'Not-Married')
adult$marital<-change_type(adult$marital, 'Married-civ-spouse', 'Married-spouse-absent', 'Married')
adult$marital<-change_type(adult$marital, 'Married', 'Married-AF-spouse', 'Married')
unique(adult$marital)
table(adult$marital)


#
table(adult$country)
Asia <- c('China','Hong','India','Iran','Cambodia','Japan', 'Laos' ,
          'Philippines' ,'Vietnam' ,'Taiwan', 'Thailand')

North.America <- c('Canada','United-States','Puerto-Rico' )

Europe <- c('England' ,'France', 'Germany' ,'Greece','Holand-Netherlands','Hungary',
            'Ireland','Italy','Poland','Portugal','Scotland','Yugoslavia')

Latin.and.South.America <- c('Columbia','Cuba','Dominican-Republic','Ecuador',
                             'El-Salvador','Guatemala','Haiti','Honduras',
                             'Mexico','Nicaragua','Outlying-US(Guam-USVI-etc)','Peru',
                             'Jamaica','Trinadad&Tobago')
Other <- c('South')


group_country <- function(ctry){
  if (ctry %in% Asia){
    return('Asia')
  }else if (ctry %in% North.America){
    return('North.America')
  }else if (ctry %in% Europe){
    return('Europe')
  }else if (ctry %in% Latin.and.South.America){
    return('Latin.and.South.America')
  }else{
    return('Other')      
  }
}

sapply(adult$country, group_country)
adult$country
adult$country<-sapply(adult$country, group_country)
 
table(adult$country)

str(adult)
adult$type_employer <- factor(adult$type_employer)
adult$marital <- factor(adult$marital)
adult$country<-factor(adult$country)

str(adult)

#
head(adult)
head(adult)
adult[adult=='?']
adult[adult=='?'] <- NA
is.na(adult)

table(adult$type_employer)

install.packages('Amelia')
library('Amelia')
missmap(adult, main ='Missing Map', col=c('yellow', 'black '), legend = T)
missmap(adult,  y.at=c(1), y.labels = c(''),col=c('yellow','black'))


#NA가 있는 행은 삭제
adult <- na.omit(adult)
missmap(adult,  y.at=c(1), y.labels = c(''),col=c('yellow','black'))

#EDA
str(adult)
library(ggplot2)
ggplot(adult, aes(x=age)) + geom_histogram(aes(fill=income))
ggplot(adult, aes(x=hr_per_week))+geom_histogram()
library(plyr)
adult <- rename(adult, c('continent'='region'))
str(adult)


bar <- ggplot(adult, aes(x=region)) + geom_bar(aes(fill=income), position = position_stack(reverse = TRUE))
bar + theme(axis.text.x = element_text(angle = 90, hjust = 1))


#Build a Model
head(adult)

#Train Test Split
library(caTools)
split <- sample.split(adult, SplitRatio = 0.7)
train.set <- subset(adult, split==TRUE)
test.set <- subset(adult, split=FALSE)

help(glm)
model <- glm(formula = income ~ ., family = binomial(logit), data = train.set)
summary(model)

new.model <- step(model)
summary(new.model)


test.set$income
probabilities <- predict(new.model, test.set, type='response')
probabilities
results <- ifelse(probabilities > 0.5, '<=50K', '>50K')
results

test.set$income
missClassError <- mean(results != test.set$income)
missClassError
1 - missClassError

table(test.set$income, probabilities > 0.5)
