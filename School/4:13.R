Gap <- c(354, 250, 234, 312)     
Eul <- c(234, 450, 200, 250)
sales.k <- matrix(c(Gap, Eul), ncol= 4, byrow=T, dimnames = 
                    list( c("Gap", "Eul"), c("Jan","Feb","Mar","Apr")))
sales.k


#examination
barplot(sales.k, main= "Sales by Month", xlab ="Month", ylab="Sales", beside=T, 
        names.arg = c("Jan", "Feb", "Mar", "Apr"), border="blue",  col= rainbow(2), ylim=(c(0, 1000)))
legend(10, 1000, c("Gap", "Eul"), cex=0.8, fill = rainbow(2))


m.total <- apply(sales.k, 2, sum) # for practice
lines(m.total, type="o", pch=22, lty=3)  #pch and lty
text(3, 900, "total") #between 3 and 9 #what is (3, 900)

# for improvement

barplot(sales.k, main= "Sales by Month", xlab ="Month", ylab="Sales", beside=T, 
        names.arg = c("Jan", "Feb", "Mar", "Apr"), border="blue",  col= rainbow(2), ylim=(c(0, 1000)))
legend(10, 1000, c("Gap", "Eul"), cex=0.8, fill = rainbow(2))

sales.k
m.total <- apply(sales.k, 2, sum)  #시험                
m.total 
sales.k
#lty -> line type
lines(c(2, 5, 8, 11), m.total, type="o", pch=3, lty=2, col="blue", lwd=2) #what is 2, 5, 8, 11? x axis, y axis, matching
text(3, 800, "Total")
text(2, 650, "588")
text(5, 750, "700")

#use ggplot2
library(ggplot2)
Month <- c("Jan", "Feb","Mar", "Apr")
Gap <- c(354, 250, 234, 312)
Eul <- c(234, 450, 200, 250)
sales.df <- data.frame(Month, Gap, Eul)
sales.df

Month <- c("Jan", "Feb","Mar", "Apr")
Store <- rep(c("Gap", "Eul"), times=4)
Sales <- c(354, 234, 250, 450, 234, 200, 312, 250)
sales.df2 <- data.frame(Month, Store, Sales)

d <- ggplot(sales.df2, aes(x=Month, y=Sales, fill=Store)) + geom_col()
d+scale_x_discrete(limits=c("Jan", "Feb","Mar", "Apr"))

Sales
Pct <- round((Sales/600)*100, 1)
Pct
sales.df2
sales.df2 <- data.frame(sales.df2, Pct)
sales.df2


reorder(Month, -Sales)
ggplot( data=sales.df2, aes(x=reorder(Month, -Sales), y=Sales, fill=Store))+ geom_col()

buy <- c("yes", "no", "no", "yes", "yes", "no", "yes")
gender <- c("male", "female", "male", "female", "female", "female", "female")
buy.gender <- data.frame(buy, gender)

buy.gender
ggplot(buy.gender)+geom_bar(aes(x=gender, fill=buy))

ggplot(buy.gender) + geom_bar(aes(x=gender, fill=buy), position="dodge")

ggplot(buy.gender) + geom_bar(aes(x=gender, fill=buy)) + facet_wrap(~buy)


name <- c("Kim", "Lee", "Park", "Choi", "Kang", "Shin")
height <- c(160, 170, 180, 172, 182, 170)
gender <- c("female", "male", "female", "male", "male", "male")
ks.df <- data.frame(name, height, gender)
library(ggplot2)
qplot(gender)
qplot(data=ks.df, x=gender, y=height, geom="boxplot", col=gender)
qplot(data=ks.df, height, x=gender)


#histogram
op=par(mfrow=c(1, 2)) 
hist(trees$Volume)
hist(trees$Volume, probability = T, main="histogram with pdf")
lines(density(trees$Volume))
trees$Volume
density(trees$Volume)
par(op)


op=par(mfrow=c(1, 1))
y <- c(1, 2, 2, 3, 4, 4, 4, 5, 5)
hist(y)
barplot(y, main="Bar plot")
par(op)


#pie chart
library(ggplot2)
sales.tot <- c(210, 110, 400, 500, 700)
week <- c("Mon", "Tue", "Wed", "Thu", "Fri")
ratio <- round(salestot/sum(sales.tot)*100, 2)
op=par(mfrow=c(2, 2)) 
pie(sales.tot)
pie(sales.tot, init.angle = 90)
pie(sales.tot, init.angle = 180)
pie(sales.tot, init.angle = 90, clockwise=T)
pie(sales.tot, init.angle = 90, clockwise=T, col=rainbow(length(sales.tot)))
?pie


week <- c("Mon", "Tue", "Wed", "Thu", "Fri")
ratio<- round(sales.tot/sum(sales.tot)*100, 2)
pie(sales.tot, init.angle=90, clockwise=T, col=rainbow(length(sales.tot)),
    main="Weekly sales", cex=0.8, labels="label")

install.packages("plotrix")
library(plotrix)

week <- c("Mon", "Tue", "Wed", "Thu", "Fri")
ratio<- round(sales.tot/sum(sales.tot)*100, 1)
pie3D(sales.tot, init.angle=90, clockwise=T, col=rainbow(length(sales.tot)), 
      main="Weekly sales", cex=0.8)
legend(0.5, 1, c("Mon", "Tue", "Wed", "Thu", "Fri"), cex=0.8, fill=rainbow(length(sales.tot)))

Q1 <- c("Jan", "Feb", "Mar", "Apr")
op=par(mfrow=c(1, 1)) 
Seoul <- c(354, 250, 234, 312)
Busan <- c(234, 450, 200, 250)
plot(Seoul, type="o", col="red", ylim=c(0, 500), axes=F, ann=F)
axis(1, at=1:4, lab=c("Jan", "Feb", "Mar", "Apr"))
axis(2, ylim=c(0, 500))

title(main="Sales", col.main="blue", font.main=4)
title(xlab="month", col.lab="black")
title(ylab="won", col.lab="black")

lines(Busan, type="o", pch=22, col="green", lty=2)
legend(3, 500, c("Seoul", "Busan"), cex=5, col=c("red", "green"), pch=21, lty=1:3)



#line chart
Q1 <- c("Jan", "Feb", "Mar", "Apr")
Seoul <- c(354, 250, 234, 312)
Busan <- c(234, 450, 200, 250)


plot(Seoul, type="o", col="red", ylim=c(0, 500))
axis(1, at=1:4, lab=c("Jan", "Feb", "Mar", "Apr"))
axis(2, ylim=c(0, 500))

title(main="Sales", col.main="blue", font.main=4)
title(xlab="month", col.lab="black")
title(ylab="won", col.lab="black")

lines(Busan, type="o", pch=22, col="green", lty=2)
legend(3, 500, c("Seoul", "Busan"), cex=0.8, col=c("red", "green"),pch =21, lty=1:100 )


#box plot
bee <- c(260, 300, 250, 280, 310)
chi <- c(180, 200, 210, 190, 370)


Titanic
Titanic[1, , , ]
Titanic[2, , ,]
Titanic[2, 1, , ]  
Titanic[3, 2, 1, ]
