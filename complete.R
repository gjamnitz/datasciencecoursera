complete <- function(directory, id = 1:332) {
  nobs <- c()
  for(i in id) {
    fName <- paste(directory, "/", sprintf("%03d", i),".csv", sep="")
    table <- read.csv(fName)
    nobs <- c(nobs, length(table[,"ID"][!is.na(table[,"sulfate"]) & !is.na(table[,"nitrate"])]))
  }
  data.frame(id, nobs)
}