a <- factor(c("A","A","B","A","B","B","C","A","C"))
a
results <- table(a)
results
a


attributes(results)
summary(results)

occur <- matrix(c(4, 3, 2), ncol=3, byrow=TRUE)
colnames(occur) <- c("A", "B", "C")
occur

occur <- as.table(occur)
occur
attributes(occur)


a <- c("Sometimes","Sometimes","Never","Always","Always","Sometimes","Sometimes","Never")
b <- c("Maybe","Maybe","Yes","Maybe","Maybe","No","Yes","No")
results <- table(a,b)
results


sexsmoke<-matrix(c(70,120,65,140),ncol=2,byrow=TRUE)
rownames(sexsmoke)<-c("male","female")
colnames(sexsmoke)<-c("smoke","nosmoke")
sexsmoke
sexsmoke <- as.table(sexsmoke)
sexsmoke

class(sexsmoke)


class(Titanic)

Titanic
Titanic[1 , , , ]
Titanic[1 , 2, , ]
str(Titanic)
Titanic


speed <- c(10, 11, 12, 14, 17, 20)
dis <- c(18, 16, 27, 20, 49, 32)

mean(dis)
sd(dis)

plot(speed, dis)

cor(speed, dis)

datasets


sales <- c(200, 100, 300, 100, 100, 100)
month <- c("May", "June", "July")
mat <- matrix(sales, ncol = 2)
mat
 
#2 
total <- sum(mat)
total
mat_total <- mat/total
mat_total
plot(speed, dis)

rowsum <- rowSums(mat)
rowsum
mat/rowsum
round(mat/rowsum, 2)
prop.table(mat, 1)

colsum <- apply(t(mat),1, sum)
colsum
t(mat)
t(mat)/colsum
prop.table(mat, 2)








