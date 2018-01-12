## Coursera Data Science Specialization - R Programming Week 1

# check R version
print(R.version.string)

# clear environment
rm(list=ls())

current_dir <- getwd()
current_dir

course_dir <- file.path(current_dir, "coursera")
course_dir

week_dir <- file.path(course_dir, "week1")
week_dir
# Set working dir to coursera week 1
setwd(week_dir)

# read data
data <- read.csv("hw1_data.csv")
# find column names
colnames(data)
# find first 2 rows
head(data, 2)
# find number of rows
dim(data)
# find last 2 rows
tail(data, 2)
# first 2 rows and all columns
data[1:2,]
# first and thrid row
data[c(1,3),]
# 47th row
data[47,]
# count missing values in particular column
summary(data)
sum(is.na(data$Ozone))
# mean of a column, remove NA
mean(data$Ozone, na.rm = TRUE)
colMeans(x=data, na.rm = TRUE)
# Subset: Ozone > 31 and Temp > 90, what's mean of Solar.R of it?
new.data <- data[ which( data$Ozone > 31 & data$Temp > 90),]
new.data
mean(new.data$Solar.R)
# Mean of Temp when Month = 6
new.data <- data[ which(data$Month == 6),]
new.data
mean(new.data$Temp)
# Maximum ozone value in May
new.data <- subset(data, Month == 5)
colMax <- function(data) sapply(data, max, na.rm = TRUE)
colMax(new.data)
max(new.data$Ozone, na.rm = TRUE)
