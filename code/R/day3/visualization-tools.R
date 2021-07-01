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

#plot(ARKK$ARKK.Close)

ARKKReturn = quantmod::dailyReturn(ARKK$ARKK.Close[1000:1676])

# mean()  <- sample average
mean(ARKKReturn, breaks = 30)
# sd() <- standard deviation, sd()^2 = variance
sd(ARKKReturn)

#par(mfrow = c(1, 2))

#hist(ARKKReturn)

#hist(rnorm(length(ARKKReturn), mean(ARKKReturn), sd(ARKKReturn)))

#source("day2/hw-day2.R")

#mcmcPlotLines(5, 360, mean(ARKKReturn), sd(ARKKReturn))

# Monte Carlo Tree Search (MCTS) <- 60% of AlphaGo Concept
# We learned about mcmc, now we want to update our mcmc with parameters
# computed from real data. This action finishes up ONE GENERATION of MCTS
# A standard MCTS can have many generations (exact number depends on the
# experiment)

X = matrix(rnorm(360*100, 0, 0.001) + 1L, nrow = 360, ncol = 100)

# apply(X, margin, function). X = data that you want to apply the function to
# margin = which direction. row = 1, col = 2
# function = whatever function, without paranthesis you want to apply here
cumX = apply(X, 2, cumprod)
head(cumX)

#matplot(cumX, type = "l")

head(cumX) # Generated Data
ARKKReturn # Target Data

# we will need to use which() and an error function that we will define later


# Code for one generation:

d = 1 # tracks the index of generations
mu = 0 # mean
s = 0.005 # sd

nSim = 10

nDays = 20

data = matrix(rnorm(nSim*nDays, mean = mu, sd = s), nrow = nDays)

data[1, ] = 0L # Enforce the first to be 0


# return the price from returns
for (N in seq(10, nDays, 10)) {
    selectedData = data[1:N, ]
    cumRet = selectedData + 1L # 1L so that it's for each element in the matrix
    cumRetPath = apply(cumRet, 2, cumprod)
    #plot(
    #    x = 1:N,
    #    y = cumRetPath[,1],
    #    main = paste0("Simulated Path for $1 ", "\nMean = ", mu," SD = ", s),
    #    type = "l",
    #    col = 1,
    #    xlim = c(1, nDays),
    #    ylim = c(min(cumRetPath), max(cumRetPath)))
    
    #for (i in 2:nSim) {
    #    lines(x = 1:N, y = cumRetPath[, i], type = "l", col = i)
    #}
}


# Tree search current gen for the candidate with the least errors
# We want the candidate with the least mistakes

ARKKReturn = quantmod::dailyReturn(ARKK$ARKK.Close)

k = 1
ARKKReturnTemp = ARKKReturn[k:(k + nDays - 1)] # segment that I want to analyze

# Comparison

# Error / Loss function <- this is the standard that the code refers to
# when I want to tell my machine that it's right or wrong

# Mean Square Error (MSE) / Root Mean Square Error (RMSE)
# MSE = sum((vector1 - vector2)^2)/n
# RMSE = sqrt(sum((vector1 - vector2)^2)/n)

selectedData
j = 1
selectedData[, j] # this is the jth colums
mean((ARKKReturnTemp - selectedData[, j])^2)

# Mistakes made for each column
mistakeVectors = sapply(1:10, function(j) {mean((ARKKReturnTemp - selectedData[, j])^2)})

leastError = min(mistakeVectors)

bestIndex = which(mistakeVectors == leastError)
paste0("Index: ", bestIndex, ", Error: ", leastError)


#plot(selectedData[, bestIndex], type = "l")























