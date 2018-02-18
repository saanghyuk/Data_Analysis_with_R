
getwd()
setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Data Input and Output with R')
write.csv(mtcars, file='my_example.csv')


#Read CSV
ex <-read.csv('another_example.csv')
ex
head(ex)
class(ex)


write.csv(ex, file='my_new_example.csv')
