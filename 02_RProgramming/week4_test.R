str(str)
str(lm)

x <- rnorm(100, 2, 4)
summary(x)
str(x)

f <- gl(40, 10)
str(f)
summary(f)

library(datasets)
head(airquality)
str(airquality)

m <- matrix(rnorm(100), 10, 10)
str(m)
m[, 1]

s <- split(airquality, airquality$Month)
str(s)

x <- rnorm(10)
x
x <- rnorm(10, 20, 2)
z
summary(x)

set.seed(1)
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)

rpois(10, 1)
rpois(10, 2)
rpois(10, 20)

ppois(2, 2)
ppois(4, 2)
ppois(6, 2)

# Generating random numbers from a linear model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x, y)

# random sampling
set.seed(1)
sample(1:10, 4)
sample(1:10, 4)
sample(letters, 5)
sample(1:10)
sample(1:10)
sample(1:10, replace = TRUE)
