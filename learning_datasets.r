# Accessing Built-in Dataset:
iris
# Exploring the Dataset
head(iris)
tail(iris)
summary(iris)
# Structure of the Dataset
str(iris)
# Basic Plotting
plot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species)
# Boxplot
boxplot(Sepal.Length ~ Species, data=iris)
boxplot(iris[1:4])