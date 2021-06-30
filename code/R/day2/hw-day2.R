# Alessandro Ferrari <af3218@columbia.edu>
#
# Homework
# Monte Carlo Simulation / Monte Carlo Markov Chain (MCMC)
# Monte Carlo is the name of the simulation, Markov Chain is the name of the mathematical model

# normal random variable (10 numbers with average 0 and standard dev 1)
#rnorm(10, mean = 0, sd = 1)

# Problem Statement:
# Create N paths of data that are drawn from normal random variables, and plot the N paths in the same plots.
# Paths refer to the lines in the plot
# You should expect to see N plots start from one number and fan out towards the right.

# Bonus: provide 1 paragraph of intuition: how this can help you interpret the stock market. Think about the stock returns, stock price and volatility

# Hint (i): using rnorm() function
# Hint (ii): start from the same dot
# Hint (iii): 

# Thought process:
#
# What is the data I need? Hint: use rnorm to generate data | trick: use rnorm output as original data and then add 1 to represent the growth from previous data points assuming starting with 1
# Given the data, what do I need to do to create the plot? Hint: use the plot() function of matplot()
# Good visualization: colors, type of plot, labels, titles
#

#
#
# FOR BONUS PART OF HW SEE: https://github.com/Ferryistaken/ml-big-data-application-columbia/blob/master/notes/Day2.md#how-this-might-help-us-in-the-stock-market
#
#

# this is for ease of use
rm(list = ls())
gc()


paths <- 20
time <- 500
mean <- 0
sd <- 0.03

# This works better with 0.01 < sd < 0.09, but works best with something like 0.03 or 0.05
upperGraphLimit <- sd * 150

mcmcSingleData = function(time = 100, mean = 0, sd = 0.05) {
    if (is.numeric(time) && is.numeric(mean) && is.numeric(sd)) {
        rawData = rnorm(time, mean = mean, sd = sd)

        # Data manipulation
        data = rawData + 1
        plotData = cumprod(data) # cumulative product, it will accumulate the product of all number in the series
    } else {
        # crash on invalid input
        stop("Invalid input")
    }
    return(list(originalData = rawData,
                finalData = plotData))
}

mcmcPlotLines = function(paths, time, mean, sd) {
    # The first one has to be plot() or the graph won't be created, the next ones can be lines()
    plot(1:time, mcmcSingleData(time, mean, sd)$finalData, type = "l", col = 1, xlab = "Number of time units", ylab = "Values of Datapoints", main = "MCMC Simulation", sub = "Alessandro Ferrari", xlim = c(0, (time)), ylim = c(0, upperGraphLimit))
    for (i in 1:(paths - 1)) {
        lines(1:time, mcmcSingleData(time, mean, sd)$finalData, type = "l", col = i + 1)
    }
} 

mcmcPlotLines(paths, time, mean, sd)