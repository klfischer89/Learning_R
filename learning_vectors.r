# Assigning a Vector to a Variable
n3 <- c(12,5,27)
# Printing the Variable
n3
# Calculating the Mean
mean(n3)
# Calculating the Standard Deviation
sd(n3)
# Calculating the Maximum Value
max(n3)
# Calculating the Minimum Value
min(n3)
# Calculating the Sum of the Elements
sum(n3)
# Calculating the Length of the Vector
length(n3)
# Sorting the Vector
sort(n3)
# Summary Statistics
summary(n3)
# Accessing Elements by Index
n3[2]
# Accessing Multiple Elements by Index
n3[c(1,3)]
# Logical Indexing
n3[n3 > 10]
# Modifying Elements by Index
n3[1] <- 15
n3
# Adding an Element to the Vector
n3 <- c(n3, 30)
n3
# Removing an Element from the Vector
n3 <- n3[-2]
n3
# Divide Vector by a Scalar
n3 / 12