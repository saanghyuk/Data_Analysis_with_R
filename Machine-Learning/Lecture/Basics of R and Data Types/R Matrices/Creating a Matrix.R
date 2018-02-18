
# 2 dimensional
1:10
matrix(1:10)

v<- 1:10

#줄 지정 가능
matrix(v, nrow=2)

#column? row? 뭐 부터 채울까
#default is column
#row 로 바꿀 수 있음. 
matrix(1:12, byrow=FALSE, nrow=4) #default
matrix(1:12, byrow=TRUE, nrow=4)

#
goog <- c(450, 451, 452, 445, 468)
msft <- c(230, 231, 232, 233, 220)

stocks <- c(goog, msft)
print(stocks) #전체가 가로 배열됨.

#매트릭스로!
stock.matrix <- matrix(stocks, byrow=T, nrow=2)
stock.matrix

#Naming MATRIX
days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
st.names <- c('GOOG', 'MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

stock.matrix



