rm(list = ls())
gc()

library(quantmod)
library(dplyr)
library(reshape2)
library(plotly)
library(dygraphs)
library(xts)

########### VARIABLES ########################
nStocks <- 4 # stocks to pick each time frame
analysisTimeFrame <- 20 # 1 month in trading days
startYear <- "2015"
startMonth <- "01"
startDay <- "01"

########### CHOOSE STOCKS AND TIME FRAME ######
stockArray <- c("AAPL", "MSFT", "RTX", "GOOGL", "V", "AMZN", "NVDA", "KO", "STT", "ROK", "BA", "GWW", "TJX", "WBA", "MCD", "QCOM", "AMD")
startDate <- paste0(startYear, "-", startMonth, "-", startDay)

########### GET STOCK DATA ####################
stock <- lapply(as.list(stockArray), function(x) {
    tmp <- try(getSymbols(x, from=startDate,   auto.assign = FALSE))
    if(!inherits(tmp, 'try-error'))
        tmp})

########## MANIPULATE DATA ###################
allData <- as.data.frame(stock)

closeData <- select(allData, contains("Close"))

rm(allData)

closeDataTime <- as.xts(closeData)

returnsList <- apply(closeDataTime, 2, quantmod::Delt) + 1
returnsList = returnsList[-1,]

applied <- apply(returnsList, 2, cumprod)
rownames(applied) = rownames(closeData)[-1]

applied <- as.xts(applied)

dygraph(applied,
        main = paste0("Returns for ", paste(stockArray, collapse = ', '))
        ) %>%
    dyLegend(show = "follow") %>%
    dyEvent("2014-01-01", "WSB", labelLoc = "bottom")

investment <- data.frame(row.names = rownames(applied))

for (i in 1:nrow(applied)) {
    
}
