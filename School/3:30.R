


ma <- matrix(1:12, ncol=4)
ma
rowtotal <- apply(ma, 1, sum)
coltotal <- apply(ma, 2, sum)

sum(ma)
p_ma <- ma/78
p_ma
round(p_ma, 2)


round(ma/78, digits=3)
?round

rowtotal 
coltotal

#rowsum/colsum important


prop.table(ma)
rowSums(ma)
x <- c(22, 26, 30)
r_ma <- ma/x
r_ma



