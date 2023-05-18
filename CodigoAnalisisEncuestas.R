#===============================================================================
#Cargar Datos
#===============================================================================

datos <- BaseMC

#===============================================================================
# Nombre de las Variables
#===============================================================================
names(datos) #Verificacion

#Cambiar Nombres

colnames(datos) <- c("IC", "BP", "AHM", "AHP", "SQ", "TR", "HC", "IC", "SC", "CP", "CC")

# Disponibilizar Variables
attach(datos)

#===============================================================================
# Analisis Exploratorio
#===============================================================================

pairs(datos) #Graficos de Dispersion Multiple

cor(datos) #Coeficiente de Corelacion

#===============================================================================
# Analisis de Regresion
#===============================================================================

modelo <- lm(IC~BP+AHM+AHP+SQ+TR+HC+IC+SC+CP+CC, data = datos)

summary(modelo)
