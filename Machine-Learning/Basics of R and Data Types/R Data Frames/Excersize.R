
#EX1
Name <- c('Sam', 'Frank', 'Amy')
Age <- c(22, 25, 26)
Weight <- c(150, 165, 120)
Sex <- c('M', 'M', 'F')


df <- data.frame(row.names = Name, Age, Weight, Sex)
rownames(df) <- c('Sam', 'Frank', 'Amy')
df

#EX2
is.data.frame(mtcars)

#EX3
mat <- matrix(1:25, nrow=5)
mat
mat <- as.data.frame(mat)
is.data.frame(mat)

#EX4
df<- mtcars

#EX6
df[1:6, ]
head(df, 6)

#EX7
df[['mpg']]
mean(df[['mpg']])

df[df$cyl==6, ]
subset(df, cyl==6)

#EX8
summary(df)
df[9:11]

#EX9
df$performance <- df$hp/df$wt
head(df)

#EX10
df$performance
?round()
df$performance <- round(df$performance, digits = 2)
head(df)



#EX11
mean(df[df$hp > 100 & df$wt >2.5, ]$mpg)


#EX12
df['Hornet Sportabout', ]$mpg
df['Hornet Sportabout', 'mpg']

