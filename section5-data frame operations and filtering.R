#Basic operations on data frame

stats[1: 10,] # it means the first rows and all columns (subsetting)
stats[3: 9,]
stats[c(4, 100),] # only shows row 4 and 100 with all columns

#------------Remember how the [] work:----------------

stats[1,] # only shows first row and all columns
is.data.frame(stats[1,]) #is a data frame. no need for drop=F
stats[, 1] #extract the first column and all rows
is.data.frame(stats[, 1]) # is not a data frame. needs drop=F
stats[, 1, drop=F]
is.data.frame(stats[, 1, drop=F])# is a data frame

#-------------------Multiply columns--------------------
head(stats)

#multiplies Birth.rate and Internet.users column
stats$Birth.rate* stats$Internet.users

#add two columns
stats$Birth.rate + stats$Internet.users

#-------------Add a column to our imported data frame----
head(stats)
stats$Mycalc <-stats$Birth.rate * stats$Internet.users

#--------------Test of knowledge-------------------
#will add a column with values 1-5 and repeat it since we
#have many rows

stats$xyz <- 1:5
head(stats, n = 10)

#------------------Remove a column-------------------
stats$Mycalc <-NULL
head(stats)
stats$xyz <-NULL

#-------------Filtering Data Frames-----------------
head(stats)
# we are comparing all values in the column Internet users with value 2
stats$Internet.users < 2 
#filter: will filter that column based on True or False
#the default is True
filter <-stats$Internet.users < 2
stats[filter, ]

stats[stats$Birth.rate > 40, ]

stats[stats$Birth.rate > 40 & stats$Internet.users < 2 , ]

stats[stats$Income.Group == "High income", ]

levels(stats$Income.Group)


#--------------information for Malta------------------
stats[stats$Country.Name =="Malta", ]

#--------------Introduction to qplot()-----------------
#qplot is using for scatter plot
?qplot

library(ggplot2)
#install.packages("ggplot2")
qplot(data= stats, x = Internet.users)
qplot(data = stats, x=Income.Group, y = Birth.rate)
qplot(data = stats, x=Income.Group, y = Birth.rate, size =I(3))
qplot(data= stats, x =Income.Group, y = Birth.rate, size = I(3), 
      colour= I("blue"))

qplot(data= stats, x =Income.Group, y = Birth.rate, geom = "boxplot")

#-------------Visualizing what we need-----------------
qplot(data= stats, x = Internet.users, y = Birth.rate)

qplot(data= stats, x = Internet.users, y = Birth.rate,
      size = I(4))

qplot(data= stats, x = Internet.users, y = Birth.rate,
      color = I("red"), size = I(4))

qplot(data= stats, x = Internet.users, y = Birth.rate,
      color = Income.Group, size = I(4))


#-----------------create a data frame------------------
#using country region data from the original file
mydf <-data.frame(Countries_2012_Dataset, Codes_2012_Dataset,
                  Regions_2012_Dataset)

head(mydf)
#how do we change the name of columns?

#colnames(mydf)<- c("Country", "Code", "Region")
#head(mydf)

#or we can name them from the beginning 
rm(mydf)
mydf <-data.frame(Country=Countries_2012_Dataset,Code= Codes_2012_Dataset,
                  Region = Regions_2012_Dataset)



head(mydf)
tail(mydf)
summary(mydf)

#-----------Merging data frames------------
head(stats)
head(mydf)

#how to combine or merge data frames into one?
?merge
#Country.Code in stats and Code in mydf have the same
#values, so we are merging them together

#same for Country.Name and Country

merged <- merge(stats, mydf, by.x = "Country.Code", by.y= "Code")
merged

#remove duplicated columns by using NULL
merged$Country <- NULL
str(merged)
tail(merged)

#------------Visualizing with qplot: part 2----
qplot(data=merged, x=Internet.users, y =Birth.rate,
      color= Region)

#1. Shapes of dots
qplot(data=merged, x=Internet.users, y =Birth.rate,
      color= Region, size= I(5), shape= I(23))

#2. Transparency between 0-1, 0 is very opaque and 1 is very transparent
qplot(data=merged, x=Internet.users, y =Birth.rate,
      color= Region, size= I(5), shape= I(33),
      alpha=I(1))

#3. Add a title
qplot(data=merged, x=Internet.users, y =Birth.rate,
      color= Region, size= I(5), shape= I(33),
      alpha=I(1),
      main="Birth Rate vs Internet Users")

