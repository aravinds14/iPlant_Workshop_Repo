# ggplot learning script
install.packages("ggplot2",dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")
head(iris)
ddply(iris, .(Species), summarize)
df <- melt(iris, id.var = "Species")
dcast(df, Species ~ variable, mean)

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

myplot <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
myplot


myplot <- ggplot(data=iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size=3)
myplot


myplot <- ggplot(data=iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size=3)
myplot
summary(myplot)


d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
myplot.diamond <- ggplot(data = d2, aes(carat, price, color = color)) + 
  geom_point()
myplot.diamond

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
myplot.diamond <- ggplot() + 
  geom_point(data = d2, aes(carat, price, color = color))
myplot.diamond

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
