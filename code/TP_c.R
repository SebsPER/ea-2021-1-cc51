data<-read.csv("C:/admInfo/TA/hotel_bookings_miss.csv",header = TRUE,stringsAsFactors = FALSE)

Meses <- c('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'October',
           'September', 'November', 'December')

library(dplyr)
freq <- count(data, arrival_date_month)
row.names(freq) <- Meses 
freq <- freq[match(Meses, freq$arrival_date_month),] #ordenar freq por mes

freq2 <- as.integer(freq$n/100)

myGraph <- barplot(freq2,xlab="Meses",ylab="Cantidad(10^2)",main="Cantidad de Reservas por mes del año", 
        names.arg=Meses, col="orange", las=2)

text(myGraph, freq2+0.4 , paste("",freq2, sep="") ,cex=1, pos=1)
