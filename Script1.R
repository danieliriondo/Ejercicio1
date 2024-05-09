library(readxl)

# Cargamos el fichero
df <- read_xlsx("Datos/online_retail_II.xlsx")

# Revisión de formatoa
str(df)
df$`Customer ID` <- as.character(df$`Customer ID`)

# Análisis básico
summary(df$Quantity)
boxplot(df$Quantity)

range(df$InvoiceDate)

summary(df$Price)
boxplot(df$Price)

unique(df$Country)
length(unique(df$Country))

unique(df$StockCode)
length(unique(df$StockCode))

unique(df$Invoice)
length(df$Invoice)
length(unique(df$Invoice)) # hay 28816 pedidos distintos

# Calcular precio medio de producto por pedido
library(dplyr)

df1 <- df %>%
  group_by(Invoice) %>%
  summarise(precio_medio = mean(Price))

# Calcular numero de productos por pedido
df2 <- df %>%
  group_by(Invoice) %>%
  summarise(numero_productos = n())

# Calcular el precio por pedido
df3 <- df %>% 
  group_by(Invoice) %>%
  summarise(precio_total = sum(Price))
