## Coursera Data Science Specialization - R Programming Week 2 - Programming Assignment
# https://www.coursera.org/learn/r-programming/supplement/amLgW/programming-assignment-1-instructions-air-pollution


# check R version
print(R.version.string)

# clear environment
rm(list=ls())

setwd("/Users/nanxiao/Developer/babylon/R/")

current_dir <- getwd()
current_dir

course_dir <- file.path(current_dir, "coursera")
course_dir

week_dir <- file.path(course_dir, "week2")
week_dir

setwd(week_dir)

print(R.version.string)
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 34)
pollutantmean("specdata", "nitrate")
