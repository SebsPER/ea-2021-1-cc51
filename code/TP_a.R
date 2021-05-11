install.packages("ggplot2")
library(ggplot2)

data <- read.csv("C:/Users/Bill/OneDrive/Escritorio/Admin/hotel_bookings_miss.csv",header = TRUE, stringsAsFactors = FALSE)

rand.valor <- function(x){
  faltantes <- is.na(x)
  tot.faltantes <- sum(faltantes)
  x.obs <- x[!faltantes]
  valorado <- x
  valorado[faltantes] <- sample(x.obs, tot.faltantes, replace = TRUE)
  return (valorado)
}

random.df <- function(df, cols){
  nombres <- names(df)
  for (col in cols) {
    nombre <- paste(nombres[col], "valorado", sep = ".")
    df[nombre] <- rand.valor(df[,col])
  }
  df
}


data.limpio=random.df(data,c(31))


ggplot(data.limpio,aes(x=hotel))+
  geom_bar(aes(fill=reservation_status))+
  xlab("Hoteles")+
  ylab("Reservas")+
  theme(plot.title=element_text(hjust=0.5))+
  ggtitle("Numero de reservas por hotel")+
  labs(fill="Estado de reservas")+
  geom_text(stat='count',aes(label=..count..),vjust=0)





