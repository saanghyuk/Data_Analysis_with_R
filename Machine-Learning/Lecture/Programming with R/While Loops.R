#While Loop, Break
x<-0

?paste0()
while(x<10){
  print(paste('x is: ', x))
  x<- x+1
  
  if(x==5){
    print('x is now equal to 5! Break Loop')
    break #Loop 빠져 나가기.
    print('Woo I printed too!')
  }
}


