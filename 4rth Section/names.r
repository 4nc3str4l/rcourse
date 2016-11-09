#Named Vectors

Charlie <- 1:5
Charlie

#Give names
names(Charlie) <- c("a", "b", "c", "d", "e")

Charlie["d"]
names(Charlie)


#clear naems
names(Charlie) <- NULL
Charlie


#----------------------
#Naming Matrix Dimensions 
temp.vec <- rep(c("a", "B", "zZ"), times=3)
temp.vec
temp.vec <- rep(c("a", "B", "zZ"), each=3)
temp.vec

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "Are", "You")
Bravo

colnames(Bravo) <- c("X", "Y", "Z")
Bravo

Bravo["Are", "Y"] <- 0
Bravo


