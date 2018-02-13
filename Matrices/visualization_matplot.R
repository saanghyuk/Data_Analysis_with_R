
#pch -> dot, triangle etc.
#col -> color
#Transpose table
FieldGoals
t(FieldGoals)

t(FieldGoals/Games)

matplot(FieldGoals)
matplot(t(FieldGoals/Games), type="b")

matplot(t(FieldGoals/Games), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)

matplot(FieldGoals, type="b")

matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4, 6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz=F)




