From our testing, our linear regression had an accuracy of 70%, the golden cross RNN 65%, the Return RNN 99%(but keep in mind that this is on the returns, so the error compounds over time, leading to a big error), and the price RNN 86%, which is good enough to be used as a recommendor for stock picks.

What we can draw from this is that generally Neural Networks are better than linear regression for stock market problems, and that adding data doesn't always mean being more precise.

Altough these results don't look like they are very accurate, this percentages would be good enough to be used as an indicator when choosing what stocks to pick, since usually in the stock market you never buy or sell based on just one set of information, usually you wait for a few different signals, and our NN could be one of them.

But then again, "everybody is a genius in a bull market", since we chose to analyze the last 5-10 years of AAPL, we only trained our model on uptrends, so this model probably wouldn't work well with a sideways or bear market.
