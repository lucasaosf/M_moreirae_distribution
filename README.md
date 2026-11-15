# Distribuição de *Melanophryniscus moreirae* — dados do GBIF

Script em R que baixa do **GBIF** os registros de ocorrência de *Melanophryniscus moreirae* e salva em CSV, como base para mapas e estudos de distribuição.  
**Lucas Aøsf** · Pesquisa & Soluções Ambientais

---

## `script_puxando_dados_gbif.R`

- Busca até 1.000 ocorrências com `occ_search()` do pacote `rgbif`.
- Mostra quantos registros vieram e salva tudo em `dados_gbif.csv`.

**Pacote:** `rgbif`

---

## Como usar

1. Abra o script no **RStudio** e instale o pacote: `install.packages("rgbif")`.
2. Troque a pasta em `setwd()` pela sua.
3. Para outra espécie, mude `scientificName` em `occ_search()`.

> Confira e limpe os registros (coordenadas duplicadas, imprecisas ou fora da área de ocorrência) antes de usar em mapas.

---

## Citation

Se você utilizar este script ou os dados consolidados do GBIF em seus estudos ou mapas de distribuição, cite como:

```bibtex
@misc{ferreira2026melanophryniscus,
  title={Distribuição de Melanophryniscus moreirae a partir de dados do GBIF},
  author={Lucas Aosf},
  year={2026},
  publisher={GitHub},
  journal={GitHub repository},
  howpublished={\url{https://github.com/lucasaosf/M_moreirae_distribution}},
  url={https://github.com/lucasaosf/M_moreirae_distribution}
}
```
