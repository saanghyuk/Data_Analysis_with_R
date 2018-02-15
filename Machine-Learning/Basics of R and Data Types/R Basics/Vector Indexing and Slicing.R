
v1 <- c(100, 200, 300)
v2 <- c('a', 'b', 'c')

#Indexing in R starts at 1
v1[1:3]
v1[c(1, 3)] #여러개 뽑으려면 vector로 넣어야 함.

#Slice
v <- c(1,2,3,4,5,6,7,8,9,10)
v[2:4]
v[7:10]

v <- c(1,2,3,4) 
names(v) <- c('a', 'b', 'c', 'd')
v['b']
v[c('b', 'd')]


#filter
v[v>2]

my.filter <- v>2
v[my.filter]


help('vector')
help.search('vector')
