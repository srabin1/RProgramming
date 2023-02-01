#section 5: importing data from csv file
#reading a data is different from importing a data

?read.csv()

#Method 1: Select the file manually
stats <-read.csv(file.choose())
stats

#Method 2: Set working directory and read data from it
getwd()
#Windows:
setwd("C:\\Users\\sanaz\\OneDrive\\Documents\\R-Udemy\\section5")
getwd()
#remove previous data by rm()
rm(stats)
stats <-read.csv("P2-Demographic-Data.csv", stringsAsFactors=T)
stats

#------------Exploring the data---------------------
stats

#function 1: shows number of rows
nrow(stats)

#function 2: shows number of columns
ncol(stats)

#function 3: shows the top n rows (default first 6 rows)
head(stats, n=10)

#function 4: shows the bottom n rows (default last 6 rows) 
tail(stats, n=8)

#function 5: shows the structure of data frame
str(stats)

#function 6: shows the summary of data frame
summary(stats)

#----------Using the $ sign--------------------------
#$ sign is not working for matrices but it is working for data frame 
stats
head(stats)
stats[3,3]
stats[3, "Birth.rate"]
#we can't do stats["Angola", 3] because Angola is in a column

#data frame $ name of columns will return all the values in that column
stats$Internet.users
#or 
stats[, "Internet.users"]
stats$Internet.users[2]

#function 7: 
?levels()
levels(stats$Income.Group)
#levels function returns NULL so redo read.csv() function with the read.csv(filename, stringsAsFactors=T)

