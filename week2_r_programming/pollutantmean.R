pollutantmean <- function(directory, pollutant, id = 1:332) {
        temp = sprintf("%s/%03d.csv", directory, id)
        myMergedData <- do.call(rbind,lapply(temp, read.csv))
        colMeans(myMergedData[pollutant], na.rm = TRUE)
}