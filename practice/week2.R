library(tidyverse)
library(tidycensus)

pa_income <- get_acs(
  geography = "county",
  variables = "B19013_001",
  state = "PA",
  year = 2023,
  survey = "acs5"
)

dim(pa_income) # 67 5
glimpse(pa_income) # Rows 67 Col 5
head(pa_income)
# All 67 PA counties are accounted for

pa_income$GEOID
as.numeric("01001") # strips leading zero

filter(pa_income, estimate > 60000)

select(pa_income, NAME, estimate, moe)




