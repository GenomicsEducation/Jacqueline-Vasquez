## PRÁCTICA 4: INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS-ALINEAMIENTO

## :white_check_mark: INTRODUCCIÓN
El alineamiento o mapeo de las secuencias cortas reads que se obtiene de la secuenciacion NGS con un genoma de referencia se considera una parte integral de los análisis de genomas [(Pham-Quoc et al., 2019)](https://onlinelibrary.wiley.com/doi/abs/10.1002/cpe.5328). 
El problema del mapeo de reads consiste en ubicar o alinear dentro de un genoma de referencia previamente secuenciado los millones de reads para luego ensamblarlas a un nuevo genoma [(Bak et al., 2020)](https://apcz.umk.pl/czasopisma/index.php/TRVS/article/view/TRVS.2020.005) o en el caso de que no exista un genoma de referencia realizar un ensamble de novo.
Para realizar esta tarea se han desarrollado varios programas como lo son, BWA [(Li and Durbin, 2009)](https://academic.oup.com/bioinformatics/article/25/14/1754/225615), Bowtie 2 [(JHU, 2016)](http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml) y otros, cuya función principal es hacer coincidir secuencias cortas provenientes de NGS con secuencias de referencia [(Bak et al., 2020)](https://apcz.umk.pl/czasopisma/index.php/TRVS/article/view/TRVS.2020.005). Actualmente, BWA es un software muy popular para fines de alineamiento, debido a su compatibilidad con datos de Illumina y la integración de distintos algoritmos de alineamiento con mayor rendimiento para reads de distintas longitudes [(Li and Durbin, 2009)](https://academic.oup.com/bioinformatics/article/25/14/1754/225615).
El resultado del mapeo o alineamiento se guarda en un archivo de texto plano con formato SAM (Sequence Alignment Map) o su equivalente comprimido en binario (BAM). Este archivo contiene de forma codificada toda la información de dónde y cómo cada read se alineo al genoma de referencia. De este archivo posteriormente se puede extraer información de variantes para análisis poblacional, estudios de asociación genómica o información de conteo de reads en regiones codificantes para en análisis de expresión de genes.

**FORMATO SAM** 
El formato SAM consta de un encabezado que comienza con el símbolo @ y una sección de alineamiento que contiene la información de cada uno de los reads que alineo al genoma de referencia. Para conocer más acerca del formato SAM puedes revisar el paper que describe el formato o simplmente en wikipedia. Los archivos SAM se pueden analizar y editar con el software SAMtools. A continuación se muestra un ejemplo del formato SAM con los 11 campos obligatorios del alineamiento y 1 campo opcional.

<div align="center">
<p>FORMATO SAM</p>
<img src="https://user-images.githubusercontent.com/84527634/125715781-427b9bae-3928-4a77-b629-29e146d22628.png" height="400">
</div>

**SOFTWARES DE BIOINFORMÁTICA**

**1. BWA**
Es un algoritmo de alineación para alinear lecturas de secuencia o secuencias de consulta largas con un genoma de referencia grande como el humano. Elige automáticamente entre alineaciones locales y de extremo a extremo y admite lecturas de extremos emparejados (Li, 2013).
Puedes visualizar las opciones y más información de bwa [Aquí](http://bio-bwa.sourceforge.net/bwa.shtml)

**2. Samtools**
Es un conjunto de utilidades que manipulan alineaciones en los formatos SAM (Sequence Alignment Map), BAM y CRAM. Convierte entre los formatos, clasifica, fusiona e indexa, y puede recuperar lecturas en cualquier región rápidamente.
Puedes tener más información sobre este programa [Aquí](https://www.htslib.org/doc/samtools.html)

## :white_check_mark: OBJETIVOS 

1. Realizar el alineamiento de una muestra en formato .fastq a un genoma de referencia.

## :white_check_mark: ORIGEN DE LAS MUESTRAS
Para facilitar el proceso solo se utilizará una muestra la que provieme de la base de datos SRA del NCBI y corresponden a lecturas crudas del salmón del Atlántico Salmo salar en formato fastq, obtenidas por secuenciación de extremos emparejados con un secuenciador Illumina HiSeq2000.
La muestra se alineará al genoma de la mitocondria del salmón del Atlántico puesto que dado que su pequeño tamaño, el alineamiento no debería tardar más de unos pocos minutos.

## :white_check_mark: TRABAJO PRÁCTICO

### 1. Conectar a servidor Pomeo
Para Windows es posible conectarse con el software PuTTy utilizando usuario y contraseña correspondiente, tal como se detalló en las prácticas 2 y 3. <br />
haz clic [aquí para recordar la conexión remota con el servidor POMEO](https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png)<br />
haz clic [aquí para recordar el ingreso para trabajar en la terminal](https://user-images.githubusercontent.com/84527634/123138222-c7bd9880-d422-11eb-827e-d4c4bd926f4e.png)<br />

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
:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/0c980d5580e3915d5bb8a1ce0e4f16903acef194/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/2.%20Instalaci%C3%B3n%20y%20configuraci%C3%B3n%20de%20softwares%20BWA%20-%20Samtools)

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
:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/0c980d5580e3915d5bb8a1ce0e4f16903acef194/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/3.%20Verificar%20directorios%20de%20instalaci%C3%B3n)
 
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
:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/e79bb127fc765a9d7f93babfb6cfb5cb3c55ab49/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/4.1%20Creaci%C3%B3n%20de%20directorio%20de%20trabajo%20y%20Obtenci%C3%B3n%20de%20las%20secuencias%20Fastq)

#### **4.2 Descargar genoma mitocondrial desde NCBI**
Para descargar el genoma de referencia de la mitocondria de *Salmo salar* lo puedes hacer a través del siguiente link <br />
[genoma mitocondrial del *Salmo salar*](https://www.ncbi.nlm.nih.gov/genome/?term=salmo+salar)

Entraras a la siguiente página web
<div align=" leftAlign ">
<img src="https://user-images.githubusercontent.com/84527634/123015501-8d0e1e80-d396-11eb-8039-c4968cfc6224.png" height="400">
</div>

Al bajar dentro de la página, encontrarás una tabla con el listado del genoma de referencia donde se incluyen todos los cromosomas y el genoma de la mitocondria cuyo identificardor RefSeq NC_001960.1 donde debes hacer clic, tal como se muestra en la siguiente imagen. 
<div align=" leftAlign ">
<img src="https://user-images.githubusercontent.com/84527634/123015776-17ef1900-d397-11eb-80c1-e6eadd282d8a.png" height="400">
</div>

Posteriormente se abrira la siguiente página, donde deberás hacer clic en la opción FASTA localizada bajo el título e identificador RefSeq de la referencia.
<div align=" leftAlign ">
<img src="https://user-images.githubusercontent.com/84527634/123015900-71efde80-d397-11eb-896c-a17da450a58d.png" height="400">
</div>

Posteriormente para descargar la secuencia FASTA debes seguir las instrucciones de la siguiente imagen:
<div align=" leftAlign ">
<img src="https://user-images.githubusercontent.com/84527634/123016198-0fe3a900-d398-11eb-8563-59828506a684.png" height="400">
</div>

Luego debes ir a tu carpeta de descargas en tu computador y encontrarás el archivo denominado “sequence.fasta” al que debes renombrar como “mt.fasta” y subirlo a POMEO en tu carpeta de alineamiento.

#### **4.3 Subir genoma mitocondrial a POMEO con software de acceso remoto WINSCP.**
Para subir el archivo a POMEO trabajaremos con el software WINSCP, para ello debes abrirlo e iniciar sesión, guardar tus datos y conectarte como se indica en la siguiente imagen. 
![WINSCP](https://user-images.githubusercontent.com/84527634/123017475-a87b2880-d39a-11eb-9352-febe01e1a497.png)

Al conectar te volverá a pedir tu contraseña como se muestra en la siguiente imagen y posteriormente se abrirá la interfaz de tu servidor con las carpetas que tienes creadas, aquí ingresarás en tu carpeta de alineamiento y arrastrarás el archivo descagado del genoma mitocondrial a la misma. 

![agregar genoma mitocondrial](https://user-images.githubusercontent.com/84527634/123137772-54b42200-d422-11eb-93ac-7d20e49da5b4.png)


Alternativamente puedes cargar el genoma iniciando sesión online en el servidor POMEO a través de [Rstudio server](http://200.54.220.141:8787/auth-sign-in)

:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/e79bb127fc765a9d7f93babfb6cfb5cb3c55ab49/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/4.3%20comprobar%20que%20el%20genoma%20descargado%20este%20en%20la%20carpeta%20alineamiento%20desde%20la%20terminal)

#### **4.4 Indexación del genoma Mitocondrial.**
Una vez que incluiste en tu carpeta de alineamiento todos los archivos descritos en pasos anteriores podemos proceder a la etapa inicial del alineamiento, que corresponde a la indexación del genoma de referencia con BWA usando el siguiente comando:
```
bwa index mt.fasta
```
La salida del comando dará como resultado 5 archivos con extensiones “amb”,“ann”,“bwt”,“pac” y “sa”

:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/e79bb127fc765a9d7f93babfb6cfb5cb3c55ab49/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/4.4%20Indexaci%C3%B3n%20del%20genoma%20Mitocondrial)

#### **4.5 Alineamiento de las secuencias contra el genoma mitocondrial** <br />

Para el alineamiento tendremos las siguientes etapas:<br />

**1. Alineamiento de las secuencias contra el genoma mitocondrial**<br />
Ejecutar el siguiente comando
```
bwa mem mt.fasta SRR2006763_1.fastq SRR2006763_2.fastq > SRR2006763.sam
```
**2. Conversión del archivo SAM a BAM**
```
samtools view -Sb -q 30 SRR2006763.sam > SRR2006763.bam
```
**3. Ordenar las lecturas alineadas por posición**
```
samtools sort SRR2006763.bam -o SRR2006763.sort.bam
```
**4. Indexación con Samtools**
```
samtools index SRR2006763.sort.bam
```
Para ejecutar todas las etapas anteriores en ese orden se debe crear un script con nano denominado aln_mt.sh
```
nano aln_mt.sh
```
:page_with_curl: Para ver el script puedes hacer clic [Aquí](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/835441c873495740402d0612091c80f38e61ae9c/PR%C3%81CTICA%204/SCRIPT/aln_mt.sh)

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
:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL UTILIZANDO EL SCRIPT HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/e79bb127fc765a9d7f93babfb6cfb5cb3c55ab49/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/4.5%20Alineamiento%20de%20las%20secuencias%20contra%20el%20genoma%20mitocondrial)

### **5. Exploración de archivos de salida en cada etapa**
El analisis de alineamiento entregará un archivo en formato SAM, el cual consta de un encabezado que comienza con el símbolo @ y una sección de alineamiento que contiene la información de cada uno de los reads que alineo al genoma de referencia. Para conocer más acerca del formato SAM puedes revisar el paper que describe el formato o simplmente en wikipedia. Los archivos SAM se pueden analizar y editar con el software SAMtools. 
A continuación se muestra un ejemplo del formato SAM con los 11 campos obligatorios del alineamiento y 1 campo opcional.
<div align=" leftAlign ">
<img src="https://user-images.githubusercontent.com/84527634/123136376-dc992c80-d420-11eb-8927-2c3f7162510f.png" height="400">
</div>

En la terminal el formato SAM se verá de la siguiente forma:

![formato sam desde la terminal](https://user-images.githubusercontent.com/84527634/123137859-71505a00-d422-11eb-8536-b5bf32fb46d7.png)


Para explorar el alineamiento del formato SAM es posible con samtools a través de los siguientes comandos.<br />
 |                  COMANDOS                      |                FUNCIÓN             |
 |------------------------------------------------|------------------------------------|
 |samtools flags unmap                            | proporciona los reads no mapeados  |
 |samtools flags 77                               | read 1 - emparejado no mapeado |
 |samtools flags 141                              | read 2 - emparejado no mapeado  |
 |samtools flags 99                               | Reverse de un read 1 adecuadamente emparejado |
 |samtools view -f 66 SRR2006763.bam  head -n 10  | Busca solo reads emparejados en el archivo bam |
 
:green_book: PARA VER LA EJECUCIÓN DE COMANDOS EN LA TERMINAL HAZ CLIC [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/24f02f41a75e21962647b0827aeba03bf13cc741/PR%C3%81CTICA%204/EJEMPLO%20DE%20LA%20TERMINAL/5.%20Exploraci%C3%B3n%20de%20archivos%20de%20salida%20con%20los%20comandos%20samtools)

### 6. Visualizar alineamiento con IGV.
Para visualizar los alineamientos, debemos descargar el software IGV en el siguiente [link](https://software.broadinstitute.org/software/igv/download) y posteriormente instalarlo. 

Para Cargar el genoma de referencia en IGV se deben seguir los siguientes pasos
![cargar genoma de salmo salar](https://user-images.githubusercontent.com/84527634/123189657-38d56e00-d46c-11eb-8a66-dbe6857815a6.png)
![cargar el genoma de la mitocondria](https://user-images.githubusercontent.com/84527634/123189797-720dde00-d46c-11eb-997f-8ba1b7a9b89e.png)
![genoma cargado](https://user-images.githubusercontent.com/84527634/123189809-776b2880-d46c-11eb-8209-851737c734f9.png)

## :white_check_mark: REFERENCIAS Y LINK DE INTERÉS
1. Pham-Quoc, C., Kieu-Do, B., & Thinh, T. N. (2019). A high-performance FPGA-based BWA-MEM DNA sequence alignment. Wiley, 1-12.
2. Li, H., & Durbin, R. (2009). Fast and accurate short read alignment with Burrows-Wheeler Transform. Bioinformatics, 1754-60.
3. JHU. (2016). Johns Hopkins University. Obtenido de Manual of Bowtie 2 - Fast and sensitive read alignment.

