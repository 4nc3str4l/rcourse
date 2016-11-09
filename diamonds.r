

#Choose the diamonds dataset
mydata <- read.csv(file.choose())

#Install the plot package
install.packages("ggplot2")

#Plot te data
ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1) + 
  geom_smooth()

