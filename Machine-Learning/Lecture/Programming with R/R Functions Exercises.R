
#
hello_you <- function(name){
  print(paste('Hello', name))
}
hello_you('sanghyuk')

#
hello <- function(name){
  return (paste('Hello', name))
}
hi<- hello('sanghyuk')

#EX1
prod <- function(num1, num2){
  return (num1 * num2)
}

prod(4, 5)

v<-c(1,2,3,4,5)

#EX2
num_check <- function(num1, v1){
  for(vnum in v1){
    if(vnum == num1){
      return (TRUE)
    }
  }
  return (FALSE)
}
num_check(0, c(1,2,3,4,5))


#EX3
num_count<- function(num, v3){
  count <- 0
  for( vnum in v3){
    if(vnum == num){
      count <- count+1
    }            
  }
  print(count)
}

num_count(2,c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))

17%%5

#EX4
#5kg짜리 하나랑, 1키로 짜리 하나
bar_count <- function(weight){
  five <- round(weight/5)
  one <- weight%%5
  
  print(five+one)
}
bar_count(6)
bar_count(17)

17%%3 ==0

v5<-c(1,2,3)

#EX5 #더한거 리턴 하는데, 3의 배수이면 0으로
?append()
summer <- function(num1, num2, num3){
  sum <- 0
  num_vec <- c(num1, num2, num3)
  for(num in num_vec){
    if(num%%3 !=0){
      sum <- sum+num
    }
  }
  return (sum)
}
summer(3,6, 9)


3 %% 2:5

#EX6 prime -> 소수
prime_check <- function(num) {
  if (num == 2) {
    return(TRUE)
  } else if(any(num %% 2:(num-1) == 0)) {
    #3을 2, 3, 4, 5로 나눈 나머지가 벡터로 반환
    return(FALSE)
  } else { 
    return(TRUE)
  }
}
