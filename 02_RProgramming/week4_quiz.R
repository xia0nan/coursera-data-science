# question 1
set.seed(1)
rpois(5, 2)

# question 2
?rnorm

# question 3
# set.seed() function --> 
# It can be used to specify which random number generating algorithm R should use, 
# ensuring consistency and reproducibility.

# question 4
?qpois

# question 5
set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
plot(x, y)

# question 6
?rbinom

# question 7
?Rprof 
# call stack

# question 8
library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
# 100%

# question 9
?system.time

# question 10
# multi cores - elapsed time > user time