#Function Shortcut
name_of_func <- function(input1, input2, input3=45){
  #Code Execute
  result <- input1+input2
  return(result)
}

#FUNCTIONS
hello <- function(name='FRANK'){
  
  print(paste('Hello,', name))
}
hello('Sanghyuk')
hello()

add_num <- function(num1, num2){
  my.sum <- num1+num2
  return(my.sum)
}

result<-add_num(6, 7)
result


#SCOPE
#function 내부의 variable은 오직 함수 내로 한정됨
times5 <- function(num){
  my.result <- num*5
  return(my.result)
}
my.output <- times5(100)
print(my.output)

my.result #당연히 이건 안되지.

#
v<- " I'm a global variable"
stuff  <- " I'm global stuff"

fun <- function(stuff){
  print(v)
  #It only effect inside of Function
  stuff<- "Reassign stuff inside of this function fun"
  print(stuff)
}

fun(stuff) #Reassign Stuff
print(stuff) # Global Stuff
