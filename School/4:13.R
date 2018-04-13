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

m.total <- apply(sales.k, 2, sum)  #시험                
m.total 
sales.k
#lty -> line type
lines(c(2, 5, 8, 11), m.total, type="o", pch=21, lty=1, col="blue", lwd=2) #what is 2, 5, 8, 11? x axis, y axis, matching
text(3, 800, "Total")
text(2, 650, "588")
text(5, 750, "700")

#use ggplot2
library(ggplot2)
Month <- c("Jan", "Feb","Mar", "Apr")
Gap <- c(354, 250, 234, 312)
Eul <- c(234, 450, 200, 250)




#pie chart
library(ggplot2)
sales.tot <- c(210, 110, 400, 500, 700)
week <- c("Mon", "Tue", "Wed", "Thu", "Fri")
ratio <- round(salestot/sum(sales.tot)*100, 2)



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
legend(3, 500, c("Seoul", "Busan"), cex=0.8, col=c("red", "green"),pch =21, lty=1:3)
