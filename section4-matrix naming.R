#Naming Dimensions in matrix

#Named vectors

Charlie <- 1: 5
Charlie

#give names

names(Charlie) <-c("a", "b", "c", "d", "e")
Charlie
Charlie["d"]
names(Charlie)

#clear names
names(Charlie) <-NULL
Charlie

#Naming matrix dimensions 1

temp.vec <- rep(c("a", "B",  "zZ"), each= 3)
temp.vec

Bravo <-matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <-c("How", "are", "you?")
Bravo

colnames(Bravo) <-c("X", "Y", "Z")
Bravo

Bravo[2,2]
Bravo["are", "Y"]

Bravo["are", "Y"] <-0
Bravo

rownames(Bravo) <- NULL
Bravo



#--------------Output------------------------

# > names(Charlie)
# NULL
# > names(Charlie) <-c("a", "b", "c", "d", "e")
# > Charlie
# a b c d e 
# 1 2 3 4 5 
# > Charlie["d"]
# d 
# 4 
# > names(Charlie)
# [1] "a" "b" "c" "d" "e"
# > names(Charlie) <-NULL
# > Charlie
# [1] 1 2 3 4 5
# > temp.vec <- rep(c("a", "B",  "zZ"), 3)
# > temp.vec <- rep(c("a", "B",  "zZ"), each= 3)
# > temp.vec
# [1] "a"  "a"  "a"  "B"  "B"  "B"  "zZ" "zZ" "zZ"
# > Bravo <-matrix(temp.vec, 3, 3)
# > Bravo
# [,1] [,2] [,3]
# [1,] "a"  "B"  "zZ"
# [2,] "a"  "B"  "zZ"
# [3,] "a"  "B"  "zZ"
# > rownames(Bravo)
# NULL
# > rownames(Bravo) <-c("How", "are", "you")
# > rownames(Bravo) <-c("How", "are", "you?")
# > Bravo
# [,1] [,2] [,3]
# How  "a"  "B"  "zZ"
# are  "a"  "B"  "zZ"
# you? "a"  "B"  "zZ"
# > colnames(Bravo) <-c("X", "Y", "Z")
# > Bravo
# X   Y   Z   
# How  "a" "B" "zZ"
# are  "a" "B" "zZ"
# you? "a" "B" "zZ"
# > Bravo[2,2]
# [1] "B"
# > Bravo["are", "Y"]
# [1] "B"
# > Bravo["are", "Y"] <-0
# > Bravo
# X   Y   Z   
# How  "a" "B" "zZ"
# are  "a" "0" "zZ"
# you? "a" "B" "zZ"
# > rownames(Bravo) <- NULL
# > Bravo
# X   Y   Z   
# [1,] "a" "B" "zZ"
# [2,] "a" "0" "zZ"
# [3,] "a" "B" "zZ"
