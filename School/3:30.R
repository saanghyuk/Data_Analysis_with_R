


ma <- matrix(1:12, ncol=4)
ma
rowtotal <- apply(ma, 1, sum)
coltotal <- apply(ma, 2, sum)

sum(ma)
p_ma <- ma/78
p_ma
round(p_ma, 2)


round(ma/78, digits=3)
?round

rowtotal 
coltotal

#rowsum/colsum important
#EXAMINATION
#DIVIDING ROWS
prop.table(ma)
rowSums(ma)
x <- c(22, 26, 30)
r_ma <- ma/x  #divide row elements by x
r_ma

#DIVIDING ROWS
y <-c(6, 15, 24, 33 )
y
ma
a<- t(ma)/y
t(a)


Sys.setlocale("LC_COLLATE", "ko_KR.UTF-8");
getwd()
setwd("/Users/sanghyuk/Documents")
getwd()
?readLines()
txt<- readLines("titanic.hwp", encoding = 'utf-8')
txt

#---------------------ARRAY---------------------

data("Titanic")
Titanic
str(Titanic)
head(Titanic)


#╬уд╜╨нем [Class, Sex, Age, Survived]
Titanic[, , , 1]
Titanic[, , 1, 1]
Titanic[, , 2 , 1]

