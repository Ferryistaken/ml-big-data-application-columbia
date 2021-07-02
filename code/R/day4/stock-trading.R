rm(list = ls())
dev.off()
gc()

######### BEGINNING ##########


######### BIG PICTURE ########

# In math you can derive models ex: bernoulli, normal distribution
# from this we can derive expectation, variance, etc.
#
# Simulation example: Brownian motion
#   1. Randomly generated dots using normal distribution
#   2. Create animation to show how the dots move
#
# Real World Application:
#   1. Get stock data
#   2. Calculate returns
#   3. Create animation
#
# Research question: what is the difference between results of (*) and (**)?
#
# Answer:
#   1. Theoretical answer: you shouldn't be able to tell the difference => random walk (book: Random Walk Down Wall Street)
#   2. Real answer: it depends
#
# Bonus:
# Based on your understanding of answer 1, you can start interpreting this trading strategy
# called the momentum strategy

library(quantmod)


getSymbols(c("ARKK", "ARKQ", "RTX", "QCOM"),
           from = paste0("2011-", "01-", "01"))

for (i in stocks) {
    head(i, 2)
}