# Basic Mathematical Functions in R, Sinus
sin(0.5)

# Absolute Value
abs(-10)

# PI
pi

# Exponential Function
exp(1)

# Factorial
factorial(6)

# Assigning Values to Variables
n1 <- 2
n2 <- 3

# Adding Variables
n1 + n2

# Multiplying Variables
n1 * n2

# Combining Variables into a Vector
c(n1, n2)

# Creating a Sequence of Numbers from 1 to 10
1:10

# Generating a Sequence with Specific Increments
seq(1, 10, by=2)    

# Generating a Sequence of 5 Numbers from 1 to 10
seq(1, 10, length.out=5)

# Generating a Repeated Sequence
rep(1:3, times=3)
rep(1:3, each=3)

# Setting Seed for Reproducibility
set.seed(42)

# Creating a Sequence and Assigning to a Variable
n4 <- 10:20
n4

# Calculating the Sum of Numbers from 1 to 100
sum(1:100)

# Defining a Function to Calculate the Gaussian (Normal) Distribution
gaussian_function <- function(x) {
  return((1/sqrt(2*pi)) * exp(-0.5 * x^2))
}

gaussian_function(2000)

# Defining a Function to Calculate the Sum of Integers from 1 to x
gauss <- function(x) {
    sum(1:x)
}

gauss(100)