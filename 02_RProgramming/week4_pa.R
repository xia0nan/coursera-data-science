# Set the working directory
setwd("/Users/nanxiao/Developer/babylon/coursera-data-science/02_RProgramming/")
getwd()

outcome <- read.csv("ProgAssignment3-data/outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
ncol(outcome)
names(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])
