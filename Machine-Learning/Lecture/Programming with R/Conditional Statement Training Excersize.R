
#1
if(x==1){
  print('Hello')
}

#2
x<-3
if(x%%2==0){
  print('Even Number')
}else{
  print('Not Even')
}

#3
x<-matrix()
if(is.matrix(x)){
  print('Is a Matrix')
}else{
  print('Not a matrix')
}


#4
x <- c(5, 1, 6)
#sort(x, decreasing=T) #단순한 해답

if(x[1] > x[2]){
  fir <- x[1]
  sec <- x[2]
}else{
  fir <- x[2]
  sec <- x[1]
}

if(x[3]> fir & x[3]>sec){
  thi <- sec
  sec <- fir
  fir <- x[3]
}else if(x[3] < fir & x[3] < sec){
  thi <- x[3]
}else{
  thi <- sec
  sec <- x[3]
}
print(paste(fir, sec, thi))


#5
x<- c(20, 10, 1)
if(x[1] > x[2] & x[1]> x[3]){
  print(x[1])
}else if(x[2]>x[3]){
  print(x[2])
}else{
  print(x[3])
}
