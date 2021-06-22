## PRÁCTICA 4: INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS-ALINEAMIENTO

### INTRODUCCIÓN
El alineamiento o mapeo de las secuencias cortas reads que se obtiene de la secuenciacion NGS con un genoma de referencia se considera una parte integral de los análisis de genomas [(Pham-Quoc et al., 2019)](https://onlinelibrary.wiley.com/doi/abs/10.1002/cpe.5328). 
El problema del mapeo de reads consiste en ubicar o alinear dentro de un genoma de referencia previamente secuenciado los millones de reads para luego ensamblarlas a un nuevo genoma [(Bak et al., 2020)](https://apcz.umk.pl/czasopisma/index.php/TRVS/article/view/TRVS.2020.005) o en el caso de que no exista un genoma de referencia realizar un ensamble de novo.
Para realizar esta tarea se han desarrollado varios programas como lo son, BWA [(Li and Durbin, 2009)](https://academic.oup.com/bioinformatics/article/25/14/1754/225615), Bowtie 2 [(JHU, 2016)](http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml) y otros, cuya función principal es hacer coincidir secuencias cortas provenientes de NGS con secuencias de referencia [(Bak et al., 2020)](https://apcz.umk.pl/czasopisma/index.php/TRVS/article/view/TRVS.2020.005). Actualmente, BWA es un software muy popular para fines de alineamiento, debido a su compatibilidad con datos de Illumina y la integración de distintos algoritmos de alineamiento con mayor rendimiento para reads de distintas longitudes [(Li and Durbin, 2009)](https://academic.oup.com/bioinformatics/article/25/14/1754/225615).
El resultado del mapeo o alineamiento se guarda en un archivo de texto plano con formato SAM (Sequence Alignment Map) o su equivalente comprimido en binario (BAM). Este archivo contiene de forma codificada toda la información de dónde y cómo cada read se alineo al genoma de referencia. De este archivo posteriormente se puede extraer información de variantes para análisis poblacional, estudios de asociación genómica o información de conteo de reads en regiones codificantes para en análisis de expresión de genes.

**SOFTWARES DE BIOINFORMÁTICA**

**1. BWA**
Es un algoritmo de alineación para alinear lecturas de secuencia o secuencias de consulta largas con un genoma de referencia grande como el humano. Elige automáticamente entre alineaciones locales y de extremo a extremo y admite lecturas de extremos emparejados (Li, 2013).
Puedes visualizar las opciones y más información de bwa [Aquí](http://bio-bwa.sourceforge.net/bwa.shtml)

**2. Samtools**
Es un conjunto de utilidades que manipulan alineaciones en los formatos SAM (Sequence Alignment Map), BAM y CRAM. Convierte entre los formatos, clasifica, fusiona e indexa, y puede recuperar lecturas en cualquier región rápidamente.
Puedes tener más información sobre este programa [Aquí](https://www.htslib.org/doc/samtools.html)

### OBJETIVOS 

1. Realizar el alineamiento de una muestra en formato .fastq a un genoma de referencia.


### TRABAJO PRÁCTICO

### 1. Conectar a servidor Pomeo
Para Windows es posible conectarse con el software PuTTy utilizando usuario y contraseña correspondiente, tal como se detalló en las prácticas 2 y 3. <br />
haz clic [aquí para recordar la conexión remota con el servidor POMEO](https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png)<br />
haz clic [aquí para recordar el ingreso para trabajar en la terminal](https://user-images.githubusercontent.com/84527634/122123842-844ca400-cdfc-11eb-84dd-e1f942bf16ce.png)<br />

### 2. Instalación y configuración de software.
Para configurar el canal bioconda se debe ejecutar el siguiente comando

conda config --add channels bioconda

Instalar los software bwa

### 3. Verificar directorios de instalación

### 4. Creación de directorio de trabajo y descarga de datos para alineamiento

### 5. Indexación del genoma de referencia
### 6. Alineamiento
-	Obtener secuencias Fastq
-	Descarga genoma mitocondrial
-	Subir genoma a POMEO con software de acceso remoto
-	Indexación genoma mitocondrial
-	Alineamiento de secuencias contra genoma mitocondrial
-	Conversión SAM a BAM
-	Orden de lecturas alineadas por posición
-	Indexación con Samtools 
-	Exploración de archivos de salida en cada etapa

**6.1. 	BWA**
**6.2. 	Samtools**


### REFERENCIAS Y LINK DE INTERÉS
1. Pham-Quoc, C., Kieu-Do, B., & Thinh, T. N. (2019). A high-performance FPGA-based BWA-MEM DNA sequence alignment. Wiley, 1-12.
2. Li, H., & Durbin, R. (2009). Fast and accurate short read alignment with Burrows-Wheeler Transform. Bioinformatics, 1754-60.
3. JHU. (2016). Johns Hopkins University. Obtenido de Manual of Bowtie 2 - Fast and sensitive read alignment.

