complete <- function(directory, id = 1:332) {
        # temp = sprintf("%s/%03d.csv", directory, id)
        # myMergedData <- do.call(rbind,lapply(temp, read.csv))
        # complete_cases <- myMergedData[complete.cases(myMergedData), ]
        nobs <- numeric(0)
        for (i in id) {
                data <- read.csv(paste0(directory, sprintf("/%03d.csv", i)))
                complete_data <- complete.cases(data)
                nobs <- c(nobs, nrow(csv[complete_data, ]))
        }
        data.frame(id = id, nobs = nobs)
}