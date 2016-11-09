



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

