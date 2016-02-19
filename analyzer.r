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











