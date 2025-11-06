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
# Generating Random Numbers from a Normal Distribution
set.seed(123)  # Setting seed for reproducibility
rnorm(5, mean=0, sd=1)
# Generating Random Numbers from a Uniform Distribution
runif(5, min=0, max=1)
# Generating Random Numbers from a Binomial Distribution
rbinom(5, size=10, prob=0.5)
# Generating Random Numbers from a Poisson Distribution
rpois(5, lambda=3)
# Generating Random Numbers from an Exponential Distribution
rexp(5, rate=1)
# Generating Random Numbers from a Chi-Squared Distribution
rchisq(5, df=4)
# Generating Random Numbers from a t-Distribution
rt(5, df=10)
# Generating Random Numbers from an F-Distribution
rf(5, df1=5, df2=10)
# Generating Random Numbers from a Cauchy Distribution
rcauchy(5, location=0, scale=1)
# Generating Random Numbers from a Logistic Distribution
rlogis(5, location=0, scale=1)
# Generating Random Numbers from a Weibull Distribution
rweibull(5, shape=2, scale=1)
# Generating Random Numbers from a Gamma Distribution
rgamma(5, shape=2, scale=2)
# Generating Random Numbers from a Beta Distribution
rbeta(5, shape1=2, shape2=5)
# Generating Random Numbers from a Multinomial Distribution
rmultinom(1, size=10, prob=c(0.2, 0.5, 0.3))
# Generating Random Numbers from a Hypergeometric Distribution
rhyper(5, m=20, n=30, k=10)
# Generating Random Numbers from a Negative Binomial Distribution
rnbinom(5, size=5, prob=0.5)
# Generating Random Numbers from a Geometric Distribution
rgeom(5, prob=0.3)
# Generating Random Numbers from a Log-Normal Distribution
rlnorm(5, meanlog=0, sdlog=1)
# Generating Random Numbers from a Student's t-Distribution
rt(5, df=15)
# Generating Random Numbers from a Uniform Discrete Distribution
sample(1:100, 5, replace=TRUE)
# Generating Random Numbers from a Custom Discrete Distribution
sample(c(1, 2, 3, 4, 5), 5, replace=TRUE, prob=c(0.1, 0.2, 0.3, 0.2, 0.2))
# Generating Random Numbers from a Custom Continuous Distribution using Inverse Transform Sampling
u <- runif(5)
x <- -log(1 - u)  # Exponential distribution with rate=1
x
# Setting Seed for Reproducibility
set.seed(42)

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

# Creating a 3x3 Matrix
M <- matrix(1:9, nrow=3, ncol=3)
M

# Accessing an Element in the Matrix
M[2,3]
# Accessing a Row in the Matrix
M[1, ]
# Accessing a Column in the Matrix
M[ ,2]
# Transposing the Matrix
t(M)
# Calculating the Determinant of the Matrix
det(M)
# Calculating the Inverse of the Matrix
solve(M)
# Matrix Multiplication
M %*% t(M)
# Eigenvalues and Eigenvectors
eigen(M)
# Creating an Identity Matrix
I <- diag(3)
I
I
# Adding Two Matrices
M + I
# Multiplying a Matrix by a Scalar
2 * M
# Creating a Data Frame
df <- data.frame(Name=c("Alice", "Bob", "Charlie"), Age=c(25, 30, 35), Score=c(90, 85, 95))
df

# Accessing a Column in the Data Frame
df$Name
df[, "Age"]
# Accessing a Row in the Data Frame
df[2, ]
# Accessing a Specific Element in the Data Frame
df[3, "Score"]
# Adding a New Column to the Data Frame
df$Passed <- c(TRUE, TRUE, TRUE)
df
# Filtering Rows in the Data Frame
df[df$Age > 28, ]
df[df$Score >= 90, ]
# Summary Statistics of the Data Frame
summary(df)
# Calculating the Mean Score
mean(df$Score)
# Calculating the Standard Deviation of Scores
sd(df$Score)
# Sorting the Data Frame by Age
df[order(df$Age), ]
# Sorting the Data Frame by Score in Descending Order
df[order(-df$Score), ]
# Creating a List
my_list <- list(Name="Alice", Age=25, Scores=c(90, 85, 95), Details=data.frame(Height=165, Weight=60))
my_list
# Accessing Elements in the List
my_list$Name
my_list$Scores
my_list$Details
# Adding an Element to the List
my_list$Passed <- TRUE
my_list
# Removing an Element from the List
my_list$Age <- NULL 
my_list
# Length of the List
length(my_list)
# Names of the List Elements    
names(my_list)
# Accessing List Elements by Index
my_list[[2]]
# Accessing Multiple Elements by Index
my_list[c(1,3)]
# Modifying an Element in the List
my_list$Name <- "Bob"
my_list

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

