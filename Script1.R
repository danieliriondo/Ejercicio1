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

