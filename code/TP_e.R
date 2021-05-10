data<-read.csv("C:/admInfo/TA/hotel_bookings_miss.csv",header = TRUE,
               stringsAsFactors = FALSE)

contador <- 0

summary(data$children)
summary(data$babies)

#Limpieza de Columna Children y Babies que contiene valores NA
data$children <- ifelse(is.na(data$children), mean(data$children, na.rm = TRUE), data$children)
data$babies <- ifelse(is.na(data$babies), mean(data$babies, na.rm = TRUE), data$babies)

for (i in 1:119390) {
  if (data$children[i] > 0 | data$babies[i] > 0) {
    contador  <- contador + 1
  }
}

Status <- c("Sin niño/bebé", "Incluye niño/bebé")
Cantidad <- c(119390 - contador, contador)

ResBebesNino <- data.frame(Status, Cantidad) 

pct <- round(Cantidad/sum(Cantidad)*100)
Status <- paste(Status, pct)
Status <- paste(Status,"%",sep="")
pie(Cantidad, labels=Status, col=c("Yellow","Gray"), main="Porcentaje de Reservas con bebés y/o niños")
