setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Lecture/Capstone/Capstone Project')
batting <- read.csv('Batting.csv')

#
head(batting)

#
str(batting)

#
head(batting$AB)

#
#column이름으로 숫자 쓸 수 없어서 X 붙인 것. 
head(batting$X2B)

#
head(batting)

#Batting Avering
batting$BA <-  batting$H / batting$AB
tail(batting$BA, 5)

#On Base Percentage
batting$OBP <- (batting$H+batting$BB+batting$HBP) / (batting$AB + batting$BB + batting$HBP + batting$SF)
head(batting$OBP)

#Slugging Percentage
batting$X1B <- batting$H - batting$X2B - batting$X3B -batting$HR
batting$SLG <- (batting$X1B + 2*batting$X2B + 3*batting$X3B + 4*batting$HR) / batting$AB  

#
str(batting)


#
sal <- read.csv('Salaries.csv')
head(sal)

batting[batting$yearID > 1984, ]
batting <- subset(batting, yearID > 1984)
summary(batting)

#
combo <- merge(batting, sal, by=c('playerID', 'yearID' ))
summary(combo)


#
lost_players <- subset(combo, playerID %in% c('damonjo01', 'giambja01', 'saenzol01'))
summary(lost_players)

#
lost_players <- subset(lost_players, yearID==2001)
lost_players


#
replacement <- subset(combo, yearID==2001)
replacement
