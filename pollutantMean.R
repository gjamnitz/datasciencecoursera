pollutantmean <- function(directory, pollutant, id = 1:332) {
  numbers <- c()
  for(i in id) {
    fName <- paste(directory, "/", sprintf("%03d", i),".csv", sep="")
    table <- read.csv(fName)
    numbers <- c(numbers, table[,pollutant][!is.na(table[, pollutant])])
  }
  mean(numbers)
}