getwd()
setwd("/Users/sanghyuk/Documents/R/AdvancedGgplot")  
getwd()

movies <- read.csv("Movie-Ratings.csv")
head(movies) #. %이런거 Rstudio에서 못읽으니깐, 그냥 ...으로 컬럼 이름 표현해 놓음.
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
str(movies)
summary(movies)
#위 중에 Year은 카테고리 처럼 되야지. 숫자로 뜨고 평균 뜨는 거는 의미가 없어. 
#Year을 Non-Factor Numeric Variable -> Factor Variable로 바꿔야함. 

#Factorize
movies$Year <-factor(movies$Year)
summary(movies)

#------------------Aesthetics->How your data maps to what you want to see
library(ggplot2)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) #여기까지만 하면 Empty -> 뭘 보고 싶은지 말해줘야되.

#Add Geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))+ 
  geom_point()

#Add Color
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))+ 
  geom_point()

#Add Size - better way
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=Genre))+ 
  geom_point()

#Add Size - better way
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgetMillions))+ 
  geom_point()

#>>>This is #1 (We will imporve it, we will make it better)

#------------------Plotting with Layers
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size=BudgetMillions)) #Data들이 p 변수로 할당됨. 
p
p+geom_point() #이렇게 하는게 매우 중요한 컨셉임 aesthetic 만들어 놓고 위에 geom 올리는 거지.
p+geom_line()

#Multiple Layers #아래처럼 동시에 올릴 수 있음.
p + geom_line()+ geom_point()

#------------------Overriding Aesthetics


q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
#Add Geom Layers
q + geom_point() #geom이 q의 aes를 상속함 근데 오버라이딩 할수도 있음. 

#Overriding Aesthetics
#Exmaple 1 #legend 안바뀌는 거 주의
q+geom_point(aes(size=CriticRating))
#Example 2 (q remains the same, 아직 안건드렸으니깐)
q+geom_point(aes(colour=BudgetMillions))

#Example 3  #x 축 이름도 안바뀜. 내용만 바뀜
q+geom_point(aes(x=BudgetMillions)) +xlab("Budget Millions $$$")

#Ex4
q+geom_line() + geom_point()

#reduce line size, 여기서의 size는 aes를 안썻네
q+geom_line(size=1) + geom_point()






#------------------Mapping VS Setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r+geom_point()

#Add Color? 2 ways we can use
#1 Mapping(What we've done so far):
r + geom_point(aes(colour=Genre))
#2. Setting
r+geom_point(colour="DarkGreen")

#ERROR: 다른 색이 나오고, 레전드가 생김. 
#나는 셋팅했다고 생각한건데, 실제로는 맵핑이 된거임. 
# 
r+geom_point(aes(colour="DarkGreen"))


#1. Mapping
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r+ geom_point(size=1)
#Error
r+geom_point(aes(size=3)) #r이 3을 보고, 이게 어떤 factor라고 보는 거야. 
# 3 카테고리면 다 이 사이즈로 하자는 것.





#------------------Histograms and Density Charts
s<-ggplot( data=movies, aes(x=BudgetMillions))
s+geom_histogram(binwidth=10) #How many movies in one block 
#statistics --> How many movies 이런거

#Add color
s+geom_histogram(binwidth=10, aes(fill=Genre)) 
#Add a border
s+geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") 
#>>> 3 (we will improve it end of the section)

#Density Chart, sometimes you may need density charts:
s+geom_density(aes(fill=Genre))
s+geom_density(aes(fill=Genre), position="stack")



#------------------Starting Layer Tips
 
t<- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth = 10,
                 fill="White", 
                 colour="Blue")

#Another way:
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRating),
                   fill="White", 
                   colour="Blue")
#>>> 위 두가지 중 어떻게 할지는 본인 원하는대로 하면 됨.

t + geom_histogram(binwidth = 10,
                   aes(x=CriticRating),
                   fill="White", 
                   colour="Blue")

#Sometimes, skeleton, 이런식으로 써놓고 아래서 추가하고 이렇게도 씀. 
t<- ggplot()
t



#------------------Statistical Transformation

?geom_smooth()
u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u+geom_point() + geom_smooth(fill=NA) #추세를 보여주네 

