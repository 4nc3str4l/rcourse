



# Qplot
install.packages("ggplot2")
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(10))
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(10),
      color=I("blue"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot",
      color=I("blue"))


# Visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4), colour=I("red"))

# This is freaking amazing
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4), colour=Income.Group)


