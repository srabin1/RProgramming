#using the [] brackets
#R is a vector driven language

x <-c(1, 123, 532, 13, 4) #combine
y <-seq(201, 250, 11)  #sequence
z <-rep("Hi!", 3)  #replicate

#how to access individual elements of vector
# minus in vector means except
w <- c("a", "b", "c", "d", "e")
w
w[1]
w[2]
w[-1] #access all the elements except the first one
w[-3] #access all the elements except the middle one
v <-w[-3]
w[1: 3] #access elements 1 to 3
w[3: 5]
w[c(1, 3, 5)]
w[c(-2, -4)]
-3: -5
w[-3: -5]
