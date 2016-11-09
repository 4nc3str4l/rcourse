# c (combine)
MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector)

# We got false because because R by default stores numbers in Double form. 
is.integer(MyFirstVector)
is.double(MyFirstVector)

# Integer vector
V2 <- c(2L, 12L, 243L, 0L)
is.numeric(V2)
is.integer(V2)

# It converts 7 to a character
V3 <- c("a", "B23", "Hello", 7)
V3
is.character(V3)
is.numeric(V3)

seq() #Sequence - like ':'
rep() #Replicate

#Will generate a sequence of numbers between 1 to 15
seq(1, 15)
1:15 # This is another way to do a seq(1, 15)

#With step 2
seq(1, 15, 2)

# Store secuence inside a variable
z <- seq(1, 100, 4)
z

# Replicate the number "3" 50 times and store it in a vector
rep(3, 50)
d <- rep(3, 50)

rep("a", 5)

# We can replicate even vectors
x <- c(80, 20)
y <- rep(z, 10)
y
