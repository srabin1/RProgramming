# Homework 1
# Question: Test the law of large numbers for N random normally distributed numbers
# with mean = 0, stdev = 1; 
# create an R script that will count how many of these numbers 
# fall between -1 and 1 and divide by the total quantity of N


#change n from 100 to 1000000 
n <- 1000000

x <-rnorm(n, 0, 1)
x

count <-0
for (i in x){
  if (i > 1){
    answer<- "greater than 1"
  } else if (i < -1){
    answer <- "less than -1"
  } else {
    count <- count +1
  }
  
}


count

#compare count with E(X)= %68.2
answer<- count/n
answer

if (answer==0.682){
  print("congratulation")
}

