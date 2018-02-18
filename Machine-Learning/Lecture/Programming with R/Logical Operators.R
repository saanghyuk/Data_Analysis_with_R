
#Logical Operators
# & AND
# | OR
# ! NOT

#AND
x <- 10
x<20
x <20 & x >5
(x <20) & (x >5) & (x==10)

#OR
T | F

#NOT
!(10==1)

df<- mtcars
df[df$mpg >20, ]
subset(df, mpg>20)
df[(df$mpg>20) & (df$hp>100), ]
df[(df$mpg>20) | (df$hp>100), ]


