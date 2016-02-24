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