
matplot(t(MinutesPlayed), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)

#We want to see just few player
MinutesPlayed
Data <- MinutesPlayed[1:3,]
Data
matplot(Data, type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)
t(Data)
matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4, 6), pch=15:18, horiz=F)


#Vector로 하면 안그려짐. 
#MatPlot은 메트릭스를 넣어야 함. 
Data<-MinutesPlayed[1, , drop=F]
Data
t(Data)
matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4, 6), pch=15:18, horiz=F)
