
library(dplyr)
set.seed(1)
beonho <- round(runif(10, 1, 100))
beonho
height <- c(160, 170, 180, 170, 172, 180, 173, 180, 165, 170)
weight <- c(60, 70, 76, 85, 80, 75, 69, 75, 80, 60)
bmi.r <- (weight*1000)/(height**2)
bmi <- round(bmi.r, 2)
bmi.df <- data.frame(beonho, height, weight, bmi)

bmi.df %>% mutate(decision = ifelse(bmi>=2.5, "over", "normal"))
bmi.df %>% arrange(bmi)
bmi.df %>% arrange(beonho)
bmi.df %>% arrange(desc(beonho))
bmi.df %>% arrange(height, weight )


bmi
attach(bmi)


?attach


data
