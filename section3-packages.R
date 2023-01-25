#packages in R
#Packages are collections of R functions, data, and dompiled
#code in a well-defined format. The directory where
#packages are stored is called the library


#1. install the package
install.packages("ggplot2")
#if we install the package but don't activate it
#it won't show its functions
?qplot()
?ggplot()
?diamonds

#2. activate the package
library(ggplot2)
?qplot
qplot(data= diamonds, carat, price, colour = clarity, facets= .~clarity)
