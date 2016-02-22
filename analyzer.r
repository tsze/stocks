library('quantmod')


getSymbols("AAPL")
chartSeries(AAPL, subset='last 5 years')
addBBands()

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

# Effective Federal Funds Rate
# https://research.stlouisfed.org/fred2/series/FF
getSymbols('FF',src='FRED')
chartSeries(FF, subset='last 25 years')


# Civilian Unemployment Rate
# https://research.stlouisfed.org/fred2/series/UNRATE
getSymbols('UNRATE',src='FRED')
chartSeries(UNRATE, subset='last 50 years')


# Real Gross Domestic Product
# https://research.stlouisfed.org/fred2/series/A191RL1Q225SBEA
getSymbols('A191RL1Q225SBEA',src='FRED')
chartSeries(A191RL1Q225SBEA, subset='last 15 years')

# Consumer Price Index for All Urban Consumers: All Items seasonally adjusted (OR Monthly, Not Seasonally Adjusted, CPIAUCNS)
# https://research.stlouisfed.org/fred2/series/CPIAUCSL
getSymbols('CPIAUCSL',src='FRED')
chartSeries(CPIAUCSL, subset='last 50 years')

getSymbols('CPIAUCNS',src='FRED')
chartSeries(CPIAUCNS, subset='last 10 years')

# Federal Debt: Total Public Debt as Percent of Gross Domestic Product 
# https://research.stlouisfed.org/fred2/series/GFDEGDQ188S
getSymbols('GFDEGDQ188S',src='FRED')
chartSeries(GFDEGDQ188S, subset='last 100 years')

# Central Bank Assets for Euro Area (11-19 Countries)
# https://research.stlouisfed.org/fred2/series/ECBASSETS
getSymbols('ECBASSETS',src='FRED')
chartSeries(ECBASSETS, subset='last 50 years')


NASDAQ 100 Index
https://research.stlouisfed.org/fred2/series/NASDAQ100

NASDAQ Composite Index
https://research.stlouisfed.org/fred2/series/NASDAQCOM


Median Sales Price of Existing Homes
https://research.stlouisfed.org/fred2/series/HOSMEDUSM052N

Existing Home Sales
https://research.stlouisfed.org/fred2/series/EXHOSLUSM495S

Existing Home Sales: Months Supply
https://research.stlouisfed.org/fred2/series/HOSSUPUSM673N

Median Sales Price of Existing Homes in West Census Region
https://research.stlouisfed.org/fred2/series/HOSMEDUSWTM052N

Mean Sales Price of Existing Homes in West Census Region
https://research.stlouisfed.org/fred2/series/HOSAVGUSWTM052N

For drug industry see here:
https://research.stlouisfed.org/fred2/search?st=drug

# San Francisco Tech Pulse
# https://research.stlouisfed.org/fred2/series/SFTPINDM114SFRBSF
getSymbols('SFTPINDM114SFRBSF',src='FRED')
chartSeries(SFTPINDM114SFRBSF, subset='last 25 years')

# Industrial Production Index
# https://research.stlouisfed.org/fred2/series/INDPRO
getSymbols('INDPRO',src='FRED')
chartSeries(INDPRO, subset='last 25 years')


## Method #2
setDefaults(getSymbols,src='FRED')
# OR
setSymbolLookup(CPIAUCNS='FRED')

getSymbols('CPIAUCNS')







