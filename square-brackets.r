# Reminder (vectors.r)
x <- c(1, 123, 534, 13, 4) #Combine
y <- seq(201, 250, 11)     #Sequence
z <- rep("Hi!", 3)         #Replicate

w <- c("a", "b", "c", "d", "e")
w
# To access to an individual element of the vector use []
w[1]

# Get what you don't want you want everyting -1 (first element, second..)
w[-1]
w[-2]

# Get the elements between 1 and 3 (included)
w[1:3]

# Get the 1, 3, 5 elements
w[c(1, 3, 5)]

# Ge the whole vector but 2 and 4
w[c(-2, -4)]

#Get the whole vector minus the elements between 3 and 5
w[-3:-5]
