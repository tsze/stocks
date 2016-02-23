library("stockPortfolio")

#===> build four models <===#
data(stock99)
data(stock94Info)
non <- stockModel(stock99, drop=25, model='none', industry=stock94Info$industry)
sim <- stockModel(stock99, model='SIM', industry=stock94Info$industry, index=25)
ccm <- stockModel(stock99, drop=25, model='CCM', industry=stock94Info$industry)
mgm <- stockModel(stock99, drop=25, model='MGM', industry=stock94Info$industry)

#===> build optimal portfolios <===#
opNon <- optimalPort(non)
opSim <- optimalPort(sim)
opCcm <- optimalPort(ccm)
opMgm <- optimalPort(mgm)

#===> test portfolios on 2004-9 <===#
data(stock04)
tpNon <- testPort(stock04, opNon)
tpSim <- testPort(stock04, opSim)
tpCcm <- testPort(stock04, opCcm)
tpMgm <- testPort(stock04, opMgm)

#===> compare performances <===#
plot(tpNon)
lines(tpSim, col=2, lty=2)
lines(tpCcm, col=3, lty=3)
lines(tpMgm, col=4, lty=4)
legend('topleft', col=1:4, lty=1:4, legend=c('none', 'SIM', 'CCM', 'MGM'))
