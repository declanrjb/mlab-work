library(readxl)
library(readr)
library(dplyr)
library(tidyr)

setwd("~/R/mLab/fathimath")
import_export <- read_excel("import_export data.xlsx")
flows <- read_excel("inward_fdi_flows.xlsx")
ofdi_reserves <- read_csv("ofdi_reserves.csv")

# first pivoting the import/export data
im_ex_long <- import_export %>% 
  mutate(across(c(5:35), as.numeric)) %>% 
  pivot_longer(cols = c(5:35),
               names_to = "year",
               values_to = "percent_GDP") %>% 
  mutate(year = as.numeric(substr(im_ex_long$year, 1, 4))) %>% 
  rename("country" = "Country Name")

# now joining import/export data with ofdi .csv
join <- full_join(im_ex_long, ofdi_reserves,
                  by = c("year", "country"))

# cleaning the flows datafile
names <- as.character(flows[4,])
colnames(flows) <- names
flows <- flows[-c(1:5),]

flows <- rename(flows,
                "country" = "YEAR")

flows <- flows %>% 
  pivot_longer(cols = c(2:53),
               names_to = "year",
               values_to = "inward flow (in million USD)") %>% 
  mutate(year = as.numeric(year))

# joining all of the data
join <- full_join(flows, join,
                  by = c("year", "country"))

# optionally removing years 1970-1989
# since there isn't import/export or ofdi data for those years
join <- join %>% filter(year %in% c(1990:2021))

