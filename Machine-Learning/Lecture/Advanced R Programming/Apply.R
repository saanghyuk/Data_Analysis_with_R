sample(x=1:100, 1) #built in sample picking function


#Apply
v <-c(1,2,3,4,5) 
addrand <- function(x){ #add random number
  ran <- sample(1:100, 1)
  return (x+ran)
}

print(addrand(10))

#lapply(vector, function)
#lapply -> list 를 리턴
#앞에 벡터의 모든 요소에, 뒤 function을 넣고
#list 로 리턴함
#그니깐, 함수의 인자로, 앞 벡터의 모든 수를 넣네
result <- lapply(v, addrand)
print(result)

#sapply #위와 같은데 vector를 리턴 
result1<- sapply(v, addrand)
result1

#
v<- 1:5
times2 <- function(num){
  return(num*2)
}
print(v)
result <- sapply(v, times2)
print(result)

#이 외에도 apply 매우 많음
help(sapply)
#vapply, replicate


#Anonymous Function
addrand <- fuction(){
  #time consuming etc.
  #딱 한번만 쓰는거면 anonymous
}
#익명 함수에서는 바로 리턴값
result <-sapply(v, function(num){num*2})
print(result)


#한개 이상의 인자에 대한 apply
#Apply with Multiple Inputs
v<-1:5
add_choice <- function(num, choice){
  return (num+choice)
}
print(add_choice(2, 10))

sapply(v, add_choice, choice=v) #It didn't know argument



