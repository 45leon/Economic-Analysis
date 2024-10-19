library(tidyverse)
library(dplyr)
source("Functions.R")
economic <- read_csv("/Users/leone/Downloads/economic_indicators_dataset_2010_2023.csv")
names(economic) = c("date", "country", "inflation_r", "gdp_growth_r", "unemployment_r", "interest_r", "stock_index_value")
plot("Germany", "date","inflation_r")



