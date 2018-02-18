
#
install.packages('dplyr')
install.packages('nycflights13') #just data set
library(dplyr) #own filter, lag function이 있어서, default 저 2가지 function override
library(nycflights13)


head(flights) #nycflights13의 default data set
flights
summary(flights)


#filter() 
head(flight)
head(filter(flights, month==11, day==3, carrier=='AA')) #subset은 계속 &이런거 썻어야 했음. 
head(flights[flights$month == 11 & flights$day == 3 & flights$carrier == 'AA', ]) #아래 처럼 써야 함. 

#slice()
slice(flights, 1:10) #row


#arrange() 
#인자로 명시되는 컬럼들은 순서대로 정렬됨. 
head(arrange(flights, year, month, day, arr_time))
head(arrange(flights, desc(dep_delay)))


#select() 
head(select(flights, carrier))
head(select(flights, carrier, arr_time, month))

#rename(data, new=old column name)
head(rename(flights, airline_carrier=carrier))

#distinct()
distinct(select(flights, carrier))

#mutate()
head(mutate(flights, new_col=arr_delay-dep_delay))
head(mutate(flights, new_col=arr_delay-dep_delay))

#transmute() #mutate랑 같지만, 오직 새로 생긴 칼럼만을 리턴함
head(transmute(flights, new_col=arr_delay*dep_delay))

#summarise()
summarise(flights, avg_air_time=mean(air_time, na.rm=TRUE))
summarise(flights, total_air_time=sum(air_time, na.rm=TRUE))


#sample_n() and sample_frac()
sample_n(flights, 10) #10 random rows
sample_frac(flights, 0.2) #10%

