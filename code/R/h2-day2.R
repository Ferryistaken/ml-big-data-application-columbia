# Homework
# Monte Carlo Simulation / Monte Carlo Markov Chain (MCMC)
# Monte Carlo is the name of the simulation, Markov Chain is the name of the mathematical model

# normal random variable (10 numbers with average 0 and standard dev 1)
rnorm(10, mean = 0, sd = 1)

# Problem Statement:
# Create N paths of data that are drawn from normal random variables, and plot the N paths in the same plots.
# Paths refer to the lines in the plot
# You should expect to see N plots start from one number and fan out towards the right.

# Hint (i): using rnorm() function
# Hint (ii): start from the same dot

# Thought process:
#
# What is the data I need? Hint: use rnorm to generate data
# Given the data, what do you want to do with it?
#

paths <- 5

for (i in 1:paths) {
    print(i)
}