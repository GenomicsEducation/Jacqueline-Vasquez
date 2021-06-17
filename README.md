## TÍTULO: *PRÁCTICAS PARA LA ELABORACIÓN DE UN PROYECTO DE GENÓMICA APLICADA*

#### AUTOR: **Jacqueline Vásquez Navarrete**
- Estudiante de Doctorado en Biotecnología. [UTFSM](https://www.usm.cl/)/[PUCV](https://www.pucv.cl/)
- Magíster en Ciencias Biológicas, mención Neurociencias. [Universidad de Valparaíso](https://www.uv.cl/)  
- Licenciatura en Ciencias, Mención Biología. [Universidad de Valparaíso](https://www.uv.cl/)  
------------------------------------------------------------------------------------------------------------------------------------------------------
**ÍNDICE**
1. [PRÁCTICA 1. INTRODUCCIÓN A BASES DE DATOS GENÓMICOS: ASSEMBLY Y SRA DE NCBI (#id1)
2. [PRÁCTICA 2. INTRODUCCIÓN A LINUX PARA GENÓMICA](#id2)
3. [PRÁCTICA 3. INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS](#id3)
4. [PRÁCTICA 4](#id4)
<div id='id1' />


## PRÁCTICA 1: INTRODUCCIÓN A BASES DE DATOS GENÓMICOS : ASSEMBLY Y SRA DE [NCBI](https://www.ncbi.nlm.nih.gov/)

### INTRODUCCIÓN

El Centro Nacional para la Información Biotecnológica (en inglés: *National Center for Biotechnology Information* [NCBI]), es parte de la Biblioteca Nacional de Medicina de los Estados Unidos. Se encarga de almacenar y actualizar la información referente a secuencias genómicas en GenBank, un índice de artículos científicos rederentes a biomedicina, biotecnología, bioquímica, genética y genómica en PubMed, una recopilación de enfermedades genéticas humanas en OMIM, además de otros datos biotecnológicos de relevancia en diversas bases de datos.<br />
Todas las bases de datos de NCBI estasn disponibles en línea de manera gratuita <br />
Dentro de las bases de datos se encuentran por ejemplo: <br />

![bases de datos de NCBI](https://user-images.githubusercontent.com/84527634/122137441-9fc2a980-ce12-11eb-94e5-a349897f193a.png)

* **Assembly:**	Contiene información sobre la	estructura de genomas ensamblados, nombres de ensamblados y otros metadatos (anotación de genes), informes estadísticos	y	enlaces	a	datos de secuencias	de genómas.	
* **GenBank:** Base de datos redundante	de secuencias	genéticas	del	Nacional Institutes	of Health	(NIH), es una colección anotada de todas las secuencias de ADN disponibles públicamente. GenBank es parte del	INSDC.	
* **Genome:**	Contiene secuencia y mapa	de genomas completos y en	progreso de	más	de 1000	organismos.	Los tres dominios	principales de la	vida (bacterias, arqueas y eucariotas), pero también virus,	fagos, viroides, plásmidos.	
* **Reference	sequence (RefSeq):** Colección de secuencias de ADN	y ARN (cDNA) no redundantes y	curadas producidas por NCBI. RefSeqs proporciona una referencia	estable para la anotación del genoma,	iden\ﬁcación y caracterización de genes, análisis de mutaciones y	polimorﬁsmos,	estudios de expresión y	análisis comparativos.
* **SRA (Sequence Read Archive):** Almacena	datos	NGS	de plataformas de secuenciación que incluyen Roche 454 GS	System®, Illumina Genome Analyzer®, Life Technologies AB SOLiD System®,	Helicos Biosciences Heliscope®,	Complete Genomics® y Paciﬁc	Biosciences	SMRT®.
* **BioProject:** Este recurso describe	el alcance,	el material	y	los	objetivos de proyectos genómicos,	proporcionando un	mecanismo	para recuperar conjuntos de	datos	almacenados	en	diferentes bases de	datos.	
* **BioSample:** Esta base de	datos	contiene descripciones de	materiales de origen biológico utilizados	en ensayos experimentales.

### OBJETIVOS 

1. Reconocer y utlizar las Bases de	datos	Assembly y SRA del NCBI
2. Realizar	descarga manual	de metadata de una muestra seleccionada.	
3. Registrar actividades en	el proyecto	de genómica	github.

### TRABAJO PRÁCTICO

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

### 3. INFORMACIÓN DE BIOPROYECTOS Y BIOMUESTRAS

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

 * Link DE NCBI DONDE DESCARGAR LA METADATA DE LAS MUESTRA [AQUÍ](https://trace.ncbi.nlm.nih.gov/Traces/study/?acc=SRP320117&o=acc_s%3Aa)
 * Link DE LA METADATA DE LA MUESTRA DESCARGADA [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/f5603881a6908290d88e28076ef1c47d4dcd5717/PR%C3%81CTICA%201/metadata%20original.txt)

### REFERENCIAS Y LINK DE INTERÉS

1. https://es.wikipedia.org/wiki/Centro_Nacional_para_la_Informaci%C3%B3n_Biotecnol%C3%B3gica
2. https://youtu.be/fCd6B5HRaZ8 
3. https://www.illumina.com/content/dam/illumina-marketing/documents/products/illumina_sequencing_introduction.pdf
4. https://www.nature.com/articles/nrg.2016.49
5. https://github.com/GenomicsEducation/GeneticaGenomicaProducionAnimal_v21
6. https://github.com/pkalbers/OxfordDPhilThesis 
7. https://github.com/Lamm-a/MSc-Bioinformatics-thesis 
8. https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/tutorial-de-markdown/ 

--------------------------------------------------------------------------------------------------------------------------------------------------------
## PRÁCTICA 2: INTRODUCCIÓN A LINUX PARA GENÓMICA

### INTRODUCCIÓN 
**SHELL DE UNIX**
Una Shell de Unix o también shell, es el término usado en informática para referirse a un intérprete de comandos, el cual consiste en la interfaz de usuario tradicional de los sistemas operativos basados en Unix y similares, como GNU/Linux (https://es.wikipedia.org/wiki/Shell_de_Unix).<br />
Este interprete de comandos es el ambiente de trabajo base de la bioinformática y por lo tanto, de todos los científicos y profesionales que trabajan en genética y genómica aplicada.<br />
En términos simples Shell permite controlar un ordenador y ejecutar un programa (software, paquete o librería) basado en una interfaz de texto. <br />

**PuTTy:**
PuTTY es un sistema de cliente SSH, Telnet, rlogin, y TCP raw con licencia libre. Disponible originalmente sólo para Windows, ahora también está disponible en varias Plataformas Unix, y se está desarrollando la versión para MacOS clásico y MacOS X.<br />

Características de PuTTY:<br />
- El almacenamiento de hosts y preferencias para uso posterior.
- Control sobre la clave de cifrado SSH y la versión de protocolo.
- Clientes de línea de comandos SCP y SFTP, llamados “pscp” y “psftp” respectivamente.
- Control sobre el redireccionamiento de puertos con SSH, incluyendo manejo empotrado de reenvío X11.
- Soporte de autentificación de clave pública.

**CONDA Y BIOCONDA: Herramientas de código abierto para trabajar en bioinformática.** 
- **Conda** es un gestor de paquetes y un sistema de gestión de ambientes de trabajo de código abierto que puede trabajar en Windows, macOS y Linux (https://docs.conda.io/en/latest/). Puede administrar la instalación de paquetes y dependencias de varios lenguajes de programación incluyendo Python, R, Ruby, Lua, Scala, Java, JavaScript, C/ C++, FORTRAN, entre otros. Desarrollado por la empresa Anaconda Inc., Conda destaca porque permite instalar, correr, y actualizar cientos de software de ciencia de datos y bioinformática de manera sencilla y eficiente (Fig 1). Conda cuenta con canales (channels) o repositorios predeterminados en los cuales busca los paquetes que se desean instalar.
- **Miniconda** es la versión reducida de Conda, contiene con lo mínimo necesario para ejecutar las tareas clave como Conda, Python, y otras dependencias menores como pip, zlib. https://docs.conda.io/en/latest/miniconda.html <br />
**Ventajas de usar Conda:** <br />
1.  Es de código abierto. 
2.  Puede trabajar en macOS, Linux y Windows. 
3.  Permite instalar, correr, y actualizar cientos de software de ciencia de datos y bioinformática de manera sencilla y eficiente mediante canale

- **Bioconda** es un canal de Conda en el cual están localizados los paquetes especializados en bioinformática https://anaconda.org/bioconda/. Actualmente, existen más de 7000 paquetes disponibles basados en los lenguajes de programaicón R, Python, Perl y otros. 

**SHELL-SCRIPT**
Los script son pequeños archivos con un conjunto de instrucciones para realizar alguna tarea o proceso bioinformático, es decir son programas. El uso de script nos permite automatizar y acelerar el trabajo de bioinformática. Los script se suelen escribir en un editor de texto y se almacenan en el directorio de trabajo con un nombre que lleva la extención .sh (ej. script_alineamiento.sh).
Un editor de texto es un sencillo programa informático que nos permite crear y modificar archivos digitales. En este curso aprenderemos a usar el editor de texto nano. <br />
Las ventajas de nano son: <br />
1. Es de código abierto y disponible para en macOS, Linux y Windows. 
2. Está disponible en Conda en el canal conda-forge.

link [NANO](https://www.nano-editor.org/)
 
link [SRA Toolkit](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=toolkit_doc)

### OBJETIVOS 
1. Establecer conexión remota a un servidor y ejecutar multitareas
2. Ejecutar comandos en la terminal 
3. Instalar MINICONDA Y NANO a través de comandos en la terminal
4. crear scripts usando el editor de texto nano

### PRÁCTICA: CONEXIÓN VÍA SSH A UN SERVIDOR LINUX

### 1. INSTALACIÓN Y CONFIGURACIÓN DE SOFTWARE.
 1. DESCARGAR E INSTALAR PuTTY <br />
 - Para un sistema operativo windows se puede descargar del siguiente link [PuTTY](https://www.putty.org/).<br />
 
 2. DESCARGAR E INSTALAR WinSCP
 - Para un sistema operativo windows se puede descargar del siguiente link [WinSCP](https://winscp.net/eng/download.php).<br />
 
### 2.ACCESO REMOTO AL SERVIDOR POMEO
En esta práctica accedermos al servidor POMEO de la Escuela de Ciencias del Mar usando nombres de usuario y password respectivos.
Para lo susuarios de windows usaremos PuTTy aproximadamente como se muestra en la siguiente copia de pantalla.

![PuTTY 1](https://user-images.githubusercontent.com/84527634/120576528-e8309f00-c3f0-11eb-9835-79c49c65060d.png)

![PuTTY 2](https://user-images.githubusercontent.com/84527634/120576541-eff04380-c3f0-11eb-9687-0ed1653073f8.png)

Una vez dentro de la terminal agregar nombre de usuario y contraseña correspondiente.

![usuario y contraseña](https://user-images.githubusercontent.com/84527634/122140161-8886ba80-ce18-11eb-964e-19e3c2935022.png)

Existen varios comandos básicos que son útiles para trabajar en proyectos de genómica. Aquí revisaremos algunos relacionados a la revisión del espacio libre disponible para almacenar datos, crearemos directorios de trabajo y archivos de texto plano usando el editor nano, entre otros.

Ejecutar los siguientes comandos en la terminal:

|       **COMANDOS**       |                   **SIGNIFICADOS**                    |
|-------------------|-----------------------------------------------|
|bash --version|indica información de la versión del software bash|
|pwd  |present working directory- es un comando que indica el nombre del directorio en el que se encuentra|
|  df -hP         | Informa acerca del espacio total en el sistema, espacio usado, espacio disponible |
|  top           | Evalua el performance de la CPU, similar al monitor del sistema **para salir presiona q** |
|  mkdir | Crea un directorio |
| cd  |  Cambia de directorio |
|  cd ..  | es un comando para volver al directorio anterior  |
| cd nombre.usuario  | permite ingresar a tu cuenta de usuario. |
| df -hP > espacio_libre_pomeo.txt | Al usar el simbolo > que funciona como una tibería la información del espacio total del sistema se almacena en un documento de texto denominado espacio_libre_pomeo.txt |
| cat espacio_libre.txt  | **cat** lee datos de un archivo e imprime su contenido en la terminal. |
| less espacio_libre.txt |**less** lee datos de un archivo sin imprimir en la terminal. Podemos entonces recorrer el archivo.          |
| wc espacio_libre.txt | **wc** cuenta líneas, palabras y caracteres de un fichero.|
| ls | **ls** es un comando de listado de objetos en un directorio (home 2 indica los usuarios) (en ~ indica los programas y ficheros que existen) |
| ls -l -h | **ls -l -h** entrega información con mas detalle de los objetos y de un tamaño que sea legible por humanos. |
| rm tesis | **rm** es para remover un fichero o directorio ejemplo tesis |
|rm -r tesis | acción forzada para la eliminacion del fichero o directorio tesis |
|  **ATAJOS DE TECLADO** |                   **SIGNIFICADO**                            |
  | flecha arriba/abajo                |      permite moverte por las líneas ejecutadas en la terminal                           | 
| history | Imprime todas las líneas de comando ejecutadas en la terminal |
 | tab | Usa el tabulador como un atajo para llamar al fichero |
  | ctrl-a  | mueve el cursor al comienzo de la línea actual |
   |ctrl-e | mueve el cursor al final de la línea actual| 
| ctrl-k | borra desde el cursor hasta el final de la línea |
 | ctrl-u | borra desde el cursor hasta el inicio de la línea |
 | ctrl-w | borra la palabra inmediatamente detras del cursor | 
  |ctrl-C | Copiaar y pegar en la terminal con click derecho del mouse |
   | exit  | es un comando para cerrar la sesión. |

### 3. INSTALACIÓN Y CONFIGURACIÓN DE CONDA, NANO Y SRA TOOLKIT 
Accede nuevamente al servidor POMEO con tu cuenta de usuario y clave de acceso. Ahora instalaremos algunos software clave para el trabajo de genómica incluyendo el gestor de sogtware Miniconda, el editor nano, entre otros.

Ejecutar los siguientes comandos en la terminal:

Para instalar Miniconda primero lo descargaremos del repositorio de anaconda con el comando wget. Se tendra un archivo de salida ejecutable con extension “.sh”, que debe ser ejecutado con el comando bash.
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```
Activacion de miniconda
```
source ~/.bashrc
```
Revision del contenido de conda
```
conda list
```
Revision de version de conda
```
conda --version
```
Instalación de editor de texto nano
```
conda install -c conda-forge nano
```
* LINK DEL EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/43bbeb5202abe65bbc1e51b534456f00b41ecb7f/PR%C3%81CTICA%202/EJEMPLOS%20DE%20LA%20TERMINAL/terminal%20practica%202.txt)

### 4. APRENDER A CREAR UN SCRIPT USANDO EL EDITOR DE TEXTO NANO. 
Usando nano crearemos un script denominado script1.sh. En este script ejecutaremos una simple impresión de la frase “Curso de Genomica” usando la función echo. La primera linea del script debe contener la siguiente instrucción #!/bin/sh a veces denominada shebang. Esta instrucción indica que se debe ejecutar, desde el directorio bin, el script actual usando la Shell.

Ejecute entonces el siguiente código para llamar a nano en la terminal 
```
nano script1.sh
```
Se abrirá la siguiente pantalla en la terminal 

![llamar a NANO](https://user-images.githubusercontent.com/84527634/122142740-0c8f7100-ce1e-11eb-8815-e65c1034275b.png)

escriba el siguiente script
```
# !/bin/bash
# Mi primer script
echo Curso de genomica
```
PUEDES VER EL SCRIPT1 [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/02468059e878cf61345dff37c9fc668bd5d53345/PR%C3%81CTICA%202/SCRIPT.sh/script1.sh)

**Guardar el script con el nombre “script1.sh” usando Ctrl+O, luego salga de nano usando Ctrl+X.**

Ejecute el script desde la terminal usando
```
bash script1.sh
```
* LINK DE EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/43bbeb5202abe65bbc1e51b534456f00b41ecb7f/PR%C3%81CTICA%202/EJEMPLOS%20DE%20LA%20TERMINAL/terminal%20practica%202.txt) 

## 5. SCRIPT PARA DESCARGAR SECUENCIAS NGS COMPRIMIDAS EN FORMATO SRA
SRA Toolkit es una herramienta que permite descargar y convertir automáticamente archivos en formato .SRA en otros formatos usando un interprete de comandos y de manera automática. Es compatible con Linux, Windows y Mac. Usé el comando wget y tar para descargar y descomprimir SRA Toolkit.<br />
**Antiguo protocolo 2020**
```
nano script2.sh
```
```
# !/bin/bash
# Descarga y descomprime SRA Toolkit
wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz
tar -xzf sratoolkit.current-centos_linux64.tar.gz
```
PUEDES VER EL SCRIPT2 [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/02468059e878cf61345dff37c9fc668bd5d53345/PR%C3%81CTICA%202/SCRIPT.sh/script2.sh)

Luego muevase al directorio /sratoolkit.2.10.5-centos_linux64 y configure SRAtoolkit para trabajar en la nube y ejecutar el comando 
```
bin/fastq-dump --stdout SRR390728 | head -n 8
```
Si todo va bien con esta muestra continue con los siguientes comandos, alternativamente agregue bin/ al inicio del comando.
El primero descarga y muestra el contenido de las 5 primeras secuencias del archivo SRR6019464.
```
fastq-dump -X 5 -Z SRR6019464
 ```
El segundo descarga el contenido de las 5 primeras secuencias y las almacena en un archivo con formato fastq
```
fastq-dump -X 5 SRR6019464
 ```
 El tercero descarga la biomuestra completa, detenga la ejecución luego de unos momentos, son 65 GB de datos.
 ```
 fastq-dump --gzip --split-3 SRR6019464 
   ```
 Finalmente explore la muesta con zcat y chequee el número de read descargados.
```
zcat SRR6019464.fastq.gz | echo $((`wc -l`/4))
```
* LINK DEL EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/43bbeb5202abe65bbc1e51b534456f00b41ecb7f/PR%C3%81CTICA%202/EJEMPLOS%20DE%20LA%20TERMINAL/terminal%20practica%202.txt) 

 ### REFERENCIAS Y LINK DE INTERÉS
 
 1. Grüning, B., Dale, R., Sjödin, A. et al. Bioconda: sustainable and comprehensive software distribution for the life sciences. Nat Methods 15, 475–476 (2018). https://doi.org/10.1038/s41592-018-0046-7
 2. Capítulo 10. Working with Sequence Data del libro Bioinformatics Data Skils.
 
   
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
  1. Comprobar la integridad de las descarga de los archivos usando md5sum.
  2. Realizar un análisis integral de control de calidad de secuencias NGS con fastqc.<br />
  3. Filtrar y podar las secuencias con el software trimmomatic.<br />
  4. Transferir archivos mediante protocolo FTP desde el Servidor a nuestros computadores. 
  
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
* EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)
 
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
* PUEDES VER EL SCRIPT dowload.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/download.sh)
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
- PUEDES VER EL SCRIPT fdump.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/fdump.sh) 

Correr el script mediante el siguiente comando

```
 bash fdump.sh
```
Al finalizar, además de extraer los archivos fastq debería indicarle el total de read leidos y escritos.
spots read : 2,856,007 reads read : 5,712,014 reads written : 5,712,014
Biomuestra 1:SRR2006763_1.fastq Biomuestra 2:SRR2006763_2.fastq

* EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt) 

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

* EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)

**5. ANÁLISIS DEL CONTROL DE CALIDAD DE LAS SECUENCIAS fastq**

Para el análisis de control de calidad de secuencias fastq que provienen de secuenciadores NGS, en el directorio SRR2006763 crear y correr el siguiente script (nano fastqc.sh)
- **cambiar usuario por jacqueline.vasquez**
- **guardar el script usando** **Ctrl+O**, luego salir de nano usando **Ctrl+X.**
- PUEDES VER EL SCRIPT fastqc.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/fastqc.sh) 
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

* EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)

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
* PUEDES VER EL SCRIPT filtado.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/filtrado.sh)

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
```
fastqc  *.fastq
```
* EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)

### INTERPRETACIÓN DE RESULTADOS 

![SECUENCIAS](https://user-images.githubusercontent.com/84527634/122330912-fb1f9500-cf01-11eb-93b6-a75775b5cb74.png)

SECUENCIAS NGS GENERADAS 
- [SRR2006763_1_fastqc.html](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SECUENCIAS%20NGS%20GENERADAS/SRR2006763_1_fastqc.html)
- [SRR2006763_2_fastqc.html](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SECUENCIAS%20NGS%20GENERADAS/SRR2006763_2_fastqc.html)
- [SRR20067634_filtered_1P_fastqc.html](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SECUENCIAS%20NGS%20GENERADAS/SRR20067634_filtered_1P_fastqc.htm)
- [SRR20067634_filtered_2P_fastqc.html](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SECUENCIAS%20NGS%20GENERADAS/SRR20067634_filtered_2P_fastqc.html)
- [SRR20067634_filtered_1U_fastqc.html](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SECUENCIAS%20NGS%20GENERADAS/SRR20067634_filtered_1U_fastqc.html)
- [SRR20067634_filtered_2U_fastqc.html](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SECUENCIAS%20NGS%20GENERADAS/SRR20067634_filtered_2U_fastqc.html)

Tal como se muestra en la figura flujo de trabajos de secuencias Paired-en.
Es posible observar que a nuestro análisis entraron dos secuencias una forward y una reverse (SRR2006763_1_fastqc.html y SRR2006763_2_fastqc.html, respectivamente) y después del análisis salieron 4 archivos filtrados donde:
- SRR20067634_filtered_1P_fastqc.html y SRR20067634_filtered_2P_fastqc.html representa que las dos muestras quedaron apareadas
- SRR20067634_filtered_1U_fastqc.html quedo desapareada el forward 
- SRR20067634_filtered_2U_fastqc.html quedo despareado el reverse 

En relación con la calidad es posible observar que a pesar de que las dos secuencias que ingresaron al análisis tenian buena calidad, después del filtrado esa calidad mejoró aún más tal como se muestra en los gráficos de box plot.  

Se cumplen casí todos los criterios de control de calidad de la secuenciación menos el "Sequence length Distribution", pero esto se debe a que existen algunas secuencias cortas, pero la mayoría están en el largo adecuado y despues del filtrado se eliminaron fragmentos inferiores a 60bp, reduciendo el rango de 43-98pb a 60-98pb.


### REFERENCIAS DE INTERÉS 
- Grüning, B., Dale, R., Sjödin, A. et al. Bioconda: sustainable and comprehensive software distribution for the life sciences. Nat Methods 15, 475–476 (2018). https://doi.org/10.1038/s41592-018-0046-7
- Brown, J., Pirrung, M., & McCue, L. (2017). FQC Dashboard: integrates FastQC results into a web-based, interactive, and extensible FASTQ quality control tool. Bioinformatics, 3137–3139.
- Stephan, P., Dander, A., Fischer, M., Snajder, R., Sperk, M., Efremova, M., . . . Trajanoski, Z. (2014). A survey of tools for variant analysis of next-generation genome sequencing data. Briefings in Bioinformatics, 256-278.
- Taishan, H., Chitnis, N., Monos, D., & Dinh, A. (2021). Next-generation sequencing technologies: An overview. Human Immunology, 1-10.
- He, B., Shu, R., Yang, H., Lu, Q., Wang, W., Song, L., . . . Lang, J. (2020). Assessing the Impact of Data Preprocessing on Analyzing Next Generation Sequencing . Frontiers in Bioengineering and Biotechnology, 1-12 .
- Bolger AM, Lohse M, Usadel B. Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics. 2014;30(15):2114-2120. doi:10.1093/bioinformatics/btu170


