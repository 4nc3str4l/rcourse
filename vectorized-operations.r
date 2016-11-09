x <- rnorm(5)
x

# We can use for loops
for(i in x){
  print(i)
}

#But exist vectorized operatiosn like
print(x[1:5])

N <- 100
a <- rnorm(N)
b <- rnorm(N)

# Vectorized approach
c <- a * b
c

#De vectorized approach
d <- rep(NA, N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}
d
