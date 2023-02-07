library(dplyr)
library(forcats)
data <- readr::read_csv("nina-qualtrics/socio_thesis_survey.csv")

data <- data[-c(1:2),]

data <- data %>% 
  mutate(across(c(13:16,18:22,24:28,30:34,36), as.factor))
  
recode <- data %>% 
  mutate_at(c("Q18_1", "Q18_3", "Q15_1", "Q15_2", "Q12_2"),
            funs(recode(.,
                        "1" = "6",
                        "2" = "5",
                        "3" = "4",
                        "4" = "3",
                        "5" = "2",
                        "6" = "1")))

# there's gotta be a better way to reorder
# but in the meantime:
reorder <- recode[,c(1:10,18,13:16,31:34,36,25:28,17,30,35,19:22,24,29,23,11,12)]
