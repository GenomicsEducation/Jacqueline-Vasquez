## TÍTULO: *Práctica para la elaboración de un proyecto de genómica aplicada*

#### AUTOR:  
**Jacqueline Vásquez Navarrete**
- Magíster en Ciencias Biológicas, mención Neurociencias. Universidad de Valparaíso.  
- Licenciatura en Ciencias, Mención Biología. Universidad de Valparaíso.  
------------------------------------------------------------------------------------------------------------------------------------------------------

## DESCRIPCIÓN: BASES DE DATOS ASSEMBLY Y SRA DE [NCBI](https://www.ncbi.nlm.nih.gov/)

### 1. SELECCIÓN DE UNA ESPECIE DE IMPORTANCIA ECONÓMICA EN PRODUCCIÓN ANIMAL. 

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flock_of_sheep.jpg/245px-Flock_of_sheep.jpg" width="200" height="200" align="center" />
<p> Ovis aries (sheep)</p>
</div>

### 2. INFORMACIÓN GENÓMICA DE LA ESPECIE 

***ENSAMBLAJE DEL GENOMA ("Assembly")***
- Baylor College of Medicine Human Genome Sequencing Center (November 2017)
- Nombre del organismo: Ovis aries (sheep)
- Taxonomía del organismo: Eukaryota; Metazoa; Chordata; Craniata; Vertebrata; Euteleostomi;
  Mammalia; Eutheria; Laurasiatheria; Artiodactyla; Ruminantia;Pecora; Bovidae; Caprinae; Ovis.
- Sexo: Hembra
- Nivel de ensamblaje: Cromosoma
- Método de ensamblaje: celera v. 8.2; Phase PGA v. 1.0; PBJelly2 v. 14.9.9; Pilon v. 1.8; Chromosomer v. 0.1.4
- Tecnología de secuenciación: HiSeq X Ten; PacBio RS II

|ESTADÍSTICA GLOBAL DEL GENOMA|                  |
|--------------------------------|----------------|
|Longuitud total de la secuencia | 2,869,914,396 |
|Longuitud total sin gaps        | 2,869,531,333 |
|Gaps entre "scaffolds"          | 0             |
|Número de "scaffolds"           | 2,641         |
|"scaffolds" N50                 | 107,697,089   |
|"scaffolds" L50                 | 8             |
|Número de "contigs"             | 7,486         |
|"contigs" N50                     | 2,572,683     |
|"contigs" L50                     | 313           |
|Número total de cromosomas y plásmidos | 28     |

