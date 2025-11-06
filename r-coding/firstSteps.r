# Creating numeric and character vectors
numVector <- c(-1.5, 3.2, 8.5, -0.9, 4.8)
fruitVector <- c("Apple", "Orange", "Banana")

# Basic functions for vectors
rev(fruitVector)
sort(fruitVector)
sum(numVector)
abs(numVector)
diff(numVector)
mean(numVector)
median(numVector)
sd(numVector)
var(numVector)
summary(numVector)

# Difference between mean and median
abs(median(numVector) - mean(numVector))

# Mean-centering
numVector - mean(numVector)

# Standardize
(numVector - mean(numVector)) / sd(numVector)

# Min and max values
min(numVector)
max(numVector)

# Second-smallest element
sort(numVector)[2]