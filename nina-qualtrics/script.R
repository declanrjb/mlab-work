source("~/Documents/R/mlab-work/nina-qualtrics/functions.R")

df <- read_csv("nina-qualtrics/socio_thesis_survey.csv")

df$Q18_1 <- reverse_column_ordering(df$Q18_1)
df$Q18_3 <- reverse_column_ordering(df$Q18_3)
df$Q15_1 <- reverse_column_ordering(df$Q15_1)
df$Q15_2 <- reverse_column_ordering(df$Q15_2)
df$Q12_2 <- reverse_column_ordering(df$Q12_2)

df <- df %>% select(order(colnames(df)))
df <- relocate(df,Q5,Q8_1,Q8_2,Q8_3,Q8_4,.before=Q12_1)

write.csv(df,"nina-qualtrics/socio_thesis_survey_processed.csv",row.names=FALSE)
