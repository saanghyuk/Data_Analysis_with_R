days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(T,T,F,F,T)
data.frame(days, temp, rain)
df <- data.frame(days, temp, rain)
df
str(df)
summary(df)

df
df[1,]
df[1, 2]
df[, 1]

df[, 3]
df[1:5, c('days', 'temp')]
df

#name of column
#아래 두개는? 
df$temp #vector 로 리턴
df['days'] #df로 리턴


#subset
subset(df, subset=rain==TRUE)
subset(df, subset=temp>23)

#Ordering
sorted.temp <- order(df['temp'])
sorted.temp #몇등인지 보여줌
desc.temp <- order(-df['temp'])
desc.temp <- order(-df$temp) #위 두가지는 동일함

df[sorted.temp, ] 
df[desc.temp,]


