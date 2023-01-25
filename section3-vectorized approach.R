#vectorized operations
#R is a vectorized language, we don't need to write for loops 
#to sum up two vectors
#even inside of functions we can use vectors

x <-rnorm(5)
x

#R-specific programming loop
for (i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])


#conventional programming loop
for (j in 1: 5){
  print(x[j]) 
}

#--------------------------2nd part of vectorized section
N <- 1000000
a <- rnorm(N)
b <- rnorm(N)


# a lot of low level programming languages like C are processing single 
#blocks of code faster but in R vectorized approach is much
#faster than devectorized approach

#vectorized approach is definitely faster in R
c <- a * b
c

#De-vectorized approach
d <-rep(NA, N)
for (i in 1: N){
  d[i] <-a[i] * b[i]
}

d
