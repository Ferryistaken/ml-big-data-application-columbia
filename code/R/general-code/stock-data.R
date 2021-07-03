# Library quantmod - stock data into R
library(quantmod)
library(dygraphs)

rm(list = ls())
gc()

ticker <- "ARKK"

stock <- getSymbols(ticker,
                    auto.assign = FALSE,
                    from = paste0("2020-", "01-", "01"))
tail(stock)

Returns <- quantmod::dailyReturn(stock)

sum(Returns)

chartSeries(Returns,
            name = paste0("Daily returns for ", ticker),
            layout = NULL,
            theme = chartTheme("black"),
            )

PriceStartingFromOne <- cumprod(Returns$daily.returns + 1)

chartSeries(PriceStartingFromOne,
            name = paste0("Time series from ", ticker, ", repositioned to 1$"),
            layout = NULL,
            theme = chartTheme("black"),
            TA = "addEMA(50, col = 'yellow');addEMA(200, col = 'blue')",
)

volume = stock[, 5]

# chartSeries(volume,
#             name = paste0("Daily volume for", ticker),
#             layout = NULL,
# )

plot(volume,
     main = paste0("Daily volume for ", ticker),
     col = 'orange')