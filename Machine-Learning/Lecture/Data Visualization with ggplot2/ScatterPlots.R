library(ggplot2)
df <- mtcars

head(mtcars)

#DATA & AESTHETICS 
pl <- ggplot(data=df, aes(x=wt, y=mpg))

#GEOMETRY
pl+geom_point(alpha=.5, size=5)

#이 geom안에 aes를 써야, 컬럼이름들로 color같은 것들을 매길 수 있음. 
pl+geom_point(aes(size=hp))
pl+geom_point(aes(size=cyl)) #cyl은 기본 셋이 숫자니깐,continuous value
pl+geom_point(aes(size=factor(cyl)))#factor로(categorize) 바꿔서 하면 더 보기 편하지. 어짜피 4, 6, 8밖에 없거든
pl+geom_point(aes(shape=factor(cyl), color=factor(cyl), size=5)) #shape가 되려면 반드시 factor여야 함. 

pl+geom_point(size=cyl) #aes안쓰려면 그냥 숫자를 써야 함.
#이렇게 딱 분류가 되있는 친구들을



#color에 대해
pl2 <- pl+geom_point(size=5, color='blue')
pl2 
pl2 <- pl+geom_point(size=5, color='#8AD9CC') #hex code를 쓸 수 있음. 
pl2
pl2 <- pl+geom_point(size=5, aes(color=hp)) 
pl3<- pl2 + scale_color_gradient(low='blue', high='red') #여기서도 row color, high color 선택 가능
pl3
