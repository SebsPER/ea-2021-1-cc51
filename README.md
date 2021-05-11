# ea-2021-1-cc51
Repositorio para la EA del curso de Administración de la Información (Universidad Peruana de Ciencias Aplicadas, UPC)
# Objetivo del Trabajo
El trabajo contenido en este repositorio de Github tiene como objetivo poner en práctica los conceptos y tecnicas aprendidas en el curso de Administración de la Informacion (2021-1). Para la realización del trabajo se utilizó el dataset de Hotel Booking Demand de Kaggle, con algunas modificaciones que agregan ruido para permitir el aprendizaje de los integrantes.
# Integrantes
Chávez Arias, Bill Brandon - U20171C042

Peralta Ireijo, Sebastian Fernando - U201816030

Costa Morales, Juan Josemaria  - U201822001
# Reporte

## 2. Conjunto de Datos (Data Set)

```
# Nombre Tipo Descripción Valores
```
```
1
Hotel Factor
```
```
Permite visualizar a cual de los
dos hoteles incluidos en el dataset
pertenece la data.
```
```
Resort Hotel - City
Hotel
```
```
2 is_canceled Numeric Indica si la reserva fue cancelada
(1) o no (0).
```
##### 0 - 1

##### 3

```
lead_time Numeric
```
```
Representa el tiempo, en días,
que ha transcurrido entre la
realización de la reserva y la
llegada del cliente.
```
##### 0 - 737

```
4 arrival_date_year Numeric Muestra el año de llegada del
cliente.
```
##### 2015 - 2017

```
5 arrival_date_week
_number
```
```
Factor Muestra el mes de llegada del
cliente.
```
```
January, February,
March, April, May,
June, July, August,
September, October,
November, December.
```
```
6 arrival_date_week
_number
```
```
Numeric Representa el número de semana
del año en el que llega el cliente.
```
##### 1-

```
7 arrival_date_day_
of_month
```
```
Numeric Representa el número del día del
mes en el que.
```
##### 1-


8 stays_in_weekend
_nights

```
Numeric Muestra la cantidad de fines de
semana en los que el cliente se
quedó o reservó en el hotel.
```
##### 0-

9 stays_in_week_ni
ghts

```
Numeric Muestra la cantidad de días de
semana (Lunes a Viernes) en los
que el cliente se quedó o reservó
en el hotel.
```
##### 0-

10 adults Numeric Muestra la cantidad de adultos
que se registraron

##### 0-

11 children Numeric Muestra la cantidad de niños que
se registraron

##### 0-

12 babies Numeric Permite visualizar el número de
bebés que el cliente ha registrado.

##### 0-10.

13 meal Factor Permite visualizar el tipo de
comida que se ha reservado, se
utiliza el estándar para paquetes
de alimentos.

```
BB = “Bed and
Breakfast”, HB = “Half
Board(Breakfast and
dinner normally)”, SC =
“Self Catering(No meals
included)”, FB = “Full
Board(Breakfast, Lunch
and Dinner)” y
Undefined
```
14 country Factor Permite visualizar el país de
origen el cual está representado
en el formato ISO 3155-3:2013.

```
En su mayoria PRT =
“Portugal” y GBR =
“Gran Bretaña” entre
otros
```
15 market_segment Factor Permite visualizar el segmento de
mercado designado para cada
cliente separados por categorías
como TA(Travel Agent) o
TO(Tour Operators)

```
Online TA, Offline
TA/TO, groups, direct y
corporate
```
16 distribution_chann
el

```
Factor Permite visualizar el número de
bebés que el cliente ha registrado
```
```
Valores numéricos
mayores o iguales a
cero.
```
17 is_repeated_guest Numeric Permite visualizar si es un
cliente recurrente (1) o no (0).

##### 0-


18 previous_cancellat
ions

```
Numeric Permite visualizar el número de
reservas canceladas que ha
realizado el cliente.
```
##### 0-

19 previous_booking
s_not_canceled

```
Numeric Permite visualizar el número de
reservas no canceladas del
cliente.
```
##### 0-

20 reserved_room_ty
pe

```
Factor Permite visualizar el código del
tipo de cuarto reservado,
utilizando códigos para mantener
el anonimato.
```
##### A-P

21 assigned_room_ty
pe

```
Factor Permite visualizar el código del
tipo de cuarto asignado, este
puede ser diferente del cuarto
reservado debido a diferentes
motivos
```
##### A-P

22 booking_changes Numeric Permite visualizar el número de
cambios realizados en la reserva
del momento que se realizó hasta
el check-in o cancelación.

##### 0-

23 Deposit_type Factor Permite visualizar si el cliente
realizó un depósito para
garantizar la reserva.

```
No deposit - Non
Refund - Refundable
```
24 agent Factor Permite visualizar si el cliente
realizó un depósito para
garantizar la reserva.

```
Numéricos (Existen
valores nulos: NULL)
```
25 company Factor Permite visualizar el DNI de la
empresa / entidad que realizó la
reserva o responsable del pago de
ella.

```
Numéricos (Existen
valores nulos: NULL)
```
##### 26

```
days_in_waiting_l
ist
```
```
Numeric
```
```
Permite visualizar el número de
días que la reserva estuvo en lista
de espera antes de ser
confirmada.
```
##### 0-

27 customer_type Factor Permite visualizar si el cliente Transient,


```
realizó un depósito para
garantizar la reserva.
```
```
Transient-Party,
Contract.
```
```
28 adr Numeric Permite visualizar la tarifa diaria
promedio según se define
dividiendo la suma de todas las
transacciones de alojamiento por
el número total de noches de
estadía.
```
```
-6.38-5.4k
```
```
29 required_car_park
ing_spaces
```
```
Numeric Permite visualizar el número de
plazas de aparcamiento
requeridas por el cliente.
```
##### 0-

```
30 total_of_special_r
equests
```
```
Numeric Permite visualizar el número de
solicitudes especiales realizadas
por el cliente.
```
##### 0-

```
31 reservation_status Factor Permite visualizar el último
estado de la reserva, asumiendo
una de las tres categorías.
```
```
Check-Out, Canceled,
No-Show
```
##### 32

```
reservation_status
_date
```
```
Factor Permite visualizar la fecha en la
que se estableció el último estado
```
```
Fechas
```
