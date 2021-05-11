data<-read.csv("C:/admInfo/TA/hotel_bookings_miss.csv",header = TRUE,
               stringsAsFactors = FALSE)

# definicion de formulas utilizadas al final del script 
# Reemplazo de valores NA para variables categoricas de tipo character
# random.df(df, columnas a limpiar
data2 <- random.df(data, c(1,5,13,14,15,16,20,21,23,24,25,27,31,32))


# Reemplazo de valores NA para variables numericas
data2$lead_time <- ifelse(is.na(data2$lead_time), mean(data2$lead_time, na.rm = TRUE), data2$lead_time)
data2$is_canceled <- ifelse(is.na(data2$is_canceled), mean(data2$is_canceled, na.rm = TRUE), data2$is_canceled)
data2$arrival_date_year <- ifelse(is.na(data2$arrival_date_year), round(mean(data2$arrival_date_year, na.rm = TRUE)), data2$arrival_date_year)
data2$arrival_date_week_number <- ifelse(is.na(data2$arrival_date_week_number), round(mean(data2$arrival_date_week_number, na.rm = TRUE)), data2$arrival_date_week_number)
data2$arrival_date_day_of_month <- ifelse(is.na(data2$arrival_date_day_of_month), round(mean(data2$arrival_date_day_of_month, na.rm = TRUE)), data2$arrival_date_day_of_month)
data2$stays_in_weekend_nights <- ifelse(is.na(data2$stays_in_weekend_nights), round(mean(data2$stays_in_weekend_nights, na.rm = TRUE)), data2$stays_in_weekend_nights)
data2$stays_in_week_nights <- ifelse(is.na(data2$stays_in_week_nights), round(mean(data2$stays_in_week_nights, na.rm = TRUE)), data2$stays_in_week_nights)
data2$adults <- ifelse(is.na(data2$adults), round(mean(data2$adults, na.rm = TRUE)), data2$adults)
data2$children <- ifelse(is.na(data2$children), round(mean(data2$children, na.rm = TRUE)), data2$children)
data2$babies <- ifelse(is.na(data2$babies), round(mean(data2$babies, na.rm = TRUE)), data2$babies)
data2$is_repeated_guest <- ifelse(is.na(data2$is_repeated_guest), round(mean(data2$is_repeated_guest, na.rm = TRUE)), data2$is_repeated_guest)
data2$previous_cancellations <- ifelse(is.na(data2$previous_cancellations), round(mean(data2$previous_cancellations, na.rm = TRUE)), data2$previous_cancellations)
data2$previous_bookings_not_canceled <- ifelse(is.na(data2$previous_bookings_not_canceled), round(mean(data2$previous_bookings_not_canceled, na.rm = TRUE)), data2$previous_bookings_not_canceled)
data2$booking_changes <- ifelse(is.na(data2$booking_changes), round(mean(data2$booking_changes, na.rm = TRUE)), data2$booking_changes)
data2$days_in_waiting_list <- ifelse(is.na(data2$days_in_waiting_list), round(mean(data2$days_in_waiting_list, na.rm = TRUE)), data2$days_in_waiting_list)
data2$adr <- ifelse(is.na(data2$adr), round(mean(data2$adr, na.rm = TRUE), digits=2), data2$adr)
data2$required_car_parking_spaces <- ifelse(is.na(data2$required_car_parking_spaces), round(mean(data2$required_car_parking_spaces, na.rm = TRUE)), data2$required_car_parking_spaces)
data2$total_of_special_requests <- ifelse(is.na(data2$total_of_special_requests), round(mean(data2$total_of_special_requests, na.rm = TRUE)), data2$total_of_special_requests)

# exportar el dataset limpio en fornato .csv
# write.csv(data2,"path\\Dataset_name.csv", row.names = FALSE)

#formulas para reemplazo de variables character
random.df <- function(df, cols){
  nombres <- names(df)
  for (col in cols) {
    df[nombres[col]] <- rand.valor(df[,col])
    }
  df
}

rand.valor <- function(x){
  faltantes <- is.na(x)
  tot.faltantes <- sum(faltantes)
  x.obs <- x[!faltantes]
  valorado <- x
  valorado[faltantes] <- sample(x.obs, tot.faltantes, replace = TRUE)
  return (valorado)
}
