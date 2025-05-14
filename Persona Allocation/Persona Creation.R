library(tidyverse)

set.seed(5)

# Gender ----
gender <- c("male", "female")

gender_frequency <- c(66, 68)

gender_vector <- rep(gender, times = gender_frequency)

gender_vector <- sample(gender_vector, size = 134)


# Education ----
education <- c("primary", "senior", "high")

education_frequency <- c(35, 50, 49)

education_vector <- rep(education, times = education_frequency)

education_vector <- sample(education_vector, size = 134)

# Age ----

age <- c("<20", "20-40", "40-65", "65-80", "80+")

age_frequency <- c(29, 34, 44, 21, 6)

age_vector <- rep(age, times = age_frequency)

age_vector <- sample(age_vector, size = 134)

# Ethnic background ----

ethnic <- c("INBPN", "INOPA", "INBPA", "ONBPA", "ONOPA", "ONBPN")

ethnic_frequency <- c(100, 9, 6, 16, 1, 2)

ethnic_vector <- rep(ethnic, times = ethnic_frequency)

ethnic_vector <- sample(ethnic_vector, size = 134)


# Table for coniditions ----

personas <- tibble(
  age = age_vector, 
  gender = gender_vector, 
  ethnicity = ethnic_vector, 
  education = education_vector
)

view(personas)

personas |> 
  count(age)


write_csv(personas, "personas.csv")

?write_csv
