rm(list = ls())
gc()

# install.packages("animation", repos='http://cran.us.r-project.org')
library(animation)


brownianMotion = function(n = 5, steps = 100, xlim = c(-10, 10), ylim = c(-20, 20)) {
    x = rnorm(n)
    y = rnorm(n)
    for (i in 1:steps) {
        plot(x, y, xlim = xlim, ylim = ylim)
        text(x, y)
        x = x + rnorm(n)
        y = y + rnorm(n)
        ani.pause()
    }
}



brownianMotion()


# Can I keep track of eac hof team?
# Start with one to be red, if he gets into a range of the red dot, gets infected
# and becomes red, stop the simulation when all dots are red.