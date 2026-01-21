# ==============================================================================
# SCRIPT PARA RENDERIZAR EL REPORTE ------
# ==============================================================================
# Uso: Rscript render_reporte.R [formato]
# Formatos: "pdf", "docx", "html", "all" (por defecto: "all")

library(quarto)

# Obtener formato (por defecto: all)
formato <- if (length(commandArgs(trailingOnly = TRUE)) > 0) {
  commandArgs(trailingOnly = TRUE)[1]
} else {
  "all"
}

# Validar formato
if (!formato %in% c("pdf", "docx", "html", "all")) {
  stop("Formato no válido. Usa: pdf, docx, html, o all")
}

# Renderizar
if (formato == "all") {
  quarto_render("Reporte/reporte_atc26.qmd", output_format = "pdf")
  quarto_render("Reporte/reporte_atc26.qmd", output_format = "docx")
  quarto_render("Reporte/reporte_atc26.qmd", output_format = "html")
} else {
  quarto_render("Reporte/reporte_atc26.qmd", output_format = formato)
}
