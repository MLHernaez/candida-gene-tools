# Candida Gene Mapper 🧬

Este repositorio contiene una herramienta sencilla en R para convertir identificadores de ORF (`orf19.xxxx`) de *Candida albicans* a nombres de genes legibles.

## 📁 Contenido

- `candida_gene_mapping.csv`: archivo con el mapeo entre ORF_ID y nombres de genes.
- `orf_to_gene_converter.R`: script con una función en R para realizar la conversión.
- Este `README.md`.

## 🧪 Ejemplo de uso

```r
# Cargar la función
source("orf_to_gene_converter.R")

# Lista de ORF IDs
orf_list <- c("orf19.5001", "orf19.1234", "orf19.7654")

# Ejecutar la conversión
genes <- convert_orfs_to_genes(orf_list)

# Ver el resultado
print(genes)
