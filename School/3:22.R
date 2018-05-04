
#P50 DATA FRAME
#2차원 평면의 행렬. BUT 아무거나 섞어서 넣을 수 있음(행렬은 단일 것만 넣을 수 있음). 
height <- c(160, 170, 180, 170, 180, 170)
weight <- c(70, 60, 80, 60, 80, 70)
gender <- c("female", "male", "male", "female", "female", "male")
class <- c('1', '1', '1', '2', '2', '2')

df1 <- data.frame(height, weight, gender, class, row.names=c("Kim", "Lee", "Park", "Choi", "Kang","Shin"),
                  stringsAsFactors = F)
df1

length(df1)
mode(df1)
row.names(df1)
names(df1)
class(df1)
dim(df1)

?rownames()
row.names(df1) <- c(1,2,3,4,5,7)

mode(df1) #자료 유형을 아는 법
class(df1) #자료 구조를 아는 법


#P54 -> left_join
ht <- data.frame(name=c("KIM", "LEE", "CHOI", "PARK"), height=c(160, 170, 180, 172))
wt <- data.frame(name=c("KIM", "LEE", "CHOI", "PARK"), weight=c(60, 70, 80, 72))

body <- merge(ht, wt)
body
#length 
#원소의 수







#dimension 
#행과 열



df1$height
is.numeric(df1$height)



is.character(df1$class)
is.factor(df1$class)

#******************stringasfactor*********





x <- c(6, 7, 2, 4, 8, 6, 3, 4)
y <- c(22, 21, 8, 17, 27, 18, 9 , 14)
kmodel <- lm(y ~ x)
summary(kmodel)