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

time <- 250
mean <- 0
sd <- 0.05

mcmc_single = function(time = 100, mean = 0, sd = 0.05) {
    if (is.numeric(time) == TRUE) {
        raw_data = rnorm(time, mean = mean, sd = sd)

        # Data manipulation
        data = raw_data + 1
        plot_data = cumprod(data) # cumulative product, it will accumulate the product of all number in the series

        # Create 1 line
        plot(1:time, plot_data, type="l", xlab="Number of time units", ylab="Datapoints", main="MCMC Simulation")
    } else {
        plot_data = "data not generated"
    }
    return(list(originalData = raw_data,
                finalData = plot_data))
}

mcmc_single(250, 0, 0.05)
