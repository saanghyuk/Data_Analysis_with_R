
#R-specific programming loop
x <- rnorm(5) 
for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#Conventional Programming loop
for(j in 1:5){
  print(x[j])  
}


#--------------2nd Part For Today
N <- 10000
a <- rnorm(N)
b <- rnorm(N)

#Vectorized Approach
#데이터 타입이 미리 정해져있어서, 
#연산이 빠를 수밖에없음. 
#벡터화 아닌 상태로 하면? 한번마다 데이터 타입 확인하는 거야야

c <- a*b
c
#Devectorized Approach
d <- rep(NA) #빈 벡터, 메모리만 할당
for(i in 1:N){
  d[i] <- a[i] * b[i]
}
d



