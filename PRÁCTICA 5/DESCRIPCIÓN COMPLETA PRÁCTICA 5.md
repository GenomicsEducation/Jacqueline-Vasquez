
## PRÁCTICA 5: INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS - LLAMADO DE VARIANTES

### INTRODUCCIÓN
Dentro de los principales usos de la secuenciación de próxima generación es descubrir variantes genéticas o mutaciones entre individuos que pertenecen a diferentes poblaciones [(Danecek et al., 2011)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3137218/). Con este fin, se han desarrollado tuberías que incluyen el procesamiento de grandes volúmenes de datos como el proyecto internacional 1000 genomas humanos, o el proyecto chileno de 1000 genomas que pretende secuenciar e identificar varianes en 1000 personas y en algunas especies endémicas de interes.
Uno de los softwares más empleados para realizar esta tarea denominada “llamado de variantes”, es GATK, que se comprende como un kit de herramientas de análisis de genomas desarrollado por el Broad Institute de los Estados Unidos, que tiene la capacidad de realizar gran parte del análisis requerido para llamar variantes genómicas [(Deatherage, 2020)](https://wikis.utexas.edu/display/bioiteam/Genome+Analysis+Toolkit+%28GATK%29+.+--+GVA2020)
El presente trabajo tiene por objeto realizar el llamado de variantes y la anotación de una muestra secuenciada mediante el uso de GATK, Linux, vcftools y otras herramientas de anotación y visualización de la región blanco.

**SOFTWARES DE BIOINFORMÁTICA**

**1. GATK O Genome Analysis Toolkit** es un software que presenta ciertas ventajas para el llamado de variantes, tales como, la integración de evidencia de variantes de múltiples muestras con genotipado conjunto, permite el uso de polimorfismos de un solo nucleótido (SNP) e Indels validados para mejorar la precisión de la llamada de variante y sus métodos se implementan de una manera susceptible a lecturas que se originan en una variedad de preparación de plantillas (McCormick, Truong, & Mullet, 2015). Sin embargo y aunque, como se ha visto, la precisión de esta tubería ya es alta, los falsos positivos (FP) siguen siendo inevitables, por lo que, después de la llamada de variantes, se recomienda filtrar los FP como parte de las buenas prácticas del software [(Tan et al., 2020)](https://www.biorxiv.org/content/10.1101/2020.03.23.003525v1).

**2. PICARD TOOLS** Es un conjunto de herramientas para manipular datos y formatos de secuenciación de alto rendimiento (HTS) como SAM / BAM / CRAM y VCF. El kit de herramientas de Picard es de código abierto y gratuito para todos los usos.

**3.HAPLOTYPECALLER** Es una herramienta que contiene una serie de funciones aplicadas al descubrimiento de variantes de la línea germinal de ADN.

**4. vcftools** es un software diseñado para trabajar con archivos VCF, como los generados por el Proyecto 1000 Genomas. El objetivo de VCFtools es proporcionar métodos de fácil acceso para trabajar con datos complejos de variación genética en forma de archivos VCF. El manual actualizado de comandos se puede encontrar en este [link](https://vcftools.github.io/man_latest.html)


### OBJETIVOS 
1. Realizar el llamado de variantes de una secuencia de Salmo salar obtenida por secuenciación de extremos emparejados.

### ORIGEN DE LAS MUESTRAS UTILIZADAS
Las muestras SRR2009653.fastq_1, SRR2009653.fastq_2. Provienen de un set de 45 secuencias de salmón del atlántico obtenidas por secuenciación de extremos emparejados con Illumina HiSeq2000 para analizar la resistencia a la necrosis pancreática infecciosa (IPN), con el fin de identificar polimorfismos que mostraban un gran contraste entre peces resistentes o susceptibles al IPN.

### ETAPAS DEL LLAMADO DE VARIANTES 
1. Descarga de secuencia y genoma de referencia
2. Indexación del genoma de referencia
3. Descarga, filtrado y alineamiento de secuencia de estudio (Secuencia sort.bam)
4. Añadir grupos de lectura al archivo “bam”
5. Indexación del archivo obtenido al añadir los grupos de lectura
6. Identificación de variantes con HaplotypeCaller de GATK
7. Análisis de variantes con linux y vcftools
8. Visualización de variantes con IGV

### TRABAJO PRÁCTICO

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

PARA VER EJEMPLO EN LA TERMINAL HACER CLIC [AQUÍ]

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
 Para investigar ahora los cromosomas del salmón, se pueden usar los siguientes comandos.
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
Para Investigar ahora los contigs no mapeados del salmón usar los siguientes comandos.
```
grep -c 'NW_' ref_genome.fna
```
```
grep -c 'NW_' ref_genome.fna.fai
```
**Note que en todos los casos el comando trabaja más rápido en el archivo indexado .fai**

### 4.  Llamado de variantes
#### 4.1  Descarga de secuencia y genoma de referencia

#### 4.2 Indexación del genoma de referencia

#### 4.3 Descarga, filtrado y alineamiento de secuencia de estudio (Secuencia sort.bam)

#### 4.4 Añadir grupos de lectura al archivo “bam”

#### 4.5 Indexación del archivo obtenido al añadir los grupos de lectura
#### 4.6 Identificación de variantes con HaplotypeCaller de GATK
#### 4.7 Análisis de variantes con linux y vcftools
#### 4.8 Visualización de variantes con IGV

### REFERENCIAS Y LINK DE INTERÉS
