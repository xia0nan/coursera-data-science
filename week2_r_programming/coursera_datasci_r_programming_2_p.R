## Coursera Data Science Specialization - R Programming Week 2 - Programming Assignment
# https://www.coursera.org/learn/r-programming/supplement/amLgW/programming-assignment-1-instructions-air-pollution


# check R version
print(R.version.string)

# clear environment
rm(list=ls())

setwd("/Users/nanxiao/Developer/babylon/datasciencecoursera/")

course_dir <- getwd()
course_dir

week_dir <- file.path(course_dir, "week2_r_programming")
week_dir

setwd(week_dir)

source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)
pollutantmean("specdata", "nitrate")
rm(pollutantmean)

source("complete.R")
complete("specdata", 286)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
cc <- complete("specdata", 54)
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

temp = sprintf("%s/%03d.csv", "specdata", 286)
myMergedData <- do.call(rbind,lapply(temp, read.csv))
(complete.cases(myMergedData))
complete_cases <- myMergedData[complete.cases(myMergedData), ]

complete_cases
is.na(complete_cases)
ids <- table(complete_cases$ID)
result <- as.data.frame(ids)
colnames(result) <- c("id", "nobs")
result
complete("specdata", c(304, 311, 95, 274, 211, 170, 241, 44, 213, 228))