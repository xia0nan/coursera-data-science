# question 1
library(datasets)
data(iris)

?iris

round(mean(iris[which(iris$Species == "virginica"),]$Sepal.Length))

# question 2
apply(iris[, 1:4], 2, mean)

# question 3
library(datasets)
data(mtcars)

?mtcars

sapply(split(mtcars$mpg, mtcars$cyl), mean)
tapply(mtcars$mpg, mtcars$cyl, mean)
with(mtcars, tapply(mpg, cyl, mean))

# question 4
hp_list <- tapply(mtcars$hp, mtcars$cyl, mean)
unname(round(abs(hp_list[3] - hp_list[1])))

# question 5
debug(ls)
ls
undebug(ls)
