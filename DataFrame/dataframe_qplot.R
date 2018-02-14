
?read.csv()

#Method 1: Select The File Manually
stats <- read.csv(file.choose())
stats

#Method 2: Set Working Directory and Read Data
getwd()

#Windows:
setwd("C:\\Users\\Sanghyuk\\Desktop....")
#Mac:
setwd("/Users/sanghyuk/documents/r/DataFrame")
getwd()
rm(stats)
stats <- read.csv("DemographicData.csv")
stats

#---------------Explore DataSet------------
stats
nrow(stats)
ncol(stats)
head(stats, n=10)
tail(stats, n=8)

#runif() str()  이 두개 함수가 코딩인터뷰에서 맨날 나오는 함수임. 
str(stats) #Structure, level은 종류 
summary(stats)


#---------------Using the $ sign
stats
head(stats)
stats[3, 3]
stats[3, "Birth.rate"]
stats[ "Angola" , 3] #이건 안되지, 컬럼 이름이 아니야 단지 데이터셋이야
stats$Internet.users #해당 컬럼만 싹다 가져옴,. .

is.vector(stats$Internet.users)
stats$Internet.users[2]
stats[, "Internet.users"]

levels(stats$Income.Group)

#---------------Basic Operations with a DF
stats
stats[1:10, ]
stats[3:5, ]
stats[c(4, 100),]
#Remember how the [] work:
#DF 에서는 이렇게 하나만 가지고 와도 벡터로 안바뀜. 
stats[1, ]
is.data.frame(stats[1,]) #T
stats[, 1]
is.data.frame(stats[,1]) #F
stats[, 1, drop=F] #DF
is.data.frame(stats[,1, drop=F])

#Multiply Columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column
head(stats)
stats$MyCalc <- stats$Birth.rate + stats$Internet.users
head(stats)

#test of knowledge
stats$xyz <- 1:5 #반복 되지.
stats

#Remove a column
head(stats)
stats$MyCalc <- NULL
stats
stats$xyz <- NULL
stats

#---------------Filtering DF

head(stats)
filter <- stats$Internet.users < 2
stats[filter, ]

stats[stats$Birth.rate > 40, ]
stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]
stats[stats$Income.Group =="High income", ]

stats$Country.Name == "Malta"
stats[stats$Country.Name == "Malta",]



#---------------Introduction to Q plot
install.packages("ggplot2")
library(ggplot2)
?qplot()
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3)) #size
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3),
      colour=I("blue")) 
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot") 

##---------------Visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate
      , size=I(4), colour=I("red"))

qplot(data=stats, x=Internet.users, y=Birth.rate
      , size=I(3), colour=Income.Group)


#---------------Creating Data Frames 
mydf <- data.frame(Countries_2012_Dataset, 
                   Codes_2012_Dataset, 
                   Regions_2012_Dataset)
head(mydf)
#Change Colum names
colnames(mydf) <- c("Country", "Code", "Region")
head(mydf)
rm(mydf)

#한번에 이름까지, C 바인드에서도 이렇게 썻었지. 
mydf <- data.frame(Country = Countries_2012_Dataset, 
                   Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)
head(mydf)
tail(mydf)
summary(mydf)


#---------------Merging Data Frames
head(stats)
head(mydf)
#위 두개를 합칠꺼임 
merged <- merge(stats, mydf, by.x ="Country.Code", by.y= "Code")
head(merged)
merged$Country <- NULL
str(merged)
tail(merged)


#---------------Visualizing with new Split 
head(merged)
qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(3), colour=Region)
#1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(3), colour=Region, shape=I(15))

#2. Transparency -Alpha
qplot(data=merged, x=Internet.users, y=Birth.rate,
      #0 is fully transparent, 1 is fully opaque
      size=I(3), colour=Region, shape=I(19), alpha=I(0.8))
#3. Title - Main
qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(3), colour=Region, shape=I(15), alpha=I(0.6),
      main="Birth Rate vs Internet Users")



