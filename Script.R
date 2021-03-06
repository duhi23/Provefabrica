######################################
#### Analisis - Series Temporales ####
######################################

library(readxl)
library(dplyr)
ls("package:readxl")
ls("package:dplyr")

dir.data <- "/Users/Diego/Dropbox/Proyectos/Provefabrica"
setwd(dir.data)
list.files()

data <- tbl_df(read_excel("BASE DE DATOS CONSUMO Y SALDOS.xlsx", sheet=2))
rownames(data) <- unlist(data %>% select(contains("CODIGO")))
# as.character(data %>% select(contains("CODIGO")))
data <- data %>% select(-contains("NOMBRE"), -contains("CODIGO"))

dir.main <- "/Users/Diego/Dropbox/Source Stat Lab/Provefabrica"
setwd(dir.main)
list.files()

serie <- function(i){
      plot(ts(unlist(data[i,]), start=c(2013, 6), end=c(2015, 6), freq = 12))
}


serie(1)