# boxplots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))
u+geom_boxplot()
u+geom_boxplot(size=1.2)
u+geom_boxplot(size=1.2)+geom_point()
#Tip/Hack
u+geom_boxplot(size=1.2)+geom_jitter(size=0.8) 
#jitter은 점 막 뿌려줌 아무데나 막 뿌려주는거임. 
#일자로 뿌리면 잘 안보이니깐 jitter로 뿌린 것. 여기선 그렇게 해야 보이지


#Another way
u+geom_jitter(size=0.5) + geom_boxplot(size=1.2, alpha=0.6)


#------------------Using Facets
v <- ggplot(data=movies, aes(x=BudgetMillions))
v+geom_histogram(binwidth = 10, aes(fill=Genre), 
                 colour="Black")
#근데 보기가 어려워, 비교하는 친구들끼리 너무 멀리 있음. 
#facets
v+geom_histogram(binwidth = 10, aes(fill=Genre), 
                 colour="Black") +
  facet_grid(Genre~. , scales="free")

#ScatterPlot
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre
                             ))

w+geom_point(size=2) +
  facet_grid(Genre~.)

w+geom_point(size=2) +
  facet_grid(.~Year)

w+geom_point(size=2) +
  facet_grid(Year~.)

w+geom_point(size=2) +
  facet_grid(Genre~Year)

w+geom_point(size=2)+
  geom_smooth() +
  facet_grid(Genre~Year)

w+geom_point(aes(size=BudgetMillions))+
  geom_smooth() +
  facet_grid(Genre~Year)


#------------------Coordinates
#Today: Limits, Zoom
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, size=BudgetMillions, 
                             colour=Genre))
m+geom_point()

m+geom_point() + 
  xlim(50, 100)+ #x축 50부터 100까지만 보여줌
  ylim(50, 100)

#won't work well always
n <- ggplot(data=movies, aes(x=BudgetMillions))
n+geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")+
  ylim(0, 50) #근데 뭔가 이상해, 줌인이 아니네 짤려버림

#Instead - Zoom 
n+geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") +
    coord_cartesian(ylim=c(0,50))
  

#Improve #1 

w+geom_point(aes(size=BudgetMillions))+
  geom_smooth() +
  facet_grid(Genre~Year)+
  coord_cartesian(ylim=c(0, 100))



#------------------ THEME
o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o+geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")

h

#axis labels
#label formatting
h + xlab("Money Axis") +ylab("Number of Movies")+
  theme(axis.title.x = element_text( colour="DarkGreen", size=30), 
      axis.title.y = element_text( colour="Red", size=30))

#tick mark formatting, 모르면 ?theme() 하면 다 나온다. 
h + xlab("Money Axis") +ylab("Number of Movies")+
  theme(axis.title.x = element_text( colour="DarkGreen", size=30), 
        axis.title.y = element_text( colour="Red", size=30),
        axis.text.x=element_text(size=10), 
        axis.text.y=element_text(size=10))

?theme
#legend formatting
h + xlab("Money Axis") +ylab("Number of Movies")+
  theme(axis.title.x = element_text( colour="DarkGreen", size=30), 
        axis.title.y = element_text( colour="Red", size=30),
        axis.text.x=element_text(size=10), 
        axis.text.y=element_text(size=10), 
        
        legend.title=element_text(size=30),
        legend.text=element_text(size=20), 
        legend.position=c(1,1), #0, 0가 왼쪽 위, 아래 오른이 1,1임
        legend.justification=c(1,1)
        )

#title ggtitle
#legend formatting
h + xlab("Money Axis") +ylab("Number of Movies")+
  ggtitle("Sanghyuk's first")+
  theme(axis.title.x = element_text( colour="DarkGreen", size=30), 
        axis.title.y = element_text( colour="Red", size=30),
        axis.text.x=element_text(size=10), 
        axis.text.y=element_text(size=10), 
        
        legend.title=element_text(size=30),
        legend.text=element_text(size=20), 
        legend.position=c(1,1), #0, 0가 왼쪽 위, 아래 오른이 1,1임
        legend.justification=c(1,1),        

        plot.title=element_text(colour="DarkBlue", size=40, family="Courier"))
