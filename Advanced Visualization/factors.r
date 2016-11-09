
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

