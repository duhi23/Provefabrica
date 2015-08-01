######################################
#### Analisis - Series Temporales ####
######################################

library(readxl)
library(dplyr)
ls("package:readxl")
ls("package:dplyr")

setwd("/Users/Diego/Dropbox/Proyectos/Provefabrica")
list.files()

data <- tbl_df(read_excel("BASE DE DATOS CONSUMO Y SALDOS.xlsx", sheet=2))
rownames(data) <- unlist(data %>% select(contains("CODIGO")))
# as.character(data %>% select(contains("CODIGO")))
data <- data %>% select(-contains("NOMBRE"), -contains("CODIGO"))

serie <- function(i){
      plot(ts(unlist(data[i,]), start=c(2013, 6), end=c(2015, 6), freq = 12))
}





