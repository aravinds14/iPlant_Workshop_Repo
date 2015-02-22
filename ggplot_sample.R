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
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
myplot

myplot <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3)
myplot

myplot <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3) +
  facet_grid(. ~ Species)
myplot

myplot <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3) +
  facet_grid(Species ~ .)
myplot
 
# not working
myplot <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size = 3) +
  facet_wrap(Species ~ .)
myplot


library(RColorBrewer)
display.brewer.all()


df <- melt(iris, id.var = "Species")
ggplot(df, aes(Species, value, fill = variable)) + 
  geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")


