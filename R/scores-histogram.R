# Code fragment for plotting histogram for quiz and exam scores
# based on Canvas export file

library(ggplot2)
library(dplyr)

fn <- "../private/quizzes/quiz-03/Reports/Canvas Report - Exam 23661 - Section 001.csv"
n_poss <- 10 # Quiz

readr::read_csv(fn, show_col_types = FALSE) |>
  select(FA26_QUIZ_3) |>
  mutate(passing = FA26_QUIZ_3 >= .7*n_poss) |>
  ggplot() +
  aes(x = FA26_QUIZ_3, fill = passing) +
  geom_bar() +
  theme_minimal() +
  theme(legend.position = "none") +
  xlab("")