
#default data set
state.x77

USPersonalExpenditure
women

#available data
data()
WorldPhones

#head/tail function 
state.x77
head(state.x77)
tail(state.x77)

#str -> structure
str(state.x77)

#summary
summary(state.x77)


days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(T,T,F,F,T)
data.frame(days, temp, rain)
df <- data.frame(days, temp, rain)
df
str(df)
summary(df)

