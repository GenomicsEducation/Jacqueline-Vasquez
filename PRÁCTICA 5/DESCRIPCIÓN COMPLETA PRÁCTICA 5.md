
## PRÁCTICA 5: INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS - LLAMADO DE VARIANTES

## :white_check_mark: INTRODUCCIÓN
Dentro de los principales usos de la secuenciación de próxima generación es descubrir variantes genéticas o mutaciones entre individuos que pertenecen a diferentes poblaciones [(Danecek et al., 2011)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3137218/). Con este fin, se han desarrollado tuberías que incluyen el procesamiento de grandes volúmenes de datos como el proyecto internacional 1000 genomas humanos, o el proyecto chileno de 1000 genomas que pretende secuenciar e identificar varianes en 1000 personas y en algunas especies endémicas de interes.
Uno de los softwares más empleados para realizar esta tarea denominada “llamado de variantes”, es GATK, que se comprende como un kit de herramientas de análisis de genomas desarrollado por el Broad Institute de los Estados Unidos, que tiene la capacidad de realizar gran parte del análisis requerido para llamar variantes genómicas [(Deatherage, 2020)](https://wikis.utexas.edu/display/bioiteam/Genome+Analysis+Toolkit+%28GATK%29+.+--+GVA2020)
El presente trabajo tiene por objeto realizar el llamado de variantes y la anotación de una muestra secuenciada mediante el uso de GATK, Linux, vcftools y otras herramientas de anotación y visualización de la región blanco.

**SOFTWARES DE BIOINFORMÁTICA**

**1. GATK O Genome Analysis Toolkit** es un software que presenta ciertas ventajas para el llamado de variantes, tales como, la integración de evidencia de variantes de múltiples muestras con genotipado conjunto, permite el uso de polimorfismos de un solo nucleótido (SNP) e Indels validados para mejorar la precisión de la llamada de variante y sus métodos se implementan de una manera susceptible a lecturas que se originan en una variedad de preparación de plantillas (McCormick, Truong, & Mullet, 2015). Sin embargo y aunque, como se ha visto, la precisión de esta tubería ya es alta, los falsos positivos (FP) siguen siendo inevitables, por lo que, después de la llamada de variantes, se recomienda filtrar los FP como parte de las buenas prácticas del software [(Tan et al., 2020)](https://www.biorxiv.org/content/10.1101/2020.03.23.003525v1).

**2. PICARD TOOLS** Es un conjunto de herramientas para manipular datos y formatos de secuenciación de alto rendimiento (HTS) como SAM / BAM / CRAM y VCF. El kit de herramientas de Picard es de código abierto y gratuito para todos los usos.

**3.HAPLOTYPECALLER** Es una herramienta que contiene una serie de funciones aplicadas al descubrimiento de variantes de la línea germinal de ADN.

**4. vcftools** es un software diseñado para trabajar con archivos VCF, como los generados por el Proyecto 1000 Genomas. El objetivo de VCFtools es proporcionar métodos de fácil acceso para trabajar con datos complejos de variación genética en forma de archivos VCF. El manual actualizado de comandos se puede encontrar en este [link](https://vcftools.github.io/man_latest.html)


## :white_check_mark: OBJETIVOS 
1. Realizar el llamado de variantes de una secuencia de Salmo salar obtenida por secuenciación de extremos emparejados.

## :white_check_mark: ORIGEN DE LAS MUESTRAS UTILIZADAS
Las muestras SRR2009653.fastq_1, SRR2009653.fastq_2. Provienen de un set de 45 secuencias de salmón del atlántico obtenidas por secuenciación de extremos emparejados con Illumina HiSeq2000 para analizar la resistencia a la necrosis pancreática infecciosa (IPN), con el fin de identificar polimorfismos que mostraban un gran contraste entre peces resistentes o susceptibles al IPN.

## :white_check_mark: ETAPAS DEL LLAMADO DE VARIANTES 
1. Descarga de secuencia y genoma de referencia
2. Indexación del genoma de referencia
3. Descarga, filtrado y alineamiento de secuencia de estudio (Secuencia sort.bam)
4. Añadir grupos de lectura al archivo “bam”
5. Indexación del archivo obtenido al añadir los grupos de lectura
6. Identificación de variantes con HaplotypeCaller de GATK
7. Análisis de variantes con linux y vcftools
8. Visualización de variantes con IGV

## :white_check_mark: TRABAJO PRÁCTICO

### 1. Conectar a servidor Pomeo
Recordar que como estamos trabajando con Windows , usamos el software PuTTy para hacer la conexión con el servidor Pomeo, utilizando el usuario y contraseña correspondiente.  <br />
haz clic [aquí para recordar la conexión remota con el servidor POMEO](https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png)<br />
haz clic [aquí para recordar el ingreso para trabajar en la terminal](https://user-images.githubusercontent.com/84527634/123138222-c7bd9880-d422-11eb-827e-d4c4bd926f4e.png)<br />

### 2. Configurar bioconda e instalar programas para los análisis
Para configurar el canal bioconda se debe ejecutar el siguiente comando:
```
conda config --add channels bioconda
```
Para Instalar el software gatk4, se deje ejecutar el siguiente comando:

```
conda install -c bioconda gatk4
```
Para Instalar picard tools, ejecutar el siguiente comando:
```
wget https://github.com/broadinstitute/picard/releases/download/2.8.1/picard.jar
```
Para Instalar los software vcftools
```
conda install -c bioconda vcftools
```
**Cabe señalar que en esa práctica también se utilizará Samtools (que fue instalado en la práctica anterior)**

PARA VER EJEMPLO EN LA TERMINAL HACER CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/e9ead1405d9be40f12b25204429870da3e0c9cfd/PR%C3%81CTICA%205/EJEMPLOS%20EN%20LA%20TERMINAL/2.%20Configurar%20bioconda%20e%20instalar%20programas%20para%20los%20an%C3%A1lisis)

### 3. Directorio de trabajo “variant_call” y preparación de los archivos para el llamado de variantes
El directorio y los archivos necesarios para ejecutar esta práctica fueron creados e instalados en el directorio personal previamente. Es por ello, que solo es necesario ingresar al directorio “variant_call” y explorar los archivos de trabajo.

Para ingresar al directorio de trabajo variant_call, se debe ejecutar el siguiente comando:
```
cd variant_call
```
Posteriormente para listar los archivos contenidos en el, podemos usar el comando:
```
ls -l -h
```
El directorio de trabajo variant_call contiene los siguientes archivos necesarios para efectuar el llamado de variantes:
- "SRR2006763.sort.bam": previamente obtenido con las prácticas anteriores.
- ref_genome.fna: genoma de referencia de _Salmo salar_ en formato FASTA
- ref_genome.fna.fai: archivo indexado del genoma de referencia con 5 columna que corresponden a columnas 1= contig, 2 = tamaño, 3= ubicación, 4= basesPerLine y 5= bytesPerLine.

Para explorar los archivos “ref_genome.fna” y “ref_genome.fna.bai” se pueden utilizar los comandos less, head, tail.
```
less ref_genome.fna
```
```
less ref_genome.fna.fai
```
```
head -n 20 ref_genome.fna
```
```
head -n 30 ref_genome.fna.fai 
```
```
tail -n 20 ref_genome.fna
```
```
tail -n 20 ref_genome.fna.fai
```
 Para investigar los cromosomas del salmón, se pueden usar los siguientes comandos.
 ```
 grep 'NC_' ref_genome.fna
 ```
 ```
grep -c 'NC_' ref_genome.fna
```
```
grep 'NC_' ref_genome.fna.fai
```
```
grep -c 'NC_' ref_genome.fna.fai
```
Para Investigar los contigs no mapeados del salmón usar los siguientes comandos.
```
grep -c 'NW_' ref_genome.fna
```
```
grep -c 'NW_' ref_genome.fna.fai
```
**Note que en todos los casos el comando trabaja más rápido en el archivo indexado .fai** <br />
PARA VER EJEMPLO EN LA TERMINAL HACER CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/b57166f67a05c3ef25e05ded28d2ae838d76fabf/PR%C3%81CTICA%205/EJEMPLOS%20EN%20LA%20TERMINAL/3.%20Directorio%20de%20trabajo%20%E2%80%9Cvariant_call%E2%80%9D%20y%20preparaci%C3%B3n%20de%20los%20archivos%20para%20el%20llamado%20de%20variantes.txt)

### 4.  Llamado de variantes
Para realizar el llamado de variantes debe obtener primero un archivo que representará un “diccionario de referencias” del genoma de referencia, para ello deberá ejecutar el siguiente comando
```
java -jar picard.jar CreateSequenceDictionary R=ref_genome.fna O=ref_genome.dict
```
La salidad del comando anterior será un archivo con extensión .dict, explorero con less o head.
```
less ref_genome.dict
```
```
head ref_genome.dict
```
Añadir grupos de reads al archivo sort bam
```
java -jar picard.jar AddOrReplaceReadGroups I=SRR2006763.sort.bam O=SSRR2006763_sorted_RG.bam ID=sample LB=Paired-end PL=Illumina PU=Unknown SM=sample
```
Indexar archivo generado con Read groups con el comando
```
samtools index SSRR2006763_sorted_RG.bam
```
Finalmente, para el llamado de variantes se debe ejecutar el comando HaplotypeCaller del sofatware GATK. Ejecutar el siguiente comando para el llamado de variantes, debe considerar que este proceso demorará al menos una hora
```
gatk HaplotypeCaller -R ref_genome.fna -I SSRR2006763_sorted_RG.bam -O raw_variants.vcf
```
Al culminar la ejecución del comando liste su directorio con ls y verifique que se ha creado su archivo de salida
```
raw_variants.vcf
```
 Explore el archivo de llamado raw_variants con los comandos less, head, tail
 ```
 less raw_variants.vcf
head -n 30 raw_variants.vcf
tail -n 30 raw_variants.vcf
```
Note que la mayoría corresponde a los cromosomas y contigs, por lo que las variantes están muy abajo en el archivo y solo podemos ver algunas variantes del genoma mitocondrial cuando usamos el comando tail.

Use grep para contar el numero de lineas en el “vcf header”.
 ```
grep "^#" -c  raw_variants.vcf
```
Ahora, use grep para contar el número de variantes detectadas
```
grep "^#" -c -v raw_variants.vcf
```
El llamado de variantes lo hemos hecho con una sola biomuestra, por lo que podríamos listar el nombre de esta muestra usando el siguiente comando

```
grep "^#CHROM" raw_variants.vcf | cut -f 10-
```
¿Cómo entender la codificación de los archivos vcf?

La principal complejidad de los archivos vcf radica en la forma en que está codificada la información contenida en el. Afortunadamente en el mismo archivo podemos encontrar alguna información para poder comprender de mejor forma como interpretar las variantes encontradas.

Primero, ejecute el siguiente comando para imprimir el nombre de las columnas del llamado de variantes
```
grep "^#CHROM" raw_variants.vcf
```
Luego, ejecute el siguiente comando para listar las 10 primeras variantes.
```
grep "^#" -v raw_variants.vcf | head
```
Finalmente, ejecute estos comandos para entender la codificación de la columna INFO y FORMAT que contine la información del genotipo de la muestra para las primeras 10 variantes
```
grep "##INFO" raw_variants.vcf
grep "##FORMAT" raw_variants.vcf
```
Extraer variantes con alta calidad
Ya hemos determinado que existen cera de 50.000 variantes, pero no todas ellas tienen alta calidad, lo que está determinado básicamente por el número de reads sobre los cuales se han identificado las variantes. En terminos muy básicos la mayor calidad estará dada por un alto número de reads. El siguiente comando permitirá extraer las variantes con calidad mayor a 100. Note que el comando se divide en tres partes, la primera extrae solo las variantes del archivo .vcf, luego con una tubería y el comando awk de linux extraemos e imprimimos solo las filas con calidad mayor a 100 (en la columna 6 está la calidad) y finalmente llevamos el print a un fichero denominado hq_variant.txt (variantes de alta calidad) el cual podemos explorar.
```
grep -v "#" raw_variants.vcf | awk '{if ($6 > 100 ) print }' > hq_variant.txt

grep "NC_" -c -v hq_variant.txt
grep "NW_" -c -v hq_variant.txt
```

PARA VER EJEMPLO EN LA TERMINAL HACER CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/aed60cf01e1b33bca58941b037571b62839aa25e/PR%C3%81CTICA%205/EJEMPLOS%20EN%20LA%20TERMINAL/4.%20LLamado%20de%20variantes.txt)

### 5. Análisis de variantes con linux y vcftools

vcftools es una potente herramienta de análisis de archivos vcf, lo que nos permite simplificar esta tarea.
Para contar individuos y variantes de un archivo .vcf ejecute el siguiente comando
 ```
 vcftools --vcf raw_variants.vcf
 ```
 Para determinar las frecuencias de todos los alelos ejecute el siguiente comando
 ```
 vcftools --vcf raw_variants.vcf --freq -c > hq.freqs.txt
 ```
 También es posible filtrar por algún cromosoma particular incluyendo el argumento –chr, o podemos excluir por ejemplo el genoma mitocondrial con –not-chr
 ```
 vcftools --vcf raw_variants.vcf --chr NC_027300.1
vcftools --vcf raw_variants.vcf --freq -c --chr NC_027300.1

vcftools --vcf raw_variants.vcf –not-chr NC_001960.1
vcftools --vcf raw_variants.vcf --freq -c --not-chr NC_001960.1
  ```
 Finalmente podemos extraer solo los INDELS con el argumento –keep-only-indel o solo los SNP –remove-indels
  ```
 vcftools --vcf raw_variants.vcf --freq -c --chr NC_027300.1 --keep-only-indels
vcftools --vcf raw_variants.vcf --freq -c --chr NC_027300.1 --remove-indels
 ```
 PARA VER EJEMPLO EN LA TERMINAL HACER CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/aed60cf01e1b33bca58941b037571b62839aa25e/PR%C3%81CTICA%205/EJEMPLOS%20EN%20LA%20TERMINAL/5%20.%20An%C3%A1lisis%20de%20variantes%20con%20vcftools.txt)
 
 ### 6. Visualización de variantes con IGV
