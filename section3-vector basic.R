#section 3: vector is the same thing as array in java or C++
#vector is an ordered set
#the indexation of vector is from 0
#even a single character is stored as vector in R

MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector

is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

v2 <-c(3L, 12L, 253L, 0L)
is.numeric(v2)
is.integer(v2)
is.double(v2)

v3 <-c("a", "b", "Hello")
is.numeric(v3)
is.character(v3)

#we cannot mix variable type in vector

#other ways to create vector
seq() #sequence - like ':'
rep() #replicate

seq(1, 15)
1: 15

seq(1, 15, 2) # : doesn't have this ability

z <- seq(1, 15, 4)
z

rep(3, 50) # replicate 3 50 times
d <- rep(3, 50)
d

rep("a", 5)
x <- c(80, 20)
y <- rep(x, 10)
y
