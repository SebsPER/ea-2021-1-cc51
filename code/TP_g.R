data<-read.csv("C:/admInfo/TA/hotel_bookings_miss.csv",header = TRUE, stringsAsFactors = FALSE)

tablaEstacionamiento <- table(fix_outliers(data$required_car_parking_spaces))

percent <- round(tablaEstacionamiento/sum(tablaEstacionamiento)*100)

carLabel <- c("No requiere","requiere")
carLabel <- paste(carLabel,percent)
carLabel <- paste(carLabel,"%",sep = "")

pie(tablaEstacionamiento,labels = carLabel,main = "Reservas con estacionamiento requerido",col = terrain.colors(3))
