



#Method 1: Select the file manually
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and read Data
getwd()

# Windows
setwd("C:\\Users\\cmuri\\Desktop\\RCourse\\DataFrames")
rm(stats)
stats <- read.csv("DemographicData.csv")
stats

# Number of rows
nrow(stats)

# Number of columns
ncol(stats)

# Top 6 rows
head(stats)
head(stats, n=10)

# Last 6 rows
tail(stats)

# Tricky function names:
# Get number of rows, variables, and tells some information about our columns
# Factors: Diferent levels it's like categories that you have (different possible values)
str(stats)
#runif() Random variables distributed uniformed

# Gives us some info about our data
summary(stats)




