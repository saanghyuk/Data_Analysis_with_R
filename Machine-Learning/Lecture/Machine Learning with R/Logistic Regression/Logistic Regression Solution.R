adult <- read.csv('adult_sal.csv')
library(dplyr)
adult <- select(adult, -X)

table(adult$type_employer)

unemp <- function(job){
  job <- as.character(job)
  if(job=='Never-worked' | job=='Without-pay'){
    return('Unemployed')
  }else{
    return(job)
  }
}

adult$type_employer <- sapply(adult$type_employer, unemp)
table(adult$type_employer)

group_emp <- function(job){
  if(job=='Local-gov' | job=='State-gov'){
    return('SL-gov')
  }else if(job=='Self-emp-inc' | job=='Self-emp-not-inc'){
    return('self-emp')
  }else{
    return(job)
  }
}

adult$type_employer <- sapply(adult$type_employer, group_emp)
table(adult$type_employer)


table(adult$marital)
group_marital <- function(mar){
  mar <- as.character(mar)
  
  # Not-Married
  if (mar=='Separated' | mar=='Divorced' | mar=='Widowed'){
    return('Not-Married')
    
    # Never-Married   
  }else if(mar=='Never-married'){
    return(mar)
    
    #Married
  }else{
    return('Married')
  }
}

adult$marital <- sapply(adult$marital,group_marital)
table(adult$marital)

table(adult$country)
levels(adult$country)
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
adult$country <- sapply(adult$country,group_country)
table(adult$country)
str(adult)

adult$type_employer <- sapply(adult$type_employer,factor)
adult$country <- sapply(adult$country,factor)
adult$marital <- sapply(adult$marital,factor)
str(adult)

library(Amelia)
adult[adult=='?'] <- NA
table(adult$type_employer)
adult$type_employer <- sapply(adult$type_employer,factor)
adult$country <- sapply(adult$country,factor)
adult$marital <- sapply(adult$marital,factor)
adult$occupation <- sapply(adult$occupation,factor)


missmap(adult)
missmap(adult,y.at=c(1),y.labels = c(''),col=c('yellow','black'))
# May take awhile
adult <- na.omit(adult)
#str(adult)

missmap(adult,y.at=c(1),y.labels = c(''),col=c('yellow','black'))


#EDA
str(adult)
library(ggplot2)
library(dplyr)

ggplot(adult,aes(age)) + geom_histogram(aes(fill=income),color='black',binwidth=1) + theme_bw()
ggplot(adult,aes(hr_per_week)) + geom_histogram() + theme_bw()
names(adult)[names(adult)=="country"] <- "region"
ggplot(adult,aes(region)) + geom_bar(aes(fill=income),color='black')+theme_bw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


#LOGISTIC REGRESSION MODEL
str(adult)
library(caTools)
set.seed(101)
sample <-sample.split(adult$income, SplitRatio = 0.7)
train <- subset(adult, sample=T)
test <- subset(adult, sample=F)

model <- glm(income ~ ., family=binomial('logit'), data=train)
summary(model)

#step 중요한 걸 불러오는 것 같음.
new.step.model <- step(model)

summary(new.step.model)


#Confusion Matrix
test$predicted.income <- predict(model, newdata=test, type='response')
#0.5보다 크면 <=50K ? >50 ?
str(test)
table(test$income, test$predicted.income > 0.5)

#Accuracy of the MODEL
acc <- (21401+4633)/(21401+1667+3017+4633)
acc

















