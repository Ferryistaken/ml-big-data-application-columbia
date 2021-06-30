# Day 3 - Visualization tools

rm(list = ls())
gc()


# Library quantmod - stock data into R
library(quantmod)


getSymbols("ARKK")
tail(ARKK)

summary(ARKK$ARKK.Close)


chartSeries(ARKK[1400:1676, ],
            theme = chartTheme("black"),
            name = "ARKK ETF",
            TA = c(
                addEMA(50, col = 'green'),
                addEMA(200, col = 'cyan'),
                addEMA(12, col = 'yellow')
            ))
