library(dplyr)

#NESTING
df <- mtcars
filter(df, mpg>20)
result <- arrange(sample_n(filter(df, mpg>20), size=5), desc(mpg))

#MULTIPLE ASSIGNMENTS 위와 동일.
a <- filter(df, mpg>20)
b <- sample_n(a, size=5)
result<- arrange(b, desc(mpg))

#그런데 그냥 네스팅 하는거는 너무 복잡하고, 두번째는 변수를 너무 많이 씀. 
#Pipe Operator
#Data %>% op1 %>% op2 %>% op3
result <- df %>% filter(mpg>20) %>% sample_n(size=5) %>% arrange(desc(mpg))
result



