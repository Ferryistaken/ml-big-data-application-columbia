# Think with data
# How to visualize Pi?
# Pi = 3.131592653

# runif(n = sample size, min = 0, max = 1) -> returns a vector with lenght of sample size.

# Divide the plot in a 2 by 3 graph
par(mfrow=c(2, 3))

# Experiment
for (n in c(10, 100, 200, 500, 1000, 10000)) {
    # Data:
    x = runif(n) # draw N samples from uniform random variable / uniform distrubition
    y = runif(n) # same here
    d = sqrt(x^2 + y^2) # compute square root of sume of squares of x and y
    
    # Rejection Region:
    label = ifelse(d <= 1, 1, 0) # create label for coloring purposes
   
    # total number of points = r^2, number of red points = (pi x r^2)/4
    # 
    
    pi_hat = 4*plyr::count(label)[2,2]/n # recover pi
    
    # Plot:
    plot(x, y, col = label+1, main = paste0("Est: value of Pi = ", pi_hat))
}