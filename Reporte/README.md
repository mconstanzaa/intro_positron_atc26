# Reporte ATC26 - Guía de Renderizado

Este directorio contiene el reporte de prueba en quarto. 

## Archivos

- `reporte_atc26.qmd`: Documento principal del reporte
- `_quarto.yml`: Configuración de formatos de salida (PDF, Word, HTML)
- `custom.scss`: Estilos personalizados para HTML
- `render_reporte.R`: Script R para renderizar el reporte en todos los formatos

## Formas de Renderizar el Reporte

### Opción 1: Script R (Recomendado)

#### Renderizar todos los formatos (PDF, Word, HTML):
```bash
cd Reporte
Rscript render_reporte.R
```

#### Renderizar un formato específico:
```bash
# Solo PDF
Rscript render_reporte.R pdf

# Solo Word
Rscript render_reporte.R docx

# Solo HTML
Rscript render_reporte.R html

# Todos los formatos (explícito)
Rscript render_reporte.R all
```

### Opción 2: Usando Quarto directamente

#### Renderizar todos los formatos:
```bash
cd Reporte
quarto render reporte_atc26.qmd
```

#### Renderizar un formato específico:
```bash
# Solo PDF
quarto render reporte_atc26.qmd --to pdf

# Solo Word
quarto render reporte_atc26.qmd --to docx

# Solo HTML
quarto render reporte_atc26.qmd --to html
```

### Opción 3: Desde RStudio o Positron

1. Abre el archivo `reporte_atc26.qmd` en RStudio/Positron
2. Haz clic en el botón "Render" en la barra de herramientas
3. O usa el atajo de teclado: `Cmd+Shift+K` (Mac) o `Ctrl+Shift+K` (Windows/Linux)

Para renderizar un formato específico desde RStudio:
- Ve a "Render" → "Render All" → selecciona el formato deseado

## Requisitos

- **Quarto**: Debe estar instalado y disponible en el PATH
  - Descarga desde: https://quarto.org/docs/getting-started/
  - Verifica la instalación: `quarto --version`

- **R**: Para usar el script R o renderizar desde RStudio
  - Paquetes necesarios: `quarto`, `rio`, `flextable`, `officer`, `dplyr`, `ggplot2`
  - Instalar con: `install.packages(c("quarto", "rio", "flextable", "officer", "dplyr", "ggplot2"))`

- **LaTeX**: Solo necesario para generar PDF
  - macOS: `brew install --cask mactex-no-gui` o instala MacTeX completo
  - Windows: Instala MiKTeX o TinyTeX
  - Linux: `sudo apt-get install texlive-full` (o distribución equivalente)

## Archivos Generados

Después de renderizar, se generarán los siguientes archivos:

- `reporte_atc26.pdf`: Versión PDF del reporte
- `reporte_atc26.docx`: Versión Word del reporte
- `reporte_atc26.html`: Versión HTML del reporte

## Características del Reporte

- **Tablas compatibles**: Usa `flextable` para compatibilidad cross-format (HTML, PDF, Word)
- **Gráficos de alta calidad**: Imágenes PNG a 300 DPI
- **Estilos personalizados**: Colores y fuentes ATC26
- **Idioma español**: Formato de fecha y texto en español

## Notas

- El proceso de renderizado puede tomar varios minutos, especialmente para PDF
- Asegúrate de que los archivos en `../Output/` existan antes de renderizar:
  - `tabla_distribucion_cargo.xlsx`
  - `resumen_nivel_conocimiento.xlsx`
  - `grafico_nivel_conocimiento.png`
- Si hay errores, verifica que todas las dependencias estén instaladas
- El script R muestra un resumen del proceso y tiempos de renderizado
