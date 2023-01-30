#Basketball insights

myplot <-function(data, rows=1:10){
  
  Data <-data[rows, , drop=F]
  matplot(t(Data), type ="b", pch= 15:18, col = c(1: 4, 6))
  legend("bottomleft", inset= 0.01, legend= Players [rows], col = c(1: 4, 6), pch = 15: 18, horiz= F)
  
}

myplot(Games)

#----------------Salary----------------------------
myplot(Salary)
#how much they get paid per Game?
myplot(Salary/Games)# we have some anomaly in our plots
myplot(Salary/FieldGoals)

#----------------In-Game Metrics-------------------
myplot(MinutesPlayed)
myplot(Points)

#as we can see injuries are affecting the data visualization
#but how to get rid of them?
#answer: by normalizing the data

#---------------In-Game Metrics Normalized-----------
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games)

#Interesting Observations

myplot(MinutesPlayed/Games)
myplot(Games)

#Time is valuable
myplot(FieldGoals/MinutesPlayed)

#Player Style
myplot(Points/FieldGoals)
