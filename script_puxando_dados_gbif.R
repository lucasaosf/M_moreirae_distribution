# Puxando dados para .csv do GBIF
# Lucas Aosf
# Thu May  2 18:04:07 2024 ------------------------------

getwd()
setwd("C:/Users/lucas/Downloads/M. moreirae mapa")

# carregando o pacote para pegar dados do GBIF

library(rgbif)

# Pegando dados específicos da sp

dat <- occ_search(scientificName = "Melanophryniscus moreirae", limit = 1000)$data

nrow(dat)  # checando o número de registros
head(dat)  # checando o dado

# Escrevendo os dados em um arquivo .csv
write.csv(dat, "dados_gbif.csv", row.names = FALSE)

# Verificando se o arquivo foi criado
if (file.exists("dados_gbif.csv")) {
  print("Arquivo .csv criado com sucesso.")
} else {
  print("Houve um problema ao criar o arquivo .csv.")
}

# FIM