library(ggplot2)
iris


ggplot(data = iris, aes(x = Species)) +
  geom_bar(fill = "gray93", colour = "gray94")

ggplot(data = iris, aes(x = Sepal.Length)) +  geom_histogram(fill = "white",colour="black")

ggplot(data = iris, aes(x = Sepal.Length, y=Petal.Length,color=Species)) + geom_point()

ggplot(data=iris, aes(x=Species, y=Sepal.Length)) +
  geom_boxplot(fill="gray93",colour="gray90")

library(ggplot2)
library(GGally)
library(scales)
library(memisc)
ggpairs(iris)
