library(tidyverse)
library(dplyr)
source("Functions.R")
economic <- read_csv("E:/git_repo/R_Projects/Economic_Analysis/Data/economic_indicators_dataset_2010_2023.csv")
names(economic) = c("date", "country", "inflation_r", "gdp_growth_r", "unemployment_r", "interest_r", "stock_index_value")
plot("Germany", "date","inflation_r")
european_countries <- c("Germany", "France", "UK", "Italy", "Spain", "Netherlands", "Belgium", "Sweden", "Austria")
african_countries <- c("Nigeria", "South Africa", "Kenya", "Egypt", "Morocco", "Algeria")
economic_catagories <- economic %>% 
  mutate(
    region = case_when(
      country %in% european_countries ~ "Europe",
      country %in% african_countries ~ "Africa",
      TRUE ~ NA_character_ 
    )
  )
economic_catagories <- economic_catagories %>% 
  filter(!is.na(region))

write_csv(economic_catagories, "european_african_countries.csv")

