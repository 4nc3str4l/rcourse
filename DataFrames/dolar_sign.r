
stats
head(stats)

stats[3, 3]
stats[3, "Birth.rate"]

#Acces data with $
stats$Internet.users #identical to A[,2]
stats$Internet.users[2]
stats[, "Internet.users"]
# Show different values in this column
levels(stats$Income.Group)

# Basic operations with a DF
stats[1:10, ]# Subseting
stats[3:9,]
stats[c(4, 100),]

#Rember ho the [] work
is.data.frame(stats[1,]) #No need for drop=F
stats[,1]
is.data.frame(stats[,1])
is.data.frame(stats[,1,drop=F])

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

stats$MyCalc <- stats$Birth.rate * stats$Internet.users
stats$MyCalc

#Test of knowledge
stats$xyz <- 1:5
head(stats, n=12)
#Remove column
stats$MyCalc <- NULL
stats$xyz <- NULL
