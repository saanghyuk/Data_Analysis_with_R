
mat <- matrix(1:25, byrow=T, nrow=5)
mat

#Operater
mat/3
mat*3

#Logical Operator
mat > 15

mat[mat>15]

mat+mat

mat^mat
mat*mat



mat*mat #이건 같은 자리끼리 곱하는 것
mat %*% mat #이건 행렬의 곱셈
