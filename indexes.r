# NASDAQ 100 Index
# https://research.stlouisfed.org/fred2/series/NASDAQ100
getSymbols('NASDAQ100',src='FRED')
chartSeries(NASDAQ100, subset='last 50 years')

# NASDAQ Composite Index
# https://research.stlouisfed.org/fred2/series/NASDAQCOM
getSymbols('NASDAQCOM',src='FRED')
chartSeries(NASDAQCOM, subset='last 50 years')

# San Francisco Tech Pulse
# https://research.stlouisfed.org/fred2/series/SFTPINDM114SFRBSF
getSymbols('SFTPINDM114SFRBSF',src='FRED')
chartSeries(SFTPINDM114SFRBSF, subset='last 50 years')

# Industrial Production Index
# https://research.stlouisfed.org/fred2/series/INDPRO
getSymbols('INDPRO',src='FRED')
chartSeries(INDPRO, subset='last 50 years')


# Dow Jones Industrial average
#getSymbols("^DJI", from="2011-09-01", to='2011-11-01')
#dji = Cl(DJI["/2011"]) # only the close price
# S&P 500(INDEXSP:.INX)

# Fetch all symbols from stock market with details on stock
library(TTR)
x <- stockSymbols()
head(x)

# to get any stock, replace symbol from stock symbols list
getSymbols("ZNH")
chartSeries(ZNH, subset='last 5 years')
addBBands()

# list of industries
unique(x$Industry)


# Fetch U.S. symbols from the internet for stock exchange and calculate means, variability etc
library(quantmod)
library(TTR)
nyseSymbols <- stockSymbols("NYSE")
symbols <- nyseSymbols$Symbol
tickers <- head(symbols)
prices <- do.call(merge, lapply(tickers, function(x) Cl(get(x))))
TTR_fn <- function(x)  SMA(x, n=20)
sma.prices  <- zoo(apply(prices, 2, TTR_fn), order.by=index(TTR_fn(prices[,1]) ) )
#colnames(smacheck) <- symbols
vol <- do.call(merge,eapply(e,function (x) volatility(x, n = 10, calc = "close", N = 260, mean0 = FALSE))) # volatility










