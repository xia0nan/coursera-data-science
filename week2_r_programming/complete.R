complete <- function(directory, id = 1:332) {
        temp = sprintf("%s/%03d.csv", directory, id)
        myMergedData <- do.call(rbind,lapply(temp, read.csv))
        complete_cases <- myMergedData[complete.cases(myMergedData), ]
        ids <- table(complete_cases$ID)
        result <- as.data.frame(ids)
        colnames(result) <- c("id", "nobs")
        result[is.na(result)] <- 0
        result
}