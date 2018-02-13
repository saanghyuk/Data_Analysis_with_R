

x <- c("a", "b", "c", "d", "e")
x
x[c(1,5)]
x[1]

#We can subset the vector
#Also matrices

Games
Games[1:3,6:10]
Games[c(1,10), ]
Games[, c("2008", "2009")]
Games[1,] #row 이름이 안나옴. Why?
is.matrix(Games[1,]) #이건 벡터임
is.vector(Games[1,])

Games
Games[1, 5]
#한줄 뽑으면 R이 자동으로 벡터로 바꿔. 
#drop이 디폴트가 T로 되어 있는 거야. 
Games[1, ,drop=T]
#아래처럼 그걸 F로 바꾸면, 메트릭스로 나옴. 
Games[1, ,drop=F]
is.matrix(Games[1, , drop=F])

Games[1, 3, drop=F]
is.matrix(Games[1, 5, drop=F])


