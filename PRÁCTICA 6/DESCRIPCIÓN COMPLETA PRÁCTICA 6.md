## PRÁCTICA 1: INTRODUCCIÓN A LA GENÓMICA POBLACIONAL Y ANCESTRÍA 

### INTRODUCCIÓN

SOFTWARES DE BIOINFORMATICA
* PLINK es un conjunto de herramientas de analisis de asociación de genoma completo de codigo abierto y gratuito, disenado para realizar una variedad de análisis genéticos básicos a gran escala de forma eficiente (https://www.cog-genomics.org/plink2).
* ADMIXTURE es un software para estimar la maxima probabilidad de ancestria individual e inferir poblaciones a partir de un conjunto de datos de genotipos de multiples SNP. Utiliza el mismo modelo estadistico que el software STRUCTURE pero el algoritmo de optimizacion numerico que utiliza realiza estimaciones con mayor rapidez (https://bioinformaticshome.com/tools/descriptions/ADMIXTURE.html).

LIBRERÍAS R
* ggplot2
* readr
* dplyr
* tidyverse
* cowplot

### OBJETIVOS 

1. Realizar un análisis de genómica poblacional y ancestría en *Salmo salar* a partir de archivo de variantes VCF.

### TRABAJO PRÁCTICO

### 1. CONEXIÓN CON EL SERVIDOR POMEO

haz clic [aquí para recordar la conexión remota con el servidor POMEO](https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png)<br />
haz clic [aquí para recordar el ingreso para trabajar en la terminal](https://user-images.githubusercontent.com/84527634/123138222-c7bd9880-d422-11eb-827e-d4c4bd926f4e.png)<br />

### 2. CONFIGURAR BIOCONDA E INSTALAR LOS SOFTWARE PLINK Y ADMIXTURE

Para configurar el canal bioconda se debe ejecutar el siguiente comando

conda config --add channels bioconda

Para instalar el software plink ejecute el siguiente comando

conda install -c bioconda plink

Para instalar el software admixture ejecute el siquiente comando

conda install -c bioconda admixture

PARA VER EL EJEMPLO EN LA TERMINAL [HACER CLIC AQUÍ]

### 3. DIRECTORIO DE TRABAJO Y ARCHIVOS PARA EL ANÁLISIS POBLACIONAL 

### 4. ANÁLISIS DE DIVERSIDAD

### 5. ANÁLISIS DE ESTRUCTURA POBLACIONAL 

### 6. ANÁLISIS DE ADMIXTURE 

### REFERENCIAS Y LINK DE INTERÉS
