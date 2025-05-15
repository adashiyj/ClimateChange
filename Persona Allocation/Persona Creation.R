library(tidyverse)

rm(list = ls())
gc()

# Personas simulations

set.seed(5)

## Gender ----
gender <- c("male", "female")
gender_frequency <- c(400, 404)
gender_vector <- rep(gender, times = gender_frequency)
gender_vector <- sample(gender_vector, size = 804)

## Education ----
education <- c("primary", "senior", "high")
education_frequency <- c(211, 299, 294)
education_vector <- rep(education, times = education_frequency)
education_vector <- sample(education_vector, size = 804)

## Age ----
age <- c("<20", "21-40", "41-65", "66-80", "81+")
age_frequency <- c(169, 209, 265, 121, 40)
age_vector <- rep(age, times = age_frequency)
age_vector <- sample(age_vector, size = 804)

## Ethnic background ----
ethnic <- c("INBPN", "INOPA", "INBPA", "ONBPA", "ONOPA", "ONBPN")
ethnic_frequency <- c(600, 51, 41, 101, 5, 6)
ethnic_vector <- rep(ethnic, times = ethnic_frequency)
ethnic_vector <- sample(ethnic_vector, size = 804)

## Conditions and researchers ----
conditions <- 1:6
condition_vector <- sample(rep(conditions, length.out = 804))

researchers <- c("Ada", "Fleur", "Luke", "Francesco")
researcher_vector <- sample(rep(researchers, length.out = 804))

## Table with ID column ----
personas <- tibble(
  ID = 1:804,
  age = age_vector,
  gender = gender_vector,
  ethnicity = ethnic_vector,
  education = education_vector,
  condition = condition_vector,
  researcher = researcher_vector
)

View(personas)


write_csv(personas, "personas.csv")

