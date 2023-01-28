#section4
#laod basketball data set

Salary
Games
MinutesPlayed
# three main approaches to create matrix: matrix(), rbind(), cbind()

?matrix
my.data <-1: 20
my.data

A <-matrix(my.data, 4, 5) #by convention will fill out matrix columnwise
A
A[2,3]


B <-matrix(my.data, 4, 5, byrow= T) #will fill out matrix rowwise
B
B[2,5]

?rbind() #binds vectors row by row
r1 <-c("I", "am", "happy")
r2 <-c("What", "a", "day")
r3 <-c(1,2,3)

C <-rbind(r1, r2, r3)
C

?cbind() # binds vectors column by column
c1 <-1: 5
c2 <- -1: -5
D <- cbind(c1, c2)
D



