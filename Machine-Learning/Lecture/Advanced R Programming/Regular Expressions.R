
#General Regular Expressions
#grepl -> logical 
#grep -> index

text <- "Hi there, do you know who you are voting for?"
text

grepl('voting', text) #있으면 T, 없으면 F
grepl('dog', text)
grepl('do you', text)
grepl('hello', 'hello world')

v<- c('a', 'b', 'c', 'd', 'd')
grepl('b', v) #vector back


#Index
grep('b', v)
grep('d', v)
grep('a', c('b', 'a'))

