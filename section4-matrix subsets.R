#subseting in matrix
x <-c("a", "b", "c", "d", "e")
x
# vector of two values
x[c(1,5)]
#vector of one value
x[1]
Games
#print 1-3 rows and 6-10 columns
Games[1:3, 6:10]

#print 1st and 10th row for comparision sake
#[c(x, y),]
Games[c(1, 10),]

#compare two columns together
#Games [, c("2008", "2009")]
Games[, c("2008", "2009")]

#print only first row without title
Games [1,]

is.matrix(Games[1,]) #False
is.vector(Games[1,]) #True: because it is a named vector

Games[1,5]

#Games[row, column, drop]
#drop is default true and if we change it to false
#it is changing a named vector to a matrix
#it will print a row with title

Games[1,, drop=F]
Games[1, 5, drop=F]

#---------------visualizing subsets---------------

Data <-MinutesPlayed[1, , drop=F]
matplot(t(Data), type ="b", pch= 15:18, col = c(1: 4, 6))
#add a legen to above plot

legend("bottomleft", inset= 0.01, legend= Players [1], col = c(1: 4, 6), pch = 15: 18, horiz= F)

Data




#---------------------Output-----------------------------------
# > #subseting in matrix
#   > x <-c("a", "b", "c", "d", "e")
# > x
# [1] "a" "b" "c" "d" "e"
# > x[c(1,5)]
# [1] "a" "e"
# > x[1]
# [1] "a"
# > source("~/.active-rstudio-document", echo=TRUE)
# 
# > #subseting in matrix
#   > x <-c("a", "b", "c", "d", "e")
# 
# > x
# [1] "a" "b" "c" "d" "e"
# 
# > # vector of two values
#   > x[c(1,5)]
# [1] "a" "e"
# 
# > #vector of one value
#   > x[1]
# [1] "a"
# 
# 
# > #print 1-3 rows and 6-10 columns
#   > Games[1:3, 6:10]
# 2010 2011 2012 2013 2014
# KobeBryant    82   58   78    6   35
# JoeJohnson    72   60   72   79   80
# LeBronJames   79   62   76   77   69
# > #
#   > Games[c(1, 10),]
# 2005 2006 2007 2008 2009 2010 2011
# KobeBryant   80   77   82   82   73   82   58
# DwayneWade   75   51   51   79   77   76   49
# 2012 2013 2014
# KobeBryant   78    6   35
# DwayneWade   69   54   62
# > Games [, c("2008", "2009")]
# 2008 2009
# KobeBryant       82   73
# JoeJohnson       79   76
# LeBronJames      81   76
# CarmeloAnthony   66   69
# DwightHoward     79   82
# ChrisBosh        77   70
# ChrisPaul        78   45
# KevinDurant      74   82
# DerrickRose      81   78
# DwayneWade       79   77
# > #
#   > Games [1,]
# 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 
# 80   77   82   82   73   82   58   78    6   35 
# > is.matrix(Games[1,])
# [1] FALSE
# > is.vector(Games[1,])
# [1] TRUE
# > Games[1,5]
# [1] 73
# > Games[1,, drop=F]
# 2005 2006 2007 2008 2009 2010 2011
# KobeBryant   80   77   82   82   73   82   58
# 2012 2013 2014
# KobeBryant   78    6   35
# > Games[1, 5, drop=F]
# 2009
# KobeBryant   73










