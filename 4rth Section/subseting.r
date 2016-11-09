


x <- c("a", "b", "c", "d", "e")
x

# We can subset the vector x
x[c(1, 5)]

Games
Games[1:3,6:10]

Games[c(1, 10), ]
Games[,c("2008", "2009")]

is.matrix(Games[1,])
is.vector(Games[1,])

# Get a matrix instead of a vector             
Games[1,,drop=F]                                   

