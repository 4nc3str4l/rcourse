# Install packages (Some of them come from the cran repository)
install.packages("ggplot2")

#activate packages
library(ggplot2)

qplot(data=diamonds, carat, price, colour=clarity, facets=.~clarity)
