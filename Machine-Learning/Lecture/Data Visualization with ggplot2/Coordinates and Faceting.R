library(ggplot2)

pl<-ggplot(mpg, aes(x=displ, y=hwy))+geom_point()
pl

#coordinates 내가 지정한 벡터 부분만 확대
pl + coord_cartesian(xlim=c(1, 4), ylim=c(15, 30))

#원래는 창 크기 줄였다 켯다 하면 자동으로 바뀌는데 
#그전체 크기를 fixed할 수 있음.
pl + coord_fixed(ratio=1/5)


#Facets
help("facet_grid")
print(pl)

#이걸 4개로 분리 해 보자.
pl+facet_grid(. ~ cyl) # .(y axis)  ~  (x aixs) 이 순서로 쓴다. 
#즉, .은 y축을 그대로 두겠다는 거고, x를 cyl로 나누겠다는 것. 
pl+facet_grid(drv ~ .) 
pl+facet_grid(. ~ drv) 
pl+facet_grid(drv ~ cyl) 
