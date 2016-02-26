#######################################################################
##Alternate method to download all key stats using XML and x_path - PREFERRED WAY
#######################################################################

#setwd("C:/Users/i827456/Pictures/Blog/Oct-25")
# http://stackoverflow.com/questions/34439281/how-to-download-data-from-web-need-to-skip-and-move-to-next-item-if-data-doesn
require(XML)
require(plyr)
getKeyStats_xpath <- function(symbol) {
  yahoo.URL <- "http://finance.yahoo.com/q/ks?s="
  html_text <- htmlParse(paste(yahoo.URL, symbol, sep = ""), encoding="UTF-8")
  
  #search for <td> nodes anywhere that have class 'yfnc_tablehead1'
  nodes <- getNodeSet(html_text, "/*//td[@class='yfnc_tablehead1']")
  
  if(length(nodes) > 0 ) {
    measures <- sapply(nodes, xmlValue)
    
    #Clean up the column name
    measures <- gsub(" *[0-9]*:", "", gsub(" \\(.*?\\)[0-9]*:","", measures))   
    
    #Remove dups
    dups <- which(duplicated(measures))
    #print(dups) 
    for(i in 1:length(dups)) 
      measures[dups[i]] = paste(measures[dups[i]], i, sep=" ")
    
    #use siblings function to get value
    values <- sapply(nodes, function(x)  xmlValue(getSibling(x)))
    
    df <- data.frame(t(values))
    colnames(df) <- measures
    return(df)
    
  } else {
    cat("Could not find",symbol,"\n")
    return(data.frame(NA))
  }
}

# get all tickers from a stock market
#tickers <- c("AAPL","TSLA","ROG.VX","GOOG")
library(TTR)
x <- stockSymbols()
tickers <- c(x$Symbol)
stats <- ldply(tickers, getKeyStats_xpath)
#rownames(stats) <- tickers  # next row should solve the error for this code, but unverified yet
rownames(stats) = make.names(tickers, unique=TRUE)
#write.csv(t(stats), "FinancialStats_updated.csv",row.names=TRUE)  

# keep only stats with no NA
stats.clean <- stats[,complete.cases(stats)]
na.omit(stats)


stats[stats=="<NA>"]<-NA

stopifnot(complete.cases(stats) != is.na(stats))
# filter for high P/E ratio



stats$`PEG Ratio` <- as.numeric(stats$`PEG Ratio`)
stats.pe <- stats[stats[,"PEG Ratio"]>20,]









#######################################################################

