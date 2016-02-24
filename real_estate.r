# http://www.paragon-re.com/3_Recessions_2_Bubbles_and_a_Baby

# S&P/Case-Shiller CA-San Francisco Home Price Index
# https://research.stlouisfed.org/fred2/series/SFXRSA
getSymbols('SFXRSA',src='FRED')
chartSeries(SFXRSA, subset='last 25 years')

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

# S&P/Case-Shiller 20-City Composite Home Price Index
# https://research.stlouisfed.org/fred2/series/SPCS20RSA
getSymbols('SPCS20RSA',src='FRED')
chartSeries(SPCS20RSA, subset='last 50 years')



