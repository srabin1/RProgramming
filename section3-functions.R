#functions in R

#to see the help for each function type ? mark before
#each function

?rnorm()
rnorm(5)
rnorm(5, 10, 8)
rnorm(n = 5, mean= 10, sd= 8)

?c()
?seq()
seq(from= 10, to=20, by=3)
seq(from=10, to=20, length.out= 100)

?rep()
rep(5, 10)
rep(5:6, times=10)
rep(5:6, each=10)

x<- c("a", "b", "c")
rep(x, times= 5)

?sqrt()
A<- seq(from =10, to= 20, along.with=x)
sqrt(A)

B <-sqrt(A)
B