Posteriormente se descargo el arrchivo raw_variants.vcf iniciando sesión online en el servidor POMEO a través de [Rstudio server](http://200.54.220.141:8787/auth-sign-in) 
y sse exploro con el software IGV.<br />
Para ver el archivo raw_variants.vcf descargado haz clic [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/a5c7b0094229665fe51daedd9953e51bf8218aa0/PR%C3%81CTICA%205/ARCHIVOS%20DESCARGADOS/raw_variants.vcf)
![ARCHIVO RAW_VARIANTS VCF CARGADO EN IGV](https://user-images.githubusercontent.com/84527634/123698125-c37eea00-d82b-11eb-9078-abd5c7f53b87.png)


## :white_check_mark: REFERENCIAS Y LINK DE INTERÉS
1. Danecek, P., Auton, A., Abecasis, G., Albers, C., Banks, E., DePristo, M., . . . Durbin, R. (2011). The variant call format and VCFtools. Bioinformatics, 2156–2158.
2. Deatherage, E. (2020). Genome Analysis Toolkit (GATK). Obtenido de https://wikis.utexas.edu/display/bioiteam/Genome+Analysis+Toolkit+%28GATK%29+.+--+GVA2020
3. Cingolani, P., Platts, A., Wang, L., Coon, M., Nguyen, T., Wang, L., . . . Ruden, D. (2012). A program for annotating and predicting the effects of single nucleotide polymorphisms, SnpEff. Fly, 80-92.
4. Liu, X., White, S., Peng, B., Johnson, A., Brody, J., Li, A., . . . Klein, B. E. (2015). WGSA: an annotation pipeline for human genome sequencing studies. JMG, 1-3.
5. McCormick, R., Truong, S., & Mullet, J. (2015). RIG: Recalibration and Interrelation of Genomic Sequence Data with the GATK. G3: Genes, Genomes, Genetics, 655 - 665.
6. Tan, Y., Zhang, Y., Yang, H., & Yin, Z. (2020). FPfilter: A false-positive-specific filter for whole-genome sequencing variant calling from GATK. bioRxiv, 1-16.