* [Link de acceso a genoma](https://www.ncbi.nlm.nih.gov/assembly/GCF_002742125.1)

***SECUENCIAS DE REFERENCIA COMPLETA, INTEGRADA Y NO REDUNDANTE DEL GENOMA ("Refseq")*** <br />
Información del cromosoma 1 del Ovis aries cepa OAR_USU_Benz2616 <br />
- Locus: NC_040252 301310028bp ADN lineal (06-FEB-2019) <br />
- [Bioproyectos](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA517172)
- [Biomuestras](https://www.ncbi.nlm.nih.gov/biosample/SAMEA104496890)
- [Ensamblaje](https://www.ncbi.nlm.nih.gov/assembly/GCF_002742125.1)

* [Link de acceso a cromosoma 1](https://www.ncbi.nlm.nih.gov/nuccore/NC_040252.1)

***BIOPROYECTOS Y BIOMUESTRAS DE LA BASE DE DATOS SRA DE NCBI***

Ovis aries[Taxonomy ID: 9940]
|RESUMEN|                   |
|----------------------|-------------------|
| BIOMUESTRAS | 7,897 públicas|
|BIOPROYECTOS | 363 públicos|
* Busqueda de biomuestras en [NCBI](https://www.ncbi.nlm.nih.gov/sra/?term=(Ovis+aries)+AND+%22Ovis+aries%22%5Borgn%3A__txid9940%5D)

[EJEMPLO DE LA BIOMUESTRA SRX10911446: RNA-Seq de Ovis aries: Glándulas adrenales de hembra adulta](https://www.ncbi.nlm.nih.gov/sra/SRX10911446[accn])<br />
- Diseño: glándulas suprarrenales
- Realizado por la Académia de ciencias Agrícolas de China
- Instrumento de secuenciación ILLUMINA (Illumina HiSeq 2500)
- Fecha de publicación: 17-05-2021
- Descripción del experimento: El análisis de miARN-ARNm revela la red de regulación del rasgo de fertilidad en las glándulas suprarrenales de las ovejas.
- Total de muestras analizadas: 12
- [Link del bioproyecto](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA729910)
- [Link del estudio SRA](https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP320117)
- [Link de todas las muestras](https://www.ncbi.nlm.nih.gov/sra?term=SRP320117)
- [Link de SRA run selector](https://www.ncbi.nlm.nih.gov/Traces/study/?acc=SRP320117&o=acc_s%3Aa)

[METADATA DE LAS MUESTRA](https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=SRP320117&o=acc_s%3Aa)

--------------------------------------------------------------------------------------------------------------------------------------------------------
## DESCRIPCIÓN: CONEXIÓN REMOTA A UN SERVIDOR LINUX

### 1. INSTALACIÓN Y CONFIGURACIÓN DE SOFTWARE.
 1. DESCARGAR E INSTALAR PuTTY <br />
 - Para un sistema operativo windows se puede descargar del siguiente link [PuTTY](https://www.putty.org/).<br />
 
 2. DESCARGAR E INSTALAR WinSCP
 - Para un sistema operativo windows se puede descargar del siguiente link [WinSCP](https://winscp.net/eng/download.php).<br />
 
### 2.ACCESO REMOTO AL SERVIDOR POMEO

![PuTTY 1](https://user-images.githubusercontent.com/84527634/120576528-e8309f00-c3f0-11eb-9835-79c49c65060d.png)

![PuTTY 2](https://user-images.githubusercontent.com/84527634/120576541-eff04380-c3f0-11eb-9687-0ed1653073f8.png)

### 3. INSTALACIÓN Y CONFIGURACIÓN DE CONDA, NANO Y SRA TOOLKIT 

 1. [MINICONDA](https://docs.conda.io/en/latest/miniconda.html)
 
 2. [NANO](https://www.nano-editor.org/)
 
 3. [SRA Toolkit](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=toolkit_doc)
  
  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ## PRÁCTICA 3: INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS.
  
  ### INTRODUCCIÓN 
Las tecnologías de secuenciación de próxima generación han evolucionado significativamente para proporcionar una mayor producción de datos [(Taishan et al., 2021)](https://www.sciencedirect.com/science/article/abs/pii/S0198885921000628). Sin embargo, las plataformas son suceptibles a una amplia gama de fallas químicas e instrumentales [(Stephan et al., 2014)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3956068/) y los datos obtenidos pueden tener un fuerte ruido de fondo, contaminación de los adaptadores, baja calidad de secuenciación, entre otros [(He et al., 2020)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7409520/), lo que posteriomente representa problemas significativos en la precisión de la detección de variantes o regiones genómicas objeto de estudio.
De acuerdo a esto, el control de calidad en el procesamiento de datos se torna esencial para contar con datos limpios y de esta forma evitar errores en posteriores análisis.

**FORMATO FASTQ**</div>
 Tal como se muestra en la figura 1. el archivo fastq contiene las lecturas de secuenciación.
 Una lectura de secuenciación tiene 4 líneas:
  - línea 1: representa el encabezdo de la lectura e inicia siempre con un @ y contiene los datos informativos como, el número de serie del secuenciador y de carril, el swath que representa una región del carril, las posiciones x e y dentro de cada swath y la direccion de las lecturas indicando una secuenciación, que en este caso corresponde a una secuenciación pareada.
  - línea 2: corresponde a la secuencia de bases 
  - línea 3: signo + 
  - línea 4: corresponde a las calidades, donde hay una correspondiente entre la base y su valor de calidad representado por un caracter alfanumérico codificadas para un determinado Phred score (números o letras). 
  - Las secuencias deben tener un QFRED mayor a 30.
  
![formato fastq](https://user-images.githubusercontent.com/84527634/122121183-5154e100-cdf9-11eb-991c-6c8d4adfc731.png)

 **SOFTWARES DE BIOINFORMATICA** 
 
 1. [FastQC](https://kbase.us/applist/apps/kb_fastqc/runFastQC/release?gclid=CjwKCAjwn6GGBhADEiwAruUcKr1RfYthyztKRytwjVi-aS4-LyMXuRJLADqig_Q8iwP6Sl_FXjLHpBoCJbYQAvD_BwE)
Este software es una herramienta bioinformática que permite efectuar análisis de control de calidad [(Andrews S., 2010)](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/). Es compatible con las principales plataformas de secuenciación, pero se usa preferentemente con datos de secuenciación Illumina. 
Este software tiene como objetivo proporcionar un conjunto mudular de análisis adicionales. FastQC resume la calidad de lectura por posición, informa al usuario del contenido del adaptador en secuencias, sobre las frecuencias de tetrámeros y muchos otros aspectos que uno esperaría obtener de los datos de secuencia sin procesar [(Brown et al., 2017)](https://pubmed.ncbi.nlm.nih.gov/28605449/).
 * En este trabajo la versión de FastQC utilizada es 0.11.9. 

 2. [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic)
Este software permite filtrar y podar datos NGS desde secuenciadores Illumina.
Es una herramienta de línea de comandos rápida y de multiproceso que se puede utilizar para filtrar y recortar datos de Illumina (FASTQ), así como para eliminar adaptadores. Trabaja con archivos FASTQ utilizando puntuaciones de calidad phred + 33 o + 64, dependiendo de la tubería de Illumina utilizada [(Bolger et al.,2014)](https://academic.oup.com/bioinformatics/article/30/15/2114/2390096).</div> 
* En este trabajo se emplea la versión 0.39.
* El manual de uso del software se puede descargar [aquí](http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf)
 
### OBJETIVOS DEL TRABAJO PRÁCTICO
  - Realizar un análisis integral de control de calidad de secuencias NGS con fastqc.<br />
  - Filtrar y podar las secuencias con el software trimmomatic.<br />
  
### ORIGEN DE LAS MUESTRAS 
  Las muestras que serán analizadas provienen de la base de datos [SRA de NCBI](https://www.ncbi.nlm.nih.gov/sra) y corresponden a lecturas crudas del salmón del Atlántico *Salmo salar* en formato fastq, obtenidas por secuenciación de extremos emparejados con un secuenciador Illumina HiSeq2000.<br />
  
### ETAPAS DEL ANÁLISIS DE CONTROL DE CALIDAD, FILTRADO Y PODA.

  **1. CONEXIÓN REMOTA AL SERVIDOR POMEO**
  
  PRIMERO ABRIR PuTTY 
![CONECTAR CON EL SERVIDOR POMEO](https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png)
 SEGUNDO 
![usuario y contraseña](https://user-images.githubusercontent.com/84527634/122123842-844ca400-cdfc-11eb-84dd-e1f942bf16ce.png)

  **2. CONFIGURACIÓN DE BIOCONDA E INSTALACIÓN DE SOFTWARE**<br />
  Para configurar el canal bioconda se debe ejecutar el siguiente comando
  
  ```
  conda config --add channels bioconda
  ```
  Para buscar el software en bioconda antes de instalar ejecute el siguiente comando.
  ```
  conda search -c bioconda fast-qc
  conda search -c bioconda fastqc
  conda search -c bioconda trimmomatic
  ```
  **Note que si escribe el nombre de forma errada no encontrará el software**
  
  Para la instalación de los software proceda a ejecutar los siguientes comandos en la terminal:
  ```
  conda install -c bioconda fastqc
  ```
  ```
  conda install -c bioconda trimmomatic
   ```
 Usando el comando mkdir cree un directorio llamado SRA_sample
 ```
 mkdir SRA_samples
 ```
 Acceda a este directorio con el comando
 ```
 cd SRA_samples 
 ```
 **3. DESCARGAR BIOMUESTRA DESDE SRA**
 
Para esta práctica se trabajará con la biomuestra **SRR2006763** proveniente de la cepa Aquagen de *Salmo salar* y a partir de la que se obtendrán los dos archivos fastq, ya que los datos provienen de secuenciación pair-end.
Biomuestra 1:SRR2006763_1.fastq Biomuestra 2:SRR2006763_2.fastq

Crear un archivo ejecutable (.sh) con nano denominado download.sh
```
nano download.sh
```
Se abrira la venta de NANO

![llamar a NANO](https://user-images.githubusercontent.com/84527634/122129316-ed83e580-ce03-11eb-9ad4-d5f79edd84e2.png)

Una vez dentro de NANO Introducir y guardar la información del script como se detalla a continuación, cambiando en la segunda y tercera línea por su nombre de usuario. Note que el script solo tiene 4 líneas.
```
 #!/bin/bash
 #SBATCH -J prefetch_usuario
 /home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/prefetch --max-size 100G SRR2006763 -O /home2/usuario/SRA_samples/
 /home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/vdb-validate /home2/usuario/SRA_samples/SRR2006763/SRR2006763.sra
  ```
 Este script contiene las instrucciones necesarias para la descarga de la secuencia con el comando prefetch que es parte del kit de herramientas de SRA y su función es descargar archivos de secuencia en formato SRA comprimido. Además, incluye un segundo comando llamado vdb-validate que realiza varios chequeos luego de la descarga para hacegurar que esta se ha desarrollado correctamente. La descarga y chequeo demorará alrededor de dos minutos.
 
  ![INSTRUCCIONES PARA DESCARGAR ARCHIVOS DE SECUENIAS EN FORMATO SRA COMPRIMIDO](https://user-images.githubusercontent.com/84527634/122129388-05f40000-ce04-11eb-822d-49bc9594c9f0.png)

guardar el script con el nombre “download.sh” usando **Ctrl+O**, luego salga de nano usando **Ctrl+X.**

Correr el script mediante el siguiente comando
```
 bash download.sh
```
Al finalizar la ejecución listar la carpeta SRA_samples para comprobar que se creó el directorio de la secuencia descargada con el nombre SRR2006763 y, dentro de este directorio deberá haberse generado el archivo SRR2006763.sra

```
ls -l -h 
```
Acceder a la carpeta SRR2006763 y crear el siguiente script (nano fdump.sh) que permitirá obtener los archivos fastq de la muestra SRR2006763

```
nano fdump.sh
```
**Se abrira nuevamente la venta de NANO** y se debe escribir el siguiente codigo 
```
 #!/bin/bash
 #SBATCH - J fdump_usuario
 /home2/usuario/sratoolkit.2.11.0-centos_linux64/bin/fasterq-dump /home2/usuario/SRA_samples/SRR2006763/*.sra -O /home2/usuario/SRA_samples/SRR2006763/
```
- **Recordar cambiar usuario por jacqueline.vasquez**
- **Recordar guardar el script usando** **Ctrl+O**, luego salir de nano usando **Ctrl+X.**

Correr el script mediante el siguiente comando

```
 bash fdump.sh
```
Al finalizar, además de extraer los archivos fastq debería indicarle el total de read leidos y escritos.
spots read : 2,856,007 reads read : 5,712,014 reads written : 5,712,014
Biomuestra 1:SRR2006763_1.fastq Biomuestra 2:SRR2006763_2.fastq

**4. COMPROBACIÓN DE LA INTEGRIDAD DE LOS ARCHIVOS**

md5sum es un algoritmo empleado para evitar algún daño que pudo generarse por algún motivo durante el proceso de descarga
Busque el código Md5 de las muestras y direccione la información a un archivo md5_samples, con el siguiente comando:

```
md5sum SRR2006763_1.fastq SRR2006763_2.fastq > md5_samples
```
Verificar la salida generada

```
cat md5_samples
```
Contendrá los valores md5 de las muestras como se describe a continuación
```
dd0bdf8c722226ea34611941f2391774  SRR2006763_1.fastq
1c63ca4a6e14de4f93f7621e3e990ec9  SRR2006763_2.fastq
```
Compruebe la integridad de ambas biomuestras usando md5sum o similar.
```
md5sum -c md5_samples
```
El comando dará como resultado el siguiente mensaje
```
SRR2006763_1.fastq: La suma coincide
SRR2006763_2.fastq: La suma coincide
```
Con lo que se comprueba la integridad de los archivos descargados.

**5. ANÁLISIS DEL CONTROL DE CALIDAD DE LAS SECUENCIAS fastq**

Para el análisis de control de calidad de secuencias fastq que provienen de secuenciadores NGS, en el directorio SRR2006763 crear y correr el siguiente script (nano fastqc.sh)
- **cambiar usuario por jacqueline.vasquez**
- **guardar el script usando** **Ctrl+O**, luego salir de nano usando **Ctrl+X.**

```
  #!/bin/bash
  #SBATCH - J fastqc_usuario
  fastqc /home2/usuario/SRA_samples/SRR2006763/*.fastq
```
La salida resultante de la ejecución del script anterior serán dos archivos:

 1. archivo HTML
 2. archivo .zip
Transferir archivos mediante protocolo FTP desde Servidor a Cliente, puede usar cualquier cliente o la línea de comandos.
- Para Windows mediante Winscp u otro
- Para MAC: se puede crear un directorio temporal para la descarga de archivos
```
cd tmp
mkdir download
cd download
scp usuario@200.54.220.141:/home2/usuario/SRA_samples/SRR2006763/*.html .
```
- Se solicitará el ingreso de su clave
- Se concluirá la descarga al computador local y se la puede revisar con open.

Adicionalmente, POMEO tiene instalado Rstudio server por lo que es posible acceder sus archivos directamente ingresando al servidor a traves del puerto 8787.

[Rstudio de POMEO](http://200.54.220.141:8787/auth-sign-in)

Visualizar archivos generados

**6. FILTRADO Y PODA**

Entrar a la carpeta donde constan los archivos fastq (SRR2006763/) llamar a NANO con:
```
nano filtrado.sh
```
ejecutar el siguiente script cambiando usuario
```
#!/bin/bash
#SBATCH - J trimm_usuario
trimmomatic PE SRR2006763_1.fastq SRR2006763_2.fastq -baseout SRR20067634_filtered.fastq.gz SLIDINGWINDOW:5:25 MINLEN:60
```
De la ejecución anterior, resultarán 4 archivos comprimidos como se detalla a continuación
```
SRR20067634_filtered_1P.fastq.gz
SRR20067634_filtered_1U.fastq.gz
SRR20067634_filtered_2P.fastq.gz
SRR20067634_filtered_2U.fastq.gz
```
Descomprimir los archivos con

```
gunzip SRR20067634_filtered_1P.fastq.gz
```

Volver a realizar un análisis de calidad de las muestras y comparar con el reporte de calidad inicial (en un script o directamente en la terminal)


### REFERENCIAS DE INTERÉS 



