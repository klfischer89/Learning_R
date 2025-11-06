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