# Day 3 - Visualization tools

rm(list = ls())
gc()


# Library quantmod - stock data into R
library(quantmod)


getSymbols("ARKK")
tail(ARKK)

summary(ARKK$ARKK.Close)


# Simple Plot
chartSeries(ARKK[1400:1676, ],
            theme = chartTheme("black"),
            name = "ARKK ETF",
            TA = c(
                addEMA(50, col = 'green'),
                addEMA(200, col = 'cyan'),
                addEMA(12, col = 'yellow')
            ))


# Interactive Plot

library(dygraphs)

newData = ARKK[, 1:4]

# %>% symbol is a connection to build upon previously defined objects
# using the package dygraph
dygraph(newData) %>% dyCandlestick() %>%
    dyLegend(show = "onmouseover", hideOnMouseOut = TRUE) %>%
    dyRangeSelector()

plot(ARKK$ARKK.Close)

ARKKReturn = quantmod::dailyReturn(ARKK$ARKK.Close[1000:1676])

# mean()  <- sample average
mean(ARKKReturn, breaks = 30)
# sd() <- standard deviation, sd()^2 = variance
sd(ARKKReturn)

par(mfrow = c(1, 2))

hist(ARKKReturn)

hist(rnorm(length(ARKKReturn), mean(ARKKReturn), sd(ARKKReturn)))

source("day2/hw-day2.R")

mcmcPlotLines(5, 360, mean(ARKKReturn), sd(ARKKReturn))

# Monte Carlo Tree Search (MCTS) <- 60% of AlphaGo Concept
# We learned about mcmc, now we want to update our mcmc with parameters
# computed from real data. This action finishes up ONE GENERATION of MCTS
# A standard MCTS can have many generations (exact number depends on the
# experiment)

# Code for one generation:

X = matrix(rnorm(360*100, 0, 0.001) + 1L, nrow = 360, ncol = 100)

# apply(X, margin, function). X = data that you want to apply the function to
# margin = which direction. row = 1, col = 2
# function = whatever function, without paranthesis you want to apply here
cumX = apply(X, 2, cumprod)
head(cumX)

matplot(cumX, type = "l")

head(cumX) # Generated Data
ARKKReturn # Target Data

# we will need to use which() and an error function that we will define later




