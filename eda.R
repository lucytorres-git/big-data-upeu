# ==========================================
# EJERCICIO 1: EDA BÁSICO - TRÁFICO URBANO
# ==========================================

# 1. Inspeccionar la estructura general del conjunto de datos
# Muestra las columnas, tipos de datos y las primeras observaciones
str(datos)
head(datos, 10)

# 2. Obtener un resumen estadístico descriptivo
# Muestra media, mediana, mínimo, máximo y cuartiles de las variables numéricas
summary(datos)

# 3. Comprobar si existen valores perdidos o nulos (NA) en el dataset
colSums(is.na(datos))

# 4. Análisis visual básico (Gráficos)

# Histograma para ver la distribución de la velocidad promedio de los vehículos
hist(datos$velocidad_promedio, 
     main="Distribución de Velocidad Promedio", 
     xlab="Velocidad (km/h)", 
     col="skyblue", 
     border="black")

# Diagrama de caja (Boxplot) para analizar el tiempo de viaje según el nivel de congestión
boxplot(datos$tiempo_viaje ~ datos$nivel_congestion, 
        main="Tiempo de Viaje por Nivel de Congestión",
        xlab="Nivel de Congestión", 
        ylab="Tiempo de Viaje (min)", 
        col="lightgreen")