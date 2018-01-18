pollutantmean <- function(directory, pollutant, id = 1:332) {
        # temp = sprintf("%s/%03d.csv", directory, id)
        # myMergedData <- do.call(rbind,lapply(temp, read.csv))
        # colMeans(myMergedData[pollutant], na.rm = TRUE)
        data <- NA
        for (i in id) {
                csv <- read.csv(paste0(directory, sprintf("/%03d.csv", i)))
                data <- rbind(data, csv)
        }
        mean(data[[pollutant]], na.rm = TRUE)
}