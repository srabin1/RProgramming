#section 2: the while loop, for loop, and if statement

while (FALSE){
  print("Hello")
}
# click on escape button to stop the loop

counter <- 1

while (counter < 12){
  print (counter)
  counter <- counter + 1
}

x <-5
x
y <-4

# for loop

for (i in 1: 5){
  print("Hello R")
}

#for can be written in the concept of vector
1: 5

for (i in 5: 10){
  print("Hello R")
}
  
#if statement

#rnorm function will generate variable that randomly has been generated
#create a random variable in this range
# ----- -2 ---- -1 ---- 0 ---- 1 ----2

rm(answer)
x <- rnorm(1)
x

if (x > 1){
  answer <- "greater than 1"
  } else if (x >= -1){
    answer <- "between -1 and 1"
  } else {
    answer <- "less than -1"
  }

#tab move the code to right and shift tab move it back to left