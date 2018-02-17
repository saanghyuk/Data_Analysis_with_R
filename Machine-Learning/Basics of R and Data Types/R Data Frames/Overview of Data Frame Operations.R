
#Creating Data Frames 
empty <- data.frame()
c1 <- 1:10
letters #built in Vector
c2 <- letters[1:10]

df <- data.frame(col.name.1 = c1, col.name.2=c2) #column name = input data
df

#Importing and Exporting Data
write.csv(df, file = 'saved_df.csv') #근데 문제는 index까지 같이 저장됨.
df2 <- read.csv('saved_df.csv')

#Getting Information About Data Frame
df
nrow(df)
ncol(df)
colnames(df)
str(df)
summary(df)
#factor로 만들고 싶을 때는 
df$col.name.1 <-factor(df$col.name.1)
factor(df$col.name.1)


#Referencing Cells
df
[[]] #이 두개 마크는 기본이 컬럼 리턴임
df[[5, 2]] #특정 요소 + level까지
df[[5, 'col.name.2']]
df[5, 'col.name.2']
df[[2, 'col.name.1']] <- 99
df

#Referencing Rows
df[1, ]

mtcars
head(mtcars)

mtcars[['mpg']] #vector
mtcars[[1]] #vector
mtcars[, 1] #vector
mtcars$mpg#vector
mtcars[1, ] #df
mtcars['mpg'] #df
mtcars[1] #df

#컬럼을 리턴시키는 여러가지 방법
mtcars$mpg #vector 로 리턴
mtcars[, 'mpg'] #vector로 리턴
mtcars[, 1] #vector로 리턴
mtcars[[2]] #column을 벡터로 리턴
mtcars[[ 1]] #column 리턴
mtcars[['mpg']]
#df로 리턴하는 방법
mtcars['mpg']
mtcars[1] #컴머 없으면 칼럼을 그대로 df로 리턴
mtcars[1, ] #컴마 있으면 row를 df로 리턴
# how to return multiple columns DF
mtcars[c('mpg', 'cyl')]

#Adding Rows
df2 <- data.frame(col.name.1 = 2000, col.name.2 ='new')
df2
df2 <- data.frame(col.name.1 = 3000, col.name.2 ='new')
df2
dfnew <- rbind(df, df2)
dfnew
df
df$newcol <- 2*df$col.name.1

df$newcol
df$newcol.copy <- df$newcol
df
df[, 'newcol.copy2'] <- df$newcol
df
df['newcol.copy']
df['newcol.copy3']<- df['newcol.copy2']
df

#Adding Columns
#Referencing Columns
#Setting Column Names
colnames(df) <- c('1', '2', '3', '4', '5', '6')
head(df)
colnames(df)[1] <- 'sanghyuk'
df
rownames(df)[1] <- 'sanghyuk'
df


#Selecting Multiple Rows

df[1:3, ]
head(df)
head(df, 7) #head에서 row 지정해 줄 수 있음.
df[-2,] #2번 row 제외 하고 모두 리턴
df[, -2] #negative 활용 잘하자


head(mtcars)
mtcars
mtcars[ mtcars$mpg >20,  ]
head(mtcars)

mtcars[ (mtcars$mpg >20) & (mtcars$cyl ==6) , c('mpg', 'cyl', 'hp')]
subset(mtcars, mpg>20& cyl ==6) #위와 동일 결과 리턴

#Selecting Multiple Columns
head(mtcars)
mtcars[, c(1, 2, 3)]
mtcars[, c('mpg', 'cyl')]


#Dealing with Missing Data
is.na(mtcars) #it will return boolean value 
any(is.na(df)) #하나라도 NA가 true인게 있으면 true를 리턴해 줌. 아니면 false
any(is.na(mtcars$mpg))

df[is.na(df)] <- 0
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)
mtcars$mpg
