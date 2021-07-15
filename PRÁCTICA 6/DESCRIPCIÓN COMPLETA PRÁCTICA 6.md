## PRÁCTICA 6: INTRODUCCIÓN A LA GENÓMICA POBLACIONAL Y ANCESTRÍA 

## :white_check_mark: INTRODUCCIÓN

**SOFTWARES DE BIOINFORMATICA**
* PLINK es un conjunto de herramientas de analisis de asociación de genoma completo de codigo abierto y gratuito, disenado para realizar una variedad de análisis genéticos básicos a gran escala de forma eficiente [(PLINK)](https://www.cog-genomics.org/plink2).
* ADMIXTURE es un software para estimar la máxima probabilidad de ancestría individual e inferir poblaciones a partir de un conjunto de datos de genotipos de múltiples polimorfismo de nucleótido único (SNP). Utiliza el mismo modelo estadístico que el software STRUCTURE pero el algoritmo de optimización numerico que utiliza realiza estimaciones con mayor rapidez [(ADMIXTURE)](https://bioinformaticshome.com/tools/descriptions/ADMIXTURE.html).

<div align="center">
<p>FORMATO DE PLINK</p>
<img src="https://user-images.githubusercontent.com/84527634/125720168-a4ca6f65-c02f-4721-bf92-979975659dc4.png" height="400">
</div>

**LIBRERÍAS de RStudio**
* [ggplot2](https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf)
* [readr](https://cran.r-project.org/web/packages/readr/readr.pdf)
* [dplyr](https://cran.r-project.org/web/packages/dplyr/dplyr.pdf)
* [tidyverse](https://cran.r-project.org/web/packages/tidyverse/tidyverse.pdf)
* [cowplot](https://cran.r-project.org/web/packages/cowplot/cowplot.pdf)

## :white_check_mark: OBJETIVOS 

1. Realizar un análisis de genómica poblacional y ancestría en *Salmo salar* a partir del archivo de variantes VCF.

## :white_check_mark: ORIGEN DE LAS MUESTRAS

El archivo vcf contiene muestras provenientes de tres poblaciones domesticadas del salmón del Atlántico (*Salmo salar*) provenientes de Europa, Oceanía y Norteamerica.

## :white_check_mark: TRABAJO PRÁCTICO

### 1. CONEXIÓN CON EL SERVIDOR POMEO

haz clic [aquí para recordar la conexión remota con el servidor POMEO](https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png)<br />
haz clic [aquí para recordar el ingreso para trabajar en la terminal](https://user-images.githubusercontent.com/84527634/123138222-c7bd9880-d422-11eb-827e-d4c4bd926f4e.png)<br />

### 2. CONFIGURAR BIOCONDA E INSTALAR LOS SOFTWARE PLINK Y ADMIXTURE

Para configurar el canal bioconda se debe ejecutar el siguiente comando
```
conda config --add channels bioconda
```
Para instalar el software plink ejecute el siguiente comando
```
conda install -c bioconda plink
```
Para instalar el software admixture ejecute el siquiente comando
```
conda install -c bioconda admixture
```
:green_book: PARA VER EL EJEMPLO EN LA TERMINAL [HACER CLIC AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/49bec791af1034f77767a652dbb1adb3579c3430/PR%C3%81CTICA%206/EJEMPLOS%20EN%20LA%20TERMINAL/2.%20configurar%20bioconda%20e%20instalar%20programas%20para%20analisis.txt)

### 3. DIRECTORIO DE TRABAJO Y ARCHIVOS PARA EL ANÁLISIS POBLACIONAL CON PLINK Y ADMIXTURE.
El directorio de trabajo population y los archivos necesarios para ejecutar esta práctica fueron creados previamente. 
Para ingresar al directorio “population” utilizar el siguiente comando:
```
cd population
```
Para visualizar los archivos contenidos dentro del directorio ejecutar el comonado: 
```
ls -l -h
```
El directorio population contiene los siguientes archivos necesarios para efectuar el análisis poblacional con plink y admixture.

* EU_OC_US.vcf Archivo vcf que contiene las muestras provenientes de tres poblaciones de salmon del Atlantico *(Salmo salar)*.
* Europa: 2_WG0341511-DNA_A02_5408, 3_WG0341511-DNA_A03_5416, 5_WG0341511-DNA_A05_5450.
* Oceania: FR07958834, FR07958842, FR07958850.
* Norteamerica: GNB12-1, GNB12-10, GNB12-11.
* Admixture_plot.R Script que contiene el codigo para crear una funciÓn llamada admixtureplot (), utilizada para realizar los diagramas de admixture.

:green_book: PARA VER EL EJEMPLO EN LA TERMINAL [HACER CLIC AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/49bec791af1034f77767a652dbb1adb3579c3430/PR%C3%81CTICA%206/EJEMPLOS%20EN%20LA%20TERMINAL/3.%20Directorio%20de%20trabajo%20y%20archivos%20para%20el%20analisis%20poblacional.txt)

### 4. ANÁLISIS DE DIVERSIDAD
4.1 - Estimar el número de sitios heterocigotos para cada individuo y la heterocigosidad observada y esperada para cada marcador ejecutando los siguientes comandos:
```
vcftools --vcf EU_OC_US.vcf --het --out EU_OC_US

vcftools --vcf EU_OC_US.vcf --hardy --out EU_OC_US
```
para explorar los archivos de salida de cada uno de estos análisis use los comandos:
```
ls -l -h

head EU_OC_US.het
cat EU_OC_US.het
less EU_OC_US

head EU_OC_US.hwe
cat EU_OC_US.hwe
less  EU_OC_US.hwe
```
4.2 - Calcular la diversidad en una ventana no superpuesta de 200 kb para cada individuo de las tres poblaciones.
1) Para la población de Europa
```
vcftools --vcf EU_OC_US.vcf --window-pi 200000 --indv 2_WG0341511-DNA_A02_5408 --indv 3_WG0341511-DNA_A03_5416 --indv 5_WG0341511-DNA_A05_5450 --out EU
```
2) Para la población de Oceanía
```
vcftools --vcf EU_OC_US.vcf --window-pi 200000 --indv FR07958834 --indv FR07958842 --indv FR07958850 --out OC
```
3) Para la población de Norteamerica
```
vcftools --vcf EU_OC_US.vcf --window-pi 200000 --indv GNB12-1 --indv GNB12-10 --indv GNB12-11 --out US
```
4.3 - Calcular el desequilibrio de ligamiento (LD) para las tres poblaciones
1) Para la población de Europa
```
vcftools --vcf EU_OC_US.vcf --geno-r2 --chr 1 --ld-window-bp 100000 --min-r2 0.001 --indv 2_WG0341511-DNA_A02_5408 --indv 3_WG0341511-DNA_A03_5416 --indv 5_WG0341511-DNA_A05_5450 --out EU
```
2) Para la población de Oceanía
```
vcftools --vcf EU_OC_US.vcf --geno-r2 --chr 1 --ld-window-bp 100000 --min-r2 0.001 --indv FR07958834 --indv FR07958842 --indv FR07958850 --out OC
```
3) Para la población de Norteamerica
```
vcftools --vcf EU_OC_US.vcf --geno-r2 --chr 1 --ld-window-bp 100000 --min-r2 0.001 --indv GNB12-1 --indv GNB12-10 --indv GNB12-11 --out US
```
:green_book: PARA VER EL EJEMPLO EN LA TERMINAL [HACER CLIC AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/49bec791af1034f77767a652dbb1adb3579c3430/PR%C3%81CTICA%206/EJEMPLOS%20EN%20LA%20TERMINAL/4.%20Analisis%20de%20diversidad.txt)

4.4 - Gráficos de heterogocidad individual, diversidad de nucleotidos y LD. <br />
Los siguientes gráficos fueron hechos utilizando el lenguaje de programación R en [Rstudio](https://www.rstudio.com/)<br />
Puedes ver el reporte completo del trabajo en RStudio en formato html [aquí](https://0c1a926ea5a0431a92bdcbeecbbb2e10.app.rstudio.cloud/file_show?path=%2Fcloud%2Fproject%2FREPORTE-COMPLETO-PR%C3%81CTICA-6.html)

![GRAFICOS DE ANÁLISIS DE DIVERSIDAD](https://user-images.githubusercontent.com/84527634/124191764-443f1f80-da92-11eb-83ce-01c331d17715.png)

### 5. ANÁLISIS DE ESTRUCTURA POBLACIONAL 
5.1 - Generar el archivo de entrada en formato plink
```
plink --vcf EU_OC_US.vcf --recode --out EU_OC_US --double-id --allow-extra-chr --chr-set 29
```
5.2 - Generar el archivo de entrada en formato plink binario
```
plink --file EU_OC_US --make-bed --out EU_OC_US --allow-extra-chr --chr-set 29
```
5.3 - Filtrar basado en equilibrio de Hardy-Weinberg y frecuencia del alelo menor
```
plink --bfile EU_OC_US --hwe 0.01 --maf 0.05 --make-bed --out EU_OC_US.Filtered --allow-extra-chr --chr-set 29
```
5.4 - Filtrar y excluir marcadores por desequilibrio de ligamiento
```
plink --bfile EU_OC_US.Filtered --indep-pairwise 50 10 0.05 --make-bed --out EU_OC_US.Filtered --allow-extra-chr --chr-set 29

plink --bfile EU_OC_US.Filtered --extract EU_OC_US.Filtered.prune.in --make-bed --out EU_OC_US.FilteredPruned --allow-extra-chr --chr-set 29
```
5.5 - Filtrar para remover individuos relacionados
```
plink --bfile EU_OC_US.FilteredPruned --rel-cutoff 0.4 --out EU_OC_US.FilteredPruned --allow-extra-chr --chr-set 29

plink --bfile EU_OC_US.FilteredPruned --keep EU_OC_US.FilteredPruned.rel.id --make-bed --out EU_OC_US.FilteredPrunedUnrel --allow-extra-chr --chr-set 29
```
5.6 - PCA (Principal Component Analysis)
```
plink --bfile EU_OC_US.FilteredPrunedUnrel --pca 4 --out EU_OC_US.FilteredPrunedUnrel --allow-extra-chr --chr-set 29
```
:green_book: PARA VER EL EJEMPLO EN LA TERMINAL [HACER CLIC AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/49bec791af1034f77767a652dbb1adb3579c3430/PR%C3%81CTICA%206/EJEMPLOS%20EN%20LA%20TERMINAL/5%20-%20Analisis%20de%20estructura%20poblacional.txt)

5.7 - Gráfico de PCA con R
![grafico PCA](https://user-images.githubusercontent.com/84527634/125709415-afcf0903-5025-414e-996c-2c485ea1ed35.png)

:bar_chart: Puedes ver el reporte completo del trabajo en RStudio en formato html [aquí](https://0c1a926ea5a0431a92bdcbeecbbb2e10.app.rstudio.cloud/file_show?path=%2Fcloud%2Fproject%2FREPORTE-COMPLETO-PR%C3%81CTICA-6.html)

### 6. ANÁLISIS DE ADMIXTURE 

6.1 Selección al azar del 1% de los marcadores
```
plink --bfile EU_OC_US.FilteredPrunedUnrel --thin 0.01 --make-bed --out EU_OC_US.Thinned --allow-extra-chr --chr-set 29
```
6.2 - Análisis de ancestría de 2 a 6 poblaciones
```
for K in `seq 2 6`;
do
admixture EU_OC_US.Thinned.bed $K;
done
```
ADMIXTURE genera 2 archivos: .Q que contiene asignaciones de grupos para cada individuo y .P que contiene para cada SNP las frecuencias alelicas de la poblacion

:green_book: PARA VER EL EJEMPLO EN LA TERMINAL [HACER CLIC AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/49bec791af1034f77767a652dbb1adb3579c3430/PR%C3%81CTICA%206/EJEMPLOS%20EN%20LA%20TERMINAL/6%20-%20Analisis%20de%20admixture.txt)

6.3 - Gráficos de ADMIXTURE para 2, 4 y 6 poblaciones
![grafico ADMIXTURE](https://user-images.githubusercontent.com/84527634/125709971-31036af0-de7a-4be8-83de-525162affefe.png)

:bar_chart: Puedes ver el reporte completo del trabajo en RStudio en formato html [aquí](https://0c1a926ea5a0431a92bdcbeecbbb2e10.app.rstudio.cloud/file_show?path=%2Fcloud%2Fproject%2FREPORTE-COMPLETO-PR%C3%81CTICA-6.html)

## :white_check_mark: REFERENCIAS Y LINK DE INTERÉS
1. Marees A., de Kluiver H., Stringer S., Vorspan F., Curis E., Marie-Claire C., Derks E. (2018). A tutorial on conducting genome-wide association studies: Quality control and statistical analysis. International Journal of Methods in Psychiatric Research. 27. e1608. 10.1002/mpr.1608.
2. A PLINK tutorial: https://zzz.bwh.harvard.edu/plink/tutorial.shtml
3. Speciation & Population Genomics: a how-to-guide: https://speciationgenomics.github.io/ADMIXTURE/
4. Estructura formato PLINK, tomado de: https://www.researchgate.net/figure/Overview-of-various-commonly-used-PLINK-files-SNP-single-nucleotide-polymorphism_fig3_323424714
