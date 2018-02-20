library(ggplot2)
df<- mtcars

head(df)

pl<- ggplot(df, aes(x=factor(cyl), y=mpg))
pl + geom_boxplot()+ coord_flip() #coordinate layer flip시키기
pl+geom_boxplot(fill='blue')
pl+geom_boxplot(aes(fill=factor(cyl))) + theme_dark() #각각 색갈 다르게 정도? 
