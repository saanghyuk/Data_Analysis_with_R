
# My Solution
n <- 10
while(n <= 10000000000000000){
  
  count <- 0
  for(i in rnorm(n, 0, 1)){ 
    if(i > -1 & i < 1){
      count <- count+1  
    }
  }
  E <- count/n 
  print(E)
  
  n <- n*10
}


# Class Solution
