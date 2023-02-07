library(tidyverse)
library(dplyr)

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

df <- read_csv("nina-qualtrics/socio_thesis_survey.csv")

df <- df[-c(1:2),]

df$Q18_1 <- reverse_column_ordering(df$Q18_1)
df$Q18_3 <- reverse_column_ordering(df$Q18_3)
df$Q15_1 <- reverse_column_ordering(df$Q15_1)
df$Q15_2 <- reverse_column_ordering(df$Q15_2)
df$Q12_2 <- reverse_column_ordering(df$Q12_2)

df <- df %>% select(order(colnames(df)))
df <- relocate(df,Q5,Q8_1,Q8_2,Q8_3,Q8_4,.before=Q12_1)

write.csv(df,"nina-qualtrics/socio_thesis_survey_processed.csv",row.names=FALSE)
