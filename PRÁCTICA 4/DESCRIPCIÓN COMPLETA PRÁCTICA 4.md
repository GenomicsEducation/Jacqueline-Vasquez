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

### 2. Instalación y configuración de softwares BWA -	Samtools
Para configurar el canal bioconda se debe ejecutar el siguiente comando
```
conda config --add channels bioconda
```
Para Instalar el software BWA ejecutar el siguiente comando
```
conda install -c bioconda bwa
```
Para Instalar samtools se requiere un proceso de instalación un poco más largo, para ello ejecute los siguientes comandos uno por uno. 
```
conda install -c bioconda samtools

conda config --add channels bioconda 

conda config --add channels conda-forge 

conda install samtools==1.11
```
PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ]

### 3. Verificar directorios de instalación
Si desea constatar la ruta de instalación de un programa determinado puedes colocar el comando “whereis” en la terminal más el programa del que desea obtener la ruta.
En este caso constataremos la instalación de sratoolkit, samtools y BWA. 
```
whereis sratoolkit 
 whereis samtools
 whereis bwa 
 ```
 La salida de cada comando indicará la ruta de instalación como sigue, para cada programa del que desees obtener información.EJEMPLO:
 ```
 /home2/usuario/miniconda3/bin/bwa
  ```
PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ]
 
### 4. ETAPAS DE ALINEAMIENTO

