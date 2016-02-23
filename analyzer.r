library('quantmod')

#need to be added:
  - gold (https://research.stlouisfed.org/fred2/search?st=gold=)
  - oil
  - corn (https://research.stlouisfed.org/fred2/search?st=corn)
  - other metals
  - The Inflation Rate Compared to Short-Term Interest Rates
  - Long-Term Growth in National Productivity
  - Trends in the Balance-of-Payment and International-Debt Levels
  - Trends in the Domestic Budget Balance and Levels of Public Debt
  - Government Spending as a Percentage of Gross Domestic Product (GDP)
  - Actual GDP Growth
  - Consumer Sentiment
  - The Savings Rate


getSymbols("AAPL")
chartSeries(AAPL, subset='last 5 years')
addBBands()
"Market Cap (Real-time)"

#####################################
# http://allthingsr.blogspot.com/2012/10/pull-yahoo-finance-key-statistics.html
## get specific details on multiple stocks
# type  yahooQF to see all possible metrics
what_metrics <- yahooQF(c("Price/Sales", 
                          "P/E Ratio",
                          "Price/EPS Estimate Next Year",
                          "PEG Ratio",
                          "Dividend Yield", 
                          "Market Capitalization"))
tickers <- c("AAPL","TSLA","ROG.VX","GOOG")
#Add tickers as the first column and remove the first column which had date stamps
metrics <- data.frame(Symbol=tickers, metrics[,2:length(metrics)]) 
metrics <- getQuote(paste(tickers, sep="", collapse=";"), what=what_metrics)
colnames(metrics) <- c("Symbol", "Revenue Multiple", "Earnings Multiple", 
                       "Earnings Multiple (Forward)", "Price-to-Earnings-Growth", "Div Yield", "Market Cap")
#####################################


getSymbols("TSLA")
chartSeries(TSLA, subset='last 5 years')
addBBands()

getSymbols("ROG.VX")
chartSeries(ROG.VX, subset='last 5 years')
addBBands()

getSymbols("GOOG")
chartSeries(GOOG, subset='last 5 years')
addBBands()

getSymbols("YHOO")
chartSeries(YHOO, subset='last 5 years')
addBBands()

getSymbols("FB")
chartSeries(FB, subset='last 5 years')
addBBands()


## Source: FED
## Method #1


# Gold Fixing Price 10:30 A.M. (London time) in London Bullion Market, based in U.S. Dollars
# https://research.stlouisfed.org/fred2/series/GOLDAMGBD228NLBM
getSymbols('GOLDAMGBD228NLBM',src='FRED')
chartSeries(GOLDAMGBD228NLBM, subset='last 100 years')

# Crude Oil Prices: West Texas Intermediate (WTI) - Cushing, Oklahoma
# https://research.stlouisfed.org/fred2/series/DCOILWTICO
getSymbols('DCOILWTICO',src='FRED')
chartSeries(DCOILWTICO, subset='last 50 years')


# Crude Oil Prices: Brent - Europe
# https://research.stlouisfed.org/fred2/series/DCOILBRENTEU
getSymbols('DCOILBRENTEU',src='FRED')
chartSeries(DCOILBRENTEU, subset='last 50 years')


# Gross Domestic Product
# https://research.stlouisfed.org/fred2/series/GDP
getSymbols('GDP',src='FRED')
chartSeries(GDP, subset='last 50 years')

# Real Gross Domestic Product
# https://research.stlouisfed.org/fred2/series/A191RL1Q225SBEA
getSymbols('A191RL1Q225SBEA',src='FRED')
chartSeries(A191RL1Q225SBEA, subset='last 50 years')


# Trimmed Mean PCE Inflation Rate
# https://research.stlouisfed.org/fred2/series/PCETRIM12M159SFRBDAL
getSymbols('PCETRIM12M159SFRBDAL',src='FRED')
chartSeries(PCETRIM12M159SFRBDAL, subset='last 50 years')

# Interest Rate Spreads (TED Spread, i.e. USD vs. Libor)
# https://research.stlouisfed.org/fred2/series/TEDRATE
getSymbols('TEDRATE',src='FRED')
chartSeries(TEDRATE, subset='last 50 years')


# Effective Federal Funds Rate
# https://research.stlouisfed.org/fred2/series/FF
getSymbols('FF',src='FRED')
chartSeries(FF, subset='last 50 years')


# Civilian Unemployment Rate
# https://research.stlouisfed.org/fred2/series/UNRATE
getSymbols('UNRATE',src='FRED')
chartSeries(UNRATE, subset='last 50 years')


# Real Gross Domestic Product
# https://research.stlouisfed.org/fred2/series/A191RL1Q225SBEA
getSymbols('A191RL1Q225SBEA',src='FRED')
chartSeries(A191RL1Q225SBEA, subset='last 50 years')

# Consumer Price Index for All Urban Consumers: All Items seasonally adjusted (OR Monthly, Not Seasonally Adjusted, CPIAUCNS)
# https://research.stlouisfed.org/fred2/series/CPIAUCSL
getSymbols('CPIAUCSL',src='FRED')
chartSeries(CPIAUCSL, subset='last 50 years')

getSymbols('CPIAUCNS',src='FRED')
chartSeries(CPIAUCNS, subset='last 50 years')

# Federal Debt: Total Public Debt as Percent of Gross Domestic Product 
# https://research.stlouisfed.org/fred2/series/GFDEGDQ188S
getSymbols('GFDEGDQ188S',src='FRED')
chartSeries(GFDEGDQ188S, subset='last 100 years')

# Federal Debt: Total Public Debt
# https://research.stlouisfed.org/fred2/series/GFDEBTN
getSymbols('GFDEBTN',src='FRED')
chartSeries(GFDEBTN, subset='last 100 years')


# Central Bank Assets for Euro Area (11-19 Countries)
# https://research.stlouisfed.org/fred2/series/ECBASSETS
getSymbols('ECBASSETS',src='FRED')
chartSeries(ECBASSETS, subset='last 50 years')


# NASDAQ 100 Index
# https://research.stlouisfed.org/fred2/series/NASDAQ100
getSymbols('NASDAQ100',src='FRED')
chartSeries(NASDAQ100, subset='last 50 years')

# NASDAQ Composite Index
# https://research.stlouisfed.org/fred2/series/NASDAQCOM
getSymbols('NASDAQCOM',src='FRED')
chartSeries(NASDAQCOM, subset='last 50 years')


# Median Sales Price of Existing Homes
# https://research.stlouisfed.org/fred2/series/HOSMEDUSM052N
getSymbols('HOSMEDUSM052N',src='FRED')
chartSeries(HOSMEDUSM052N, subset='last 50 years')

# Existing Home Sales
# https://research.stlouisfed.org/fred2/series/EXHOSLUSM495S
getSymbols('EXHOSLUSM495S',src='FRED')
chartSeries(EXHOSLUSM495S, subset='last 50 years')

# Existing Home Sales: Months Supply
# https://research.stlouisfed.org/fred2/series/HOSSUPUSM673N
getSymbols('HOSSUPUSM673N',src='FRED')
chartSeries(HOSSUPUSM673N, subset='last 50 years')

# Median Sales Price of Existing Homes in West Census Region
# https://research.stlouisfed.org/fred2/series/HOSMEDUSWTM052N
getSymbols('HOSMEDUSWTM052N',src='FRED')
chartSeries(HOSMEDUSWTM052N, subset='last 50 years')

# Mean Sales Price of Existing Homes in West Census Region
# https://research.stlouisfed.org/fred2/series/HOSAVGUSWTM052N
getSymbols('HOSAVGUSWTM052N',src='FRED')
chartSeries(HOSAVGUSWTM052N, subset='last 50 years')

# For drug industry see here:
# https://research.stlouisfed.org/fred2/search?st=drug

# Real Median Household Income in the United States
# https://research.stlouisfed.org/fred2/series/MEHOINUSA672N
getSymbols('MEHOINUSA672N',src='FRED')
chartSeries(MEHOINUSA672N, subset='last 50 years')


# San Francisco Tech Pulse
# https://research.stlouisfed.org/fred2/series/SFTPINDM114SFRBSF
getSymbols('SFTPINDM114SFRBSF',src='FRED')
chartSeries(SFTPINDM114SFRBSF, subset='last 50 years')

# Industrial Production Index
# https://research.stlouisfed.org/fred2/series/INDPRO
getSymbols('INDPRO',src='FRED')
chartSeries(INDPRO, subset='last 50 years')



#Alternative

## Method #2
setDefaults(getSymbols,src='FRED')
# OR
setSymbolLookup(CPIAUCNS='FRED')

getSymbols('CPIAUCNS')







