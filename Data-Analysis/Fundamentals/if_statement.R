

# 평균0 정규분포에서 랜덤 추출

#Nested If Statement
rm(answer)
x <- rnorm(1)
if(x>1){
  
  answer <- "It is greater than 1"
  print(answer)
}else{
  if(x >= -1){
    answer <- "Between -1 and 1"  
  }else{
    answer <- "Less than -1"
  }
}

#Chaning Statement
rm(answer)
x <- rnorm(1)
if(x>1){
  
  answer <- "It is greater than 1"
  print(answer)
}else if(x >= -1){
  answer <- "Between -1 and 1"
}else{
  answer <- "Less than -1"
}