#### **4.1 Creación de directorio de trabajo y Obtención de las secuencias Fastq**
Considerando que nuestras secuencias fastq originales (Obtenidas en la práctica 3), tuvieron muy buena calidad, es posible trabajar directamente con ellas. Para ambos casos debes trasladar los archivos a una nueva carpeta, y para ello debes crear una carpeta denominada en tu usuario de home2. En este caso crearemos la carpeta de alineamiento ejecutando el siguiente comando:
```
mkdir alineamiento
```
Luego Ingresar a la carpeta “alineamiento” y transferir a esa carpeta los archivos de la práctica 3 (SRR2006763_1.fastq y SRR2006763/SRR2006763_2.fastq), colocando los siguientes comandos en la terminal:
```
mv /home2/usuario/SRA_samples/SRR2006763/SRR2006763_1.fastq /home2/usuario/alineamiento/
mv /home2/usuario/SRA_samples/SRR2006763/SRR2006763_2.fastq /home2/usuario/alineamiento/
```
Lista tu carpeta de alineamiento para verificar que tienes lo necesario para el alineamiento, hasta ahora deben constar tus dos secuencias “SRR2006763_1.fastq” y “SRR2006763_2.fastq”
Para listar debes ejecutar el siguiente comando
```
ls
```
#### **4.2 Descargar genoma mitocondrial desde NCBI**
Para descargar el genoma de referencia de la mitocondria de *Salmo salar* lo puedes hacer a través del siguiente link
[genoma mitocondrial del *Salmo salar*](https://www.ncbi.nlm.nih.gov/genome/?term=salmo+salar)

Entraras a la siguiente página web
![genoma de la mitocondria](https://user-images.githubusercontent.com/84527634/123015501-8d0e1e80-d396-11eb-8039-c4968cfc6224.png)

Al bajar dentro de la página, encontrarás una tabla con el listado del genoma de referencia donde se incluyen todos los cromosomas y el genoma de la mitocondria cuyo identificardor RefSeq NC_001960.1 donde debes hacer clic, tal como se muestra en la siguiente imagen. 
![genoma de la mitocondria 2](https://user-images.githubusercontent.com/84527634/123015776-17ef1900-d397-11eb-80c1-e6eadd282d8a.png)

Posteriormente se abrira la siguiente página, donde deberás hacer clic en la opción FASTA localizada bajo el título e identificador RefSeq de la referencia.
![genoma de la mitocondria 3](https://user-images.githubusercontent.com/84527634/123015900-71efde80-d397-11eb-896c-a17da450a58d.png)

Posteriormente para descargar la secuencia FASTA debes seguir las instrucciones de la siguiente imagen:
![genoma de la mitocondria 4](https://user-images.githubusercontent.com/84527634/123016198-0fe3a900-d398-11eb-8563-59828506a684.png)

Luego debes ir a tu carpeta de descargas en tu computador y encontrarás el archivo denominado “sequence.fasta” al que debes renombrar como “mt.fasta” y subirlo a POMEO en tu carpeta de alineamiento.

#### **4.3 Subir genoma mitocondrila a POMEO con software de acceso remoto WINSCP.**
Para subir el archivo a POMEO trabajaremos con el software WINSCP, para ello debes abrirlo e iniciar sesión, guardar tus datos y conectarte como se indica en la siguiente imagen. 
![WINSCP](https://user-images.githubusercontent.com/84527634/123017475-a87b2880-d39a-11eb-9352-febe01e1a497.png)

Al conectar te volverá a pedir tu contraseña como se muestra en la siguiente imagen y posteriormente se abrirá la interfaz de tu servidor con las carpetas que tienes creadas, aquí ingresarás en tu carpeta de alineamiento y arrastrarás el archivo descagado del genoma mitocondrial a la misma. 

![agregar genoma mitocondrial](https://user-images.githubusercontent.com/84527634/123017895-87ff9e00-d39b-11eb-8998-dbd45f8c2f22.png)

Alternativamente puedes cargar el genoma iniciando sesión online en el servidor POMEO a través de [Rstudio server](http://200.54.220.141:8787/auth-sign-in)

#### **4.4 Indexación del genoma Mitocondrial.**
Una vez que incluiste en tu carpeta de alineamiento todos los archivos descritos en pasos anteriores podemos proceder a la etapa inicial del alineamiento, que corresponde a la indexación del genoma de referencia con BWA usando el siguiente comando:
```
bwa index mt.fasta
```
La salida del comando dará como resultado 5 archivos con extensiones “amb”,“ann”,“bwt”,“pac” y “sa”

#### **4.5 Alineamiento de las secuencias contra el genoma mitocondrial**
Para el alineamiento tendremos las siguientes etapas:
1. Alineamiento de las secuencias contra el genoma de referencia, cuya salida será un archivo con extensión “.sam”
2. Conversión del archivo SAM a BAM
3. Inspeccionar el archivo .sam de salida
4. Ordenar lecturas alineadas por posición
5. Indexación con Samtools
6. Exploración de datos con Samtools
Para ejecutar todas las etapas anteriores en ese orden se debe crear un script con nano denominado aln_mt.sh
```
nano aln_mt.sh
```
Para ver el script puedes hacer clic [Aquí]

En el script coloca las siguientes instrucciones:
```
#!/bin/bash -l
# para alinear tus dos secuencias fastq al genoma mitocondrial
bwa mem mt.fasta SRR2006763_1.fastq SRR2006763_2.fastq > SRR2006763.sam 
# Transformar tu archivo sam a bam
samtools view -Sb -q 30 SRR2006763.sam > SRR2006763.bam 
# ordenar tu archivo binario bam
samtools sort SRR2006763.bam -o SRR2006763.sort.bam 
# indexar tu archivo bam
samtools index SRR2006763.sort.bam 
```
Ejecuta tu script con bash
```
bash aln_mt.sh
```
Ahora que ya tienes tus archivos SAM/BAM puedes observar tu archivo sam con el comando less de linux (recuerda que es un archivo de texto plano)
```
less SRR2006763.sam
```
también puedes realizar un análisis estadístico estandar con los siguientes comandos
```
samtools flagstat SRR2006763.bam > muestra_stat.txt
```
**Algunas observaciones adicionales**
- BWA-MEM se recomienda para secuencias de más de ~70 pb, ya que, generalmente BWA-MEM es más tolerante con los errores dadas las secuencias más largas.
- Si quieres ver lo que sucede en cada etapa de alineamiento, puedes colocar en la terminal cada comando del script de forma individual, por ejemplo:
- Para alinear tus dos secuencias fastq al genoma mitocondrial
```
bwa mem mt.fasta SRR2006763_1.fastq SRR2006763_2.fastq > SRR2006763.sam
```
Para Transformar tu archivo sam a bam
```
samtools view -Sb -q 30 SRR2006763.sam > SRR2006763.bam
```
Para ordenar tu archivo binario bam
```
samtools sort SRR2006763.bam -o SRR2006763.sort.bam
```
Para indexar tu archivo bam
```
samtools index SRR2006763.sort.bam
```
- El archivo bam no se puede visualizar directamente porque está comprimido y en binario.
- Procura listar tu carpeta cada vez que realices un trabajo, una descarga, o ejecutes un script para comprobar tus salidas.
- Si quieres comprobar los tamaños de tus archivos al mismo tiempo que los listas, puedes hacerlo con
```
ls -l -h
```

### REFERENCIAS Y LINK DE INTERÉS
1. Pham-Quoc, C., Kieu-Do, B., & Thinh, T. N. (2019). A high-performance FPGA-based BWA-MEM DNA sequence alignment. Wiley, 1-12.
2. Li, H., & Durbin, R. (2009). Fast and accurate short read alignment with Burrows-Wheeler Transform. Bioinformatics, 1754-60.
3. JHU. (2016). Johns Hopkins University. Obtenido de Manual of Bowtie 2 - Fast and sensitive read alignment.

