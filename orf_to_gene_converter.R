# orf_to_gene_converter.R

library(readr)

# Función para convertir ORF IDs de Candida albicans a nombres de genes
convert_orfs_to_genes <- function(orf_list, url = "https://https://github.com/MLHernaez/candida-gene-tools/blob/main/candida_gene_mapping.csv") {
  if (!requireNamespace("readr", quietly = TRUE)) {
    install.packages("readr")
  }
  
  
  mapping <- read_csv(url, show_col_types = FALSE)
  
  if (!all(c("ORF_ID", "Gene_Name") %in% names(mapping))) {
    stop("El archivo debe contener las columnas 'ORF_ID' y 'Gene_Name'.")
  }

  gene_names <- mapping$Gene_Name[match(orf_list, mapping$ORF_ID)]
  result <- data.frame(ORF_ID = orf_list, Gene_Name = gene_names)
  return(result)
}
