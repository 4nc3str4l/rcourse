
#Import our dataframe
getwd();
setwd("C:\\Users\\cmuri\\Desktop\\RCourse\\Advanced Visualization")

movies <- read.csv("Movie-Ratings.csv")

# Change column names
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
str(movies)
summary(movies)

# Convert years into a factor
factor(movies$Year)
movies$Year <- factor(movies$Year)


library(ggplot2)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# Show the data in points (add geometry)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + geom_point()

# Add colour
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + geom_point()

# Add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) + geom_point()


# Add layers to our plot
# Add size
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))

# Point
p + geom_point() 

# Lines
p + geom_line()

#Multiple Layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()

# Overriding aesthetics
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
q + geom_point(aes(size=CriticRating))

q + geom_point(aes(colour=BudgetMillions))

q + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$$")

q + geom_line() + geom_point()

#Reduce the line size
q + geom_line(size=1) + geom_point()


# Mapping vs Setting

r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

#Add Colour
#1. Mapping (What we've done so far)
r + geom_point(aes(colour=Genre))

#2. Setting:
r + geom_point(colour="DarkGreen")

#ERROR!!!
#r + geom_point(aes(colour="DarkGreen"))

#1. Mapping
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r + geom_point(size=10)

#ERROR!
#r + geom_point(aes(size=10))


#------------- Histograms and Density Charts
s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth = 10)


# Add colour
s + geom_histogram(binwidth = 10, aes(fill=Genre))

# Add a border
s + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")

#>>> 3 (we will improve it
# Sometimes you may need density charts
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position="stack")

#-------------------------------- Starting layer tips

t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth=10, fill="White", colour="Blue")

# Another way
t <-ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRating),
                   fill="White", colour="Blue")
# >>>> 4


t + geom_histogram(binwidth = 10,
                   aes(x=CriticRating),
                   fill="White", colour="Blue")

# >>> 5
t <- ggplot()


#----------------------------- Statistical Transformations
u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u + geom_point() + geom_smooth(fill=NA)


#Box plots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))
u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()

# hack
u + geom_boxplot(size=1.2) + geom_jitter()

#Another way
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

#>>>>>>6


#------------------------------Facets

v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   colour="Black") + 
                    facet_grid(Genre~., scales="free")

#Scatterplots
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre))
w + geom_point(size=3)

#Facets
w + geom_point(size=3) + facet_grid(Genre~.)
w + geom_point(size=3) + facet_grid(Genre~Year)
w + geom_point(size=3) + facet_grid(.~Year)
w + geom_point(size=3) + geom_smooth() +  facet_grid(Genre~Year)
w + geom_point(aes(size=BudgetMillions)) +
    geom_smooth() +
    facet_grid(Genre~Year)

#------------------ Coordinates

#Today:
#limits
#zoom
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
            size=BudgetMillions,
            colour=Genre))
m + geom_point()

m + geom_point() +
  xlim(50, 100) +
  ylim(50, 100)

# Improve
w + geom_point(aes(size=BudgetMillions)) + 
  geom_smooth() +
  facet_grid(Genre~Year) + 
  coord_cartesian(ylim=c(0, 100))


# Perfecting by adding themes
o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")

h

# Axes labels
h + xlab("Money Axis") + 
    ylab("Number of Movies") +
    theme(axis.title.x = element_text(colour="DarkGreen", size=30),
        axis.title.y = element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20))


# Legend formating
# Axes labels
h + xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=30),
        axis.title.y = element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1, 1),
        legend.justification= c(1, 1))


# Title
h + xlab("Money Axis") + 
  ylab("Number of Movies") +
  ggtitle("Movire Budget Distribution") + 
  theme(axis.title.x = element_text(colour="DarkGreen", size=30),
        axis.title.y = element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title = element_text(size=30),
        legend.text = element_text(size=20),
        legend.position = c(1, 1),
        legend.justification= c(1, 1),
        
        plot.title = element_text(colour="DarkBlue",
                                  size=40,
                                  family="Courrier"))


