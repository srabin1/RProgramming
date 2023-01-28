#matplot visualization
#Plot columns of matrix

matplot(FieldGoals) #will plot each column by default

#how plot each row? make a transpose of your matrix then apply matplot

FieldGoals
t(FieldGoals)

matplot(t(FieldGoals), type ="b", pch= 15:18, col = c(1: 4, 6))
#add a legen to above plot

legend("bottomleft", inset= 0.01, legend= Players, col = c(1: 4, 6), pch = 15: 18, horiz= F)


t(FieldGoals/Games)

matplot(t(FieldGoals/Games), type ="b", pch= 15:18, col = c(1: 4, 6))
#add a legen to above plot

legend("bottomleft", inset= 0.01, legend= Players, col = c(1: 4, 6), pch = 15: 18, horiz= F)


t(FieldGoals/FieldGoalAttempts)

matplot(t(FieldGoals/FieldGoalAttempts), type ="b", pch= 15:18, col = c(1: 4, 6))
#add a legen to above plot

legend("bottomleft", inset= 0.1, legend= Players, col = c(1: 4, 6), pch = 15: 18, horiz= F)

