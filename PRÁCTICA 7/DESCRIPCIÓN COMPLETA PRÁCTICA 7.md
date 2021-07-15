## PRÁCTICA 7: INTRODUCCIÓN A LOS ESTUDIOS DE ASOCIACIÓN GENÓMICA

## :white_check_mark: INTRODUCCIÓN
* Locus que afecta un rasgo cuantitativo (QTLs), es una región o segmento de un cromosoma (locus) cuya variación (alelos) explica la variacion de fenotipos de un rasgo cuantitativo. 
* Polimorﬁsmo de nucleótido único (SNP), son marcadores genéticos usados para identificar QTL y para estimar Breeding value (valor genético aditivo o mejorante de un individuo)
* Estudio de asociación de genoma completo (GWAS), es un enfoque utilizado en la investigación genética para asociar variaciones genéticas específicas con ciertas enfermedades. El método implica el análisis de los genomas de muchas personas diferentes y la búsqueda de marcadores genéticos que se pueden utilizar para predecir la presencia de una enfermedad. Una vez que dichos marcadores genéticos son identificados, se pueden utilizar para entender cómo los genes contribuyen a la enfermedad y desarrollar mejores estrategias de prevención y tratamiento.

## :white_check_mark: OBJETIVOS 
1. Realizar un análisis de asociación genómico usando datos simulados de genotipos y fenotipos

## :white_check_mark: TRABAJO PRÁCTICO
En esta práctica trabajaremos con datos de genotipos y fenotipos que fueron simulados de la siguiente manera:
- **Genotipos geno**: Set de datos que contiene el genotipo de 200 animales endogámicos con 1000 SNP distribuidos en 10 cromosomas.
- **geno_inbred**: Set de datos que contiene el genotipo de 200 animales no endogámicos con 1000 SNP distribuidos en 10 cromosomas.
- **Fenotipos pheno**: Set de datos que contiene la variable cuantitativa continua y, con promedio 0 y varianza 5.
- **QTL y heredabilidad del rasgo pheno 1 QTLs**: 10, 1 por cromosoma.
- **heredabilidad**: 0.5 <br />

La importación de los datos y los análisis serán realizados con RStudio.cloud con las siguientes librerías<br />
1. **utils**: Utilizada para importar big data usando la función read.delim [Libreria utils](https://cran.r-project.org/web/packages/R.utils/R.utils.pdf).
2. **rrBLUP**: Software for genomic prediction with the RR-BLUP mixed model [Endelman 2011](https://doi.org/10.3835/plantgenome2011.08.0024).
3. **ggplot2**: Para realizar gráficas avanzadas. [librería ggplot2](https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf)
4. **dplyr**: proporciona una "gramática" (particularmente verbos) para la manipulación y operaciones con data frames. Con esta gramática podemos comunicar mediante nuestro código que es lo que estamos haciendo en los data frames a otras personas (asumiendo que conozcan la gramática).[librería dplyr](https://cran.r-project.org/web/packages/dplyr/dplyr.pdf)
5. **qqman**: Cree gráficos QQ y manhattan para datos GWAS a partir de resultados PLINK [librería qqman](https://cran.r-project.org/web/packages/qqman/qqman.pdf)

### 1. CONEXIÓN CON RStudio.cloud
Si tienes cuenta en la nube de RStudio puedes conectarte usando el siguiente [link](https://www.rstudio.com/products/cloud/)<div/>
Si no tienes cuenta, te recomiendo descargar RStudio en el siguiente [link](https://www.rstudio.com/products/rstudio/) e instalarla en tu computadora. <div/>

### 2. COMANDOS PARA SER EJECUTADOS EN RStudio PARA EL ANÁLISIS
* Aquí sólo se mencionarán los comados para ser ejecutados
* Para ver la ejecucuón, graficas e interpretación de resultados puedes ver el reporte completo del punto 3 (REPORTE COMPLETO DEL ANÁLISIS EN R E INTERPRETACIÓN DE LOS RESULTADOS)

#### 2.1 IMPORTAR Y EXPLORAR ARCHIVOS DE GENOTIPOS Y FENOTIPOS
a) Importe el archivo de genotipos geno.txt y fenotipos Pheno.txt usando la función read.delim.
```
geno <- read.delim("geno.txt", sep = "\t", dec = ",", header = T)
pheno <- read.delim("pheno.txt", sep = "\t", dec = ",", header = T)
```
b) Luego realice un análisis exploratorio de ambos set de datos con las funciones head(), dim(). También realice un histograma de la variable cuantitativa y del archivo pheno, use la función hist().
```
dim(geno)
```
```
dim(pheno)
```
```
head(geno[1:6,1:6])
```
```
head(pheno)
```
Para realizar el histograma use el siguiente comando:
```
hist(pheno$y)
```
#### 2.2 Estudio de asociación de genoma completo (GWAS)
a) Investigue el uso de la función A.mat de la librería rrBLUP y calcule la matriz de parentesco genómico para el set de datos geno. Explore la matriz con las funciones dim(), head() y hist().
```
# Calcula y grafica matriz de parentesco genómico según método de Van Raden para los 200 animales
A <- A.mat(geno[4:203]) 
```
```
dim(A)
```
```
head(A[1:6,1:6])
```
```
hist(A)
```
b) Ahora, cree un objeto llamado endogamia con la diagonal de la matriz y grafique con hist(). Dado que la diagonal contiene el parentesco del individuo con sigo mismo (E(diagonal)= 1+f), según Endelman and Jannink, 2012 esto permite estimar el coeficiente de endogamia de la población.
```
endogamia <- diag(A)
hist(endogamia, main = "Histograma de endogamia")
```
c) Investigue el uso de la función GWAS() de la librería rrBLUP y realice un análisis de asociación genómica GWAS. Incluya el argumento plot=TRUE. Almacene el resultado del GWAS en un objeto denominado score. 
```
score <- GWAS(pheno,geno, plot=TRUE)
```
```
class(score)
```
Calcula la probabilidad de significancia a partir del inverso de y=-log10(p).

```
score$p <- 1/(10^score$y)
```
Grafica manhattan plot
```
manhattan(score, chr="chrom", bp="pos", snp="marker", p="p" )
```

### 2.3 Locus que afecta un rasgo cuantitativo (QTLs)

Ahora exploraremos el efecto de los QTLs detectados por el GWAS

a) Explore el objeto score con el comando head() y View().
```
# View(scores)
head(score)
```
**Sugerencia** Extraiga el score de los SNP significativos (score>5) usando la función filter() de la librería **dplyr*
```
dplyr::filter(score, y > 5)
```
**Sugerencia** note que el score corresponde a -log10(p), donde p es la probabilidad o significancia. Transforme el score a p usando 1/(10^score$y)
```
score$p<-1/(10^score$y)

1/(10^6.09691)

-log10(0.0000008)
```
b) Realice un gráfico de regresión lineal de fenotipo en función de los genotipo para cada SNP significativo.

