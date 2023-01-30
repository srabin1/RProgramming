#Creating our first function
#functions are designed to encapsulate our code in blocks

#create a function for visualization
myplot <-function(){
  
  Data <-MinutesPlayed[2:3, , drop=F]
  matplot(t(Data), type ="b", pch= 15:18, col = c(1: 4, 6))
  legend("bottomleft", inset= 0.01, legend= Players [2:3], col = c(1: 4, 6), pch = 15: 18, horiz= F)
  
}

myplot()

#make function flexible by defining parameters

myplot <-function(rows){
  
  Data <-MinutesPlayed[rows:3, , drop=F]
  matplot(t(Data), type ="b", pch= 15:18, col = c(1: 4, 6))
  legend("bottomleft", inset= 0.01, legend= Players [rows], col = c(1: 4, 6), pch = 15: 18, horiz= F)
  
}

myplot(1:5)


#use above function to visualize all features

myplot <-function(data, rows){
  
  Data <-data[rows, , drop=F]
  matplot(t(Data), type ="b", pch= 15:18, col = c(1: 4, 6))
  legend("bottomleft", inset= 0.01, legend= Players [rows], col = c(1: 4, 6), pch = 15: 18, horiz= F)
  
}

myplot(Salary, 1:5)

#Add a default value to function

myplot <-function(data, rows=1:10){
  
  Data <-data[rows, , drop=F]
  matplot(t(Data), type ="b", pch= 15:18, col = c(1: 4, 6))
  legend("bottomleft", inset= 0.01, legend= Players [rows], col = c(1: 4, 6), pch = 15: 18, horiz= F)
  
}

#function has default value for rows 
myplot(MinutesPlayed)


