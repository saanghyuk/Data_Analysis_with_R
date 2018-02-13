t(Points)
Points[3:10, , drop=F]
matplot(Points[3:10, , drop=F])


myplot <- function(data, rows=1:10){
  Data<-data[rows,, drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4, 6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4, 6), pch=15:18, horiz=F)
}

myplot(Points)


#Salary
myplot(Salary)
myplot(Salary/Games) #Injured때문에 분모가 작아진 것
myplot(Salary/FieldGoals)

#In-Game Metrices
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrices Normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttemps/Games)
myplot(Points/Games)

#Interesting Observations
myplot(MinutesPlayed/Games)
myplot(Games)

#Time is valuable
myplot(FieldGoals/MinutesPlayed)

#PlayerStyle
myplot(Points/FieldGoals)
