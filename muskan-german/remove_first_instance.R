remove_first_instance <- function(df) {
  already_found <- c()
  for (i in 1:length(df$pid)) {
    if (!(df[i,]$pid %in% already_found)) {
      already_found <- append(already_found,df[i,]$pid)
      df[i,]$Length.of.time.within.firm <- NA
    }
  }
  return(df)
}