rm(list = ls())
gc()

fakeData = data.frame(
    colA = rep(c("A", "B", "C"), 4),
    colB = rnorm(12),
    colC = c(rnorm(6, mean = 0, sd = 1), rnorm(6, mean = 10, sd = 1))
)