
#Nominal Categorical Variable —> 순서가 없음. No, Order
#Ordinal Categorical Variable —> 순서가 있음. 


animal <- c('d', 'c', 'd', 'c', 'c')
id <- c(1,2,3,4,5)

fact.ani <- factor(animal)
fact.ani

ord.cat <-c('cold', 'med', 'hot')
ord.cat


temps <-c('cold', 'med', 'hot', 'hot', 'hot', 'cold', 'med')
fact.temp <- factor(temps, ordered = TRUE, levels=c('cold', 'med', 'hot')) #순서대로 level 집어 넣는다.
fact.temp
summary(fact.temp)
summary(temps)
