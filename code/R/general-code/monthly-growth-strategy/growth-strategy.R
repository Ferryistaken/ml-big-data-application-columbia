rm(list = ls())
gc()

library(quantmod)
library(dplyr)
library(reshape2)
library(plotly)
library(dygraphs)

########### CHOOSE STOCKS AND TIME FRAME ######
stockArray <- c("AAPL", "MSFT", "RTX", "GOOGL", "V", "AMZN", "NVDA", "KO")
startDate <- paste0("2010-", "01-", "01")

########### GET STOCK DATA ####################
stock <- lapply(as.list(stockArray), function(x) {
    tmp <- try(getSymbols(x, from=startDate,   auto.assign= FALSE))
    if(!inherits(tmp, 'try-error'))
        tmp})

########## MANIPULATE DATA ###################
allData <- as.data.frame(stock)

closeData <- select(allData, contains("Close"))

closeDataTime <- as.xts(closeData)

returnsList <- apply(closeDataTime, 2, quantmod::Delt) + 1
returnsList = returnsList[-1,]

rownames(applied) = rownames(closeData)[-1]

applied <- apply(returnsList, 2, cumprod)

dygraph(applied)