## PRÁCTICA 7: INTRODUCCIÓN A LOS ESTUDIOS DE ASOCIACIÓN GENÓMICA

## INTRODUCCIÓN



## OBJETIVOS 
1. Realizar un análisis de asociación genómico usando datos simulados de genotipos y fenotipos

## TRABAJO PRÁCTICO
En esta práctica trabajaremos con datos de genotipos y fenotipos que fueron simulados de la siguiente manera:
- **Genotipos geno**: Set de datos que contiene el genotipo de 200 animales endogámicos con 1000 SNP distribuidos en 10 cromosomas.
- **geno_inbred**: Set de datos que contiene el genotipo de 200 animales no endogámicos con 1000 SNP distribuidos en 10 cromosomas.
- **Fenotipos pheno**: Set de datos que contiene la variable cuantitativa continua y, con promedio 0 y varianza 5.
- **QTL y heredabilidad del rasgo pheno 1 QTLs**: 10, 1 por cromosoma.
- **heredabilidad**: 0.5 <br />

La importación de los datos y los análisis serán realizados con RStudio y las siguientes librerías<br />
1. **utils**: Utilizada para importar big data usando la función read.delim().
2. **rrBLUP**: Software for genomic prediction with the RR-BLUP mixed model [Endelman 2011](https://doi.org/10.3835/plantgenome2011.08.0024).
3. **ggplot2**: Para realizar gráficas avanzadas. 
4. 

## REFERENCIAS Y LINK DE INTERÉS
1. Jeffrey B. Endelman 2011. Ridge Regression and Other Kernels for Genomic Selection with R Package rrBLUP. https://doi.org/10.3835/plantgenome2011.08.0024
