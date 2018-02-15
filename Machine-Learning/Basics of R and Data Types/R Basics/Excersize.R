
#1
2^5

#2
stock.price <- c(23, 27, 23, 21, 34)
stock.price

#3
day <- c("Mon", "Tue", "Wed", "Thu", "Fri")
names(stock.price) <-day
stock.price

#4
mean(stock.price)

#5
over.23 <- stock.price>23
over.23

over.23 <- stock.price[over.23]
over.23

#6
?max
stock.price

#2가지 방법이 있음.
max(stock.price)
#method 1
stock.price[stock.price==34]
#method 2
stock.price[stock.price == max(stock.price)]
