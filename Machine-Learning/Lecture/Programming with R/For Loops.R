v<- c(1, 2, 3)

for(variable in v){
  print(variable)
}

v<- c(1, 2, 3, 4, 5)
for(temp.var in v){
  #Execute some code
  #for every temp.var in v
  print('hello')  
}

for(temp.var in v){
  result <- temp.var+1
  print('The temp.var plus 1 is equal to')
  print(result)
}

my.list<- list(c(1,2,3), mtcars, 12)
for(item in my.list){
  print(item)
}

#메트릭스 내부의 요소도 싹다 해주네(칼럼 순서로)
mat <- matrix(1:25, nrow=5)
mat
for(num in mat){
  print(num)
}

1:nrow(mat) #첫번째 row
nrow(mat)
ncol(mat)
#Nested For Loop
for (row in 1:nrow(mat)){
  for(col in 1:ncol(mat)){
    print(paste('The selected row is:', row))
    print(paste('The element at row:', row, 'and col:', col, 'is', mat[row:col]))  
  }
}

