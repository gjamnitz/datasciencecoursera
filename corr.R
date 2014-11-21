corr <- function(directory, threshold = 0) {
  corrs <- c()
  compl <- complete(directory)
  for(i in 1:nrow(compl)) {
    if (compl[i, "nobs"] >= threshold) {
      fName <- paste(directory, "/", sprintf("%03d", i),".csv", sep="")
      table <- read.csv(fName)
      corrs <- c(corrs, cor(table[,"sulfate"], table[,"nitrate"], "pairwise.complete.obs"))
    }
  }
  corrs
}