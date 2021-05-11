library(dplyr)
data <- read.csv("C:/Users/Juan/Desktop/UPC/Sexto Ciclo/AdminDeInfo/hotel_bookings.csv",na.string = "")

meses <- c('January', 'February', 'March', 'April', 'May', 'June', 'July','August', 'October','September', 'November', 'December')

freq <- count(data, arrival_date_month)
freq <- freq[match(meses, freq$arrival_date_month),]
freq$Canceled <- 0
row.names(freq) <- meses

contador <- 0

for (i in 1:119390) {
  if (data$is_canceled[i] > 0) {
    contador <- contador + 1
    mes <- as.character(data$arrival_date_month[i])
    freq[freq$arrival_date_month == mes,"Canceled"] <- freq[freq$arrival_date_month == mes,"Canceled"]+1 
  }
}

grafico <- barplot(freq$Canceled,xlab="meses",ylab="Cantidad",main="Reservaciones Canceladas por Mes",names.arg=meses, col="red",las =2)
text(x = grafico,y = grafico, label = freq$Canceled, pos = 3, cex = 0.8)