**Sugerencia:** Transponga la matriz geno y cree un nuevo data.frame solo con los snp signiticativos, luego una al data.frame el rasgo cuantitativo.
```
t_geno_300 <- t(geno[300,4:203])+1
t_geno_1000 <- t(geno[1000,4:203])+1
qtl <- data.frame(t_geno_300,t_geno_1000,pheno$y)

head(qtl)
```
```
qtl.1 <- ggplot(qtl, aes(x = X300, y = pheno.y))
qtl.1 + geom_point() + xlab("snp 300") +  ylab("Pheno")+ geom_smooth(method=lm)
```
```
qtl.2 <- ggplot(qtl, aes(x = X1000, y = pheno.y))
qtl.2 + geom_point() + xlab("snp 1000") +  ylab("Pheno")+ geom_smooth(method=lm)
```
c) Estime el efecto (beta o pendiente) de los QTLs con mayor score usando un modelo lineal lm().
```
lm.qtl.300 <- lm(pheno.y ~ X300, data = qtl)
summary(lm.qtl.300)
```
```
cat("El efecto del snp300 sobre el rasgo cuantitativo 1.8121")
```
```
lm.qtl.1000 <- lm(pheno.y ~ X1000, data = qtl)
summary(lm.qtl.1000)
```
```
cat("El efecto del snp1000 sobre el rasgo cuantitativo 1.8549")
```
### 3. REPORTE COMPLETO DEL ANÁLISIS EN R E INTERPRETACIÓN DE LOS RESULTADOS 
Para ver el reporte completo en formato PDF, haz clic [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/ab44d4ca729b5e90e216f087b1ea7f8b6be0fefa/PR%C3%81CTICA%207/REPORTE%20COMPLETO%20PRACTICA%207%20EN%20RStudio.pdf)

## :white_check_mark: REFERENCIAS Y LINK DE INTERES 
1. B. Endelman 2011. Ridge Regression and Other Kernels for Genomic Selection with R Package rrBLUP. https://doi.org/10.3835/plantgenome2011.08.0024
2. Endelman J.B and Jannink J-L. (2012). Shrinkage Estimation of the Realized Relationship Matrix. G3: GENES, GENOMES, GENETICS November 1, 2012 vol. 2 no. 11 1405-1413;(https://www.g3journal.org/content/2/11/1405)
3. https://zzz.bwh.harvard.edu/plink/dataman.shtml
4. https://support.illumina.com/bulletins/2016/06/simple-guidelines-for-identifying-topbottom-topbot-strand-and-ab-allele.html
5. https://www.r-graph-gallery.com/101_Manhattan_plot.html
