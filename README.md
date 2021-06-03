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

*link
https://www.ncbi.nlm.nih.gov/assembly/GCF_002742125.1

***SECUENCIAS DE REFERENCIA COMPLETA, INTEGRADA Y NO REDUNDANTE DEL GENOMA ("Refseq")*** <br />
Información del cromosoma 1 del Ovis aries cepa OAR_USU_Benz2616 <br />
- Locus: NC_040252 301310028bp ADN lineal (06-FEB-2019) <br />
- [Bioproyectos](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA517172)
- [Biomuestras](https://www.ncbi.nlm.nih.gov/biosample/SAMEA104496890)
- [Ensamblaje](https://www.ncbi.nlm.nih.gov/assembly/GCF_002742125.1)

*link
https://www.ncbi.nlm.nih.gov/nuccore/NC_040252.1

***BIOPROYECTOS Y BIOMUESTRAS DE LA BASE DE DATOS SRA DE NCBI***

Ovis aries[Taxonomy ID: 9940]
|RESUMEN|                   |
|----------------------|-------------------|
| BIOMUESTRAS | 7,897 públicas|
|BIOPROYECTOS | 363 públicos|
* link https://www.ncbi.nlm.nih.gov/sra/?term=(Ovis+aries)+AND+%22Ovis+aries%22%5Borgn%3A__txid9940%5D

[EJEMPLO DE LA MUESTRA SRX10911446: RNA-Seq de Ovis aries: Glándulas adrenales de hembra adulta](https://www.ncbi.nlm.nih.gov/sra/SRX10911446[accn])<br />
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
  
  



