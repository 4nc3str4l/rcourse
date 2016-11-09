


# Create a draframe with 3 vectors with the same length
myDf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
head(myDf)

colnames(myDf) <- c("Country", "Code", "Region")
head(myDf)

rm(myDf)

myDf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(myDf)

# Merging DataFrames (by Code)
merged <- merge(stats, myDf, by.x = "Country.Code", by.y = "Code")
head(merged)

merged$Country <- NULL
head(merged)

# Visualizing our new dataframe
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region)

#Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, shape=I(2), size=I(5))

#Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, shape=I(16), size=I(5), alpha=I(0.6))

#Title
qplot(data=merged, x=Internet.users, y=Birth.rate, colour=Region, shape=I(16), size=I(5), alpha=I(0.6), main="Birth Rate vs Internet Users")




