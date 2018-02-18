
library(dplyr)
head(mtcars)

#1
filter(mtcars, mpg>20, cyl==6)

#2
head(arrange(mtcars, cyl, desc(wt)))

#3
select(df, mpg, hp)

#4
distinct(df, gear)
head(mutate(df, Performance=hp/wt))

#5
summarise(df, avg_mpg=mean(mpg, na.rm=T))


#6
df %>% filter(cyl==6) %>% summarise(mean_hp=mean(hp, na.rm=T))
