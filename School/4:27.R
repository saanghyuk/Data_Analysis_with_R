

ht <- c(10, 20, 30, 40, 50, 80, 90, 100, 70)
wt <- c(1, 2, 3, 4, 5, NA, 8, 7, 6, NA)
wt1 <- c(8, 7, 8, 2, 3, 4, 5, 6, NA, NA)

ht 
sort(ht)
order(ht)
rank(ht)

rank(ht, ties.method = "average")
rank(ht, ties.method = "min")
sort(ht, decreasing=TRUE)
is.unsorted(ht)
is.unsorted(sort(ht))

mean(wt1)
mean(wt)
mean(wt, na.rm=TRUE)
sort(wt)
sort(wt, na.last=NA)
sort(wt, na.last=T)
sort(wt, na.last=F)

mean(wt, trim=0.1)
mean(wt, na.rm=T, trim=0.1)

wt_n <- c(na.omit(wt), 4.5, 4.5)
wt_n




#139
ht <- c(160, 170, 180, 170, 172, 180, 172, 180, 173, 180, 170)
wt <- c(60, 70, 76, 85, 80, 75, 69, 175, NA, NA)