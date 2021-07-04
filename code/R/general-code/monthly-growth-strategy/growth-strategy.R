rm(list = ls())
gc()

library(quantmod)
library(dplyr)

########### CHOOSE STOCKS AND TIME FRAME ######
stockArray <- c("AAPL", "MSFT", "RTX", "GOOGL", "V", "AMZN", "NVDA")
startDate <- paste0("2010-", "01-", "01")

########### GET STOCK DATA ####################
stock <- lapply(as.list(stockArray), function(x) {
    tmp <- try(getSymbols(x, from=startDate,   auto.assign= FALSE))
    if(!inherits(tmp, 'try-error'))
        tmp})

########## MANIPULATE DATA ###################
allData <- as.data.frame(stock)

closeData = select(allData, contains("Close"))