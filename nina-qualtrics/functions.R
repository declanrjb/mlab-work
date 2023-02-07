source("~/Documents/R/mlab-work/libraries.R")

#Works on a scale of 1-6
reverse_ordering <- function(x,scale) {
  y <- scale - x
  y <- y + 1
  return(y)
} 

reverse_column_ordering <- function(input) {
  for (i in 1:length(input)) {
    if (!is.na(as.numeric(df$Q18_1[i]))) {
      z <- parse_number(input[i])
      message(typeof(z))
      input[i] <- reverse_ordering(z,6)
    }
  }
  return(input)
}