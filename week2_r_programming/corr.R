corr <- function(directory, threshold = 0) {
        # complete_rows <- complete(directory)
        # beyond_threshold <- complete_rows[complete_rows$nobs > threshold,]
        # temp <- myMergedData[complete_rows[id], ]
        # temp
        lst <- lapply(file.path(directory, list.files(path = directory, pattern="*.csv")), data.table::fread)
        dt <- rbindlist(lst)
        
        dt <- dt[complete.cases(dt),]
        dt <- dt[, .(nobs = .N, corr = cor(x = sulfate, y = nitrate)), by = ID][nobs > threshold]
        return(dt[, corr])
}