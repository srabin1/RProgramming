#section 6
#Grammer of Graphics: consists of 7 layers 
# 1. Data, 2. Aesthetics, 3. Geometries, 4. Statistics
# 5. Facets, 6. Coordinates, 7. Theme

getwd()
setwd("C:/Users/sanaz/OneDrive/Documents/R-Udemy/section6")
getwd()

movies <-read.csv("P2-Movie-Ratings.csv", stringsAsFactors=T)
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

#---------------------Factor--------------------------

#what is factor? will show all features and group them in one level
#factor will change numerical values to factors
factor(movies$Year)
movies$Year <- factor(movies$Year)
summary(movies)
str(movies)

#-----------------Aesthetics---------------------------
#Aesthetic: how your data map what you wanna see
library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y = AudienceRating))

#we should tell ggplot how to plot our data
#add geometry : geom_point()
ggplot(data=movies, aes(x=CriticRating, y = AudienceRating))+ 
  geom_point()

#add color 
ggplot(data=movies, aes(x=CriticRating, y = AudienceRating,
                        color = Genre))+ geom_point()

#add size
ggplot(data=movies, aes(x=CriticRating, y = AudienceRating,
                        color = Genre, size = Genre))+
  geom_point()

#add size- better way
ggplot(data=movies, aes(x=CriticRating, y = AudienceRating,
                        color = Genre, size = BudgetMillions))+
  geom_point()

#>>> This is chart #1 (we will improve it)


#--------------Plotting with layers-------------------

p <- ggplot(data=movies, aes(x=CriticRating, y = AudienceRating,
                            color = Genre, size = BudgetMillions))

p 

#add geometry with points
p + geom_point()

#add geometry with lines
p + geom_line()

#multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()

#----------------Overriding Aesthetics----------------
#q stays the same as it was, we just add some extra features
q <-ggplot(data= movies, aes(x= CriticRating, y = AudienceRating, color= Genre, size = BudgetMillions))

#Add geom layer
q + geom_point()

#Overriding aes
#example 1
q + geom_point(aes(size = CriticRating))

#example 2
q +geom_point(aes(color = BudgetMillions))

#q remains the same
q + geom_point() 

#example 3
q + geom_point(aes(x = BudgetMillions)) +
  xlab("Budget Millions $$$")
#>>>This is chart #2

#example 4
q + geom_line() + geom_point()

#reduce line size
q +geom_line(size=1) + geom_point

#------------Mapping vs Setting--------------
#Mapping use Aesthetic function, Setting don't use it
q + geom_point(aes(x = BudgetMillions)) +
  xlab("Budget Millions $$$")

r <- ggplot (data = movies, aes(x = CriticRating, y = AudienceRating))
r + geom_point()

#add color

#1.Mapping (what we've doen so far):
r +geom_point(aes(color = Genre))

#2.Setting
r + geom_point(color = "DarkGreen")

#ERROR: mix of 1 & 2 is not correct
r + geom_point(aes(color = "DarkGreen"))

#1. Mapping
r + geom_point(aes(size= BudgetMillions))

#2. Setting
r + geom_point(size= 10)

#ERROR: mix of 1 & 2 is not correct
r + geom_point(aes(size = 10))

#---------Histograms and Density Charts------
#change binwidth from 1 to 100 to see bars difference
s <-ggplot(data= movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth= 5)

#add color

s + geom_histogram(binwidth= 10, fill ="Green")
#or
s + geom_histogram(binwidth= 10, aes(fill =Genre))

#add a border
s + geom_histogram(binwidth= 10, aes(fill =Genre), color = "Black")
#>>> this is chart #3 (we will improve it)

#sometimes you may need denstiy charts:
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position = "stack")

#----------------Starting Layer Tips-----------------
t <-ggplot(data=movies, aes(x = AudienceRating))
t + geom_histogram(binwidth =10, fill = "White", color = "Blue")

#another way: we can define aesthetic in both ways
t <- ggplot (data= movies)
t + geom_histogram(binwidth =10,
                   aes(x= AudienceRating),
                   fill = "White", color = "Blue")
#>>> this is chart #4


t + geom_histogram(binwidth =10,
                   aes(x= CriticRating),
                   fill = "White", color = "Blue")
#>>>this is chart #5


#--------------Statistical Transformations--------------

?geom_smooth

u <-ggplot(data= movies, aes(x=CriticRating, y= AudienceRating,
           color= Genre))

u+ geom_point() + geom_smooth()

#better way
u+ geom_point() + geom_smooth(fill= NA)

#boxplots
u <-ggplot(data= movies, aes(x=Genre, y= AudienceRating,
                             color= Genre))
u + geom_boxplot()
u + geom_boxplot(size = 1.2)
#combine boxplot with point
u + geom_boxplot(size = 1.2) + geom_point()

#tip/ hack: to scatter points
u + geom_boxplot(size= 1.2) + geom_jitter()

#another way:
#alpha is for transparency; 1 is opaque and 0 is transparent
u + geom_jitter() + geom_boxplot(size =1.2, alpha=0.5)
#>>>This is chart #6

#boxplot for critic rating
i <- ggplot (data= movies, aes(x= Genre, y = CriticRating, color =Genre))
i + geom_boxplot(size =1.2) + geom_jitter()

#------------------Using Facets-------------------------
v <-ggplot (data= movies, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill= Genre), 
                   color = "Black")
#Adding facets
v + geom_histogram(binwidth = 10, aes(fill= Genre), 
                   color = "Black")+
  facet_grid(Genre~., scales= "free")

#Scatterplots:
w <-ggplot(data=movies, aes(x= CriticRating, y = AudienceRating,
                            color = Genre))

w +geom_point(size= 3)

#facets: horizontal
w +geom_point(size= 3) +
  facet_grid(Genre~.)

#facets: vertical
w +geom_point(size= 3) +
  facet_grid(.~Year)

#facets: horizontal via vertical
w +geom_point(size= 3) +
  facet_grid(Genre~Year)

#facets: horizontal via vertical and add smoother
w +geom_point(size= 3) +
  geom_smooth() +
  facet_grid(Genre~Year)

#facets: combine all learnings
w +geom_point(aes(size=BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre~Year)

#>>> this is chart #7 (but still will improve)

#---------------Coordinates--------------------
# How to limit and zoom in/out our access
m <-ggplot(data=movies, aes(x = CriticRating, y = AudienceRating,
                            size =BudgetMillions, color= Genre))

m +geom_point()

#We want to visualize top right of the above plot
#xlim and ylim limit our access
m +geom_point() +
  xlim(50, 100) +
  ylim(50, 100)

#won't work well always
n <-ggplot(data=movies, aes(x=BudgetMillions))                          
n + geom_histogram(binwidth= 10, aes(fill= Genre), 
                   color="Black")

n + geom_histogram(binwidth= 10, aes(fill= Genre), 
                   color="Black")+ ylim(0, 50)

#Better Approach: zoom
n + geom_histogram(binwidth= 10, aes(fill= Genre), 
                   color="Black")+
  coord_cartesian(ylim= c(0,50))

#improve chart #7
w +geom_point(aes(size=BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre~Year)+
  coord_cartesian(ylim=c(0,100))


#----------------Perfecting by adding Themes---------------
o <- ggplot(data=movies, aes(x =BudgetMillions)) 
h <- o + geom_histogram(binwidth =10, aes(fill= Genre), color="Black")

h

#label formatting (axes labels)
h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color= "DarkGreen", size = 30), 
        axis.title.y = element_text(color= "Red", size = 30))

#tick mark formatting
h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color= "DarkGreen", size = 30), 
        axis.title.y = element_text(color= "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20))

#Legend formatting
#Legend position: top-right c(1,1), top-left c(0,1), 
#bottom_right c(1,0), bottom-left c(0,0)

h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(color= "DarkGreen", size = 30), 
        axis.title.y = element_text(color= "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size= 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1))

#title of plot
h +
  xlab("Money Axis") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(color= "DarkGreen", size = 30), 
        axis.title.y = element_text(color= "Red", size = 30),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        
        legend.title = element_text(size= 30),
        legend.text = element_text(size = 20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(color="DarkBlue",
                                  size=40,
                                  family="Courier"))














