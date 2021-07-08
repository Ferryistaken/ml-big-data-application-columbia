rm(list = ls())
gc()

library(quantmod)
library(TTR)
library(dygraphs)

getSymbols("SPY",
           from  = "2015-01-01")

ma50 = SMA(SPY$SPY.Close, n = 50)
ma200 = SMA(SPY$SPY.Close, n = 200)

plot(SPY$SPY.Close)
lines(ma50, col = "blue")
lines(ma200, col = "red")