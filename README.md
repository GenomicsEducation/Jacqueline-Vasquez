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
  1. CONECCIÓN REMOTA AL SERVIDOR POMEO
  2. CONFIGURACIÓN DE BIOCONDA E INSTALACIÓN DE SOFTWARE
  3. DESCARGAR BIOMUESTRA DESDE SRA
  4. COMPROBACIÓN DE LA INTEGRIDAD DE LOS ARCHIVOS
  5. ANÁLISIS DEL CONTROL DE CALIDAD DE LAS SECUENCIAS fastq
  6. FILTRADO Y PODA

### REFERENCIAS DE INTERÉS 



