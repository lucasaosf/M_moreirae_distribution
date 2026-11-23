# Puxando dados para .csv do GBIF
# Lucas Aosf
# Thu May  2 18:04:07 2024 ------------------------------

# Garantir pacote rgbif instalado de forma segura
if (!requireNamespace("rgbif", quietly = TRUE)) {
  install.packages("rgbif", dependencies = TRUE)
}
library(rgbif)

# Pasta de saida configuravel (usa pasta atual do projeto de forma portavel)
pasta_saida <- file.path(getwd(), "dados")
if (!dir.exists(pasta_saida)) dir.create(pasta_saida, recursive = TRUE)

arquivo_saida <- file.path(pasta_saida, "dados_gbif.csv")

# Pegando dados especificos da especie
dat <- occ_search(scientificName = "Melanophryniscus moreirae", limit = 1000)$data

if (!is.null(dat) && nrow(dat) > 0) {
  message("Registros encontrados: ", nrow(dat))
  # Escrevendo os dados em um arquivo .csv
  write.csv(dat, arquivo_saida, row.names = FALSE)
  
  if (file.exists(arquivo_saida)) {
    message("✅ Arquivo .csv criado com sucesso em: ", arquivo_saida)
  } else {
    warning("Houve um problema ao criar o arquivo .csv.")
  }
} else {
  warning("Nenhum registro encontrado no GBIF para a especie consultada.")
}

# FIM
