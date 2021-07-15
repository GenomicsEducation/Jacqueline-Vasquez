## PRÁCTICA 1: INTRODUCCIÓN A BASES DE DATOS GENÓMICOS : ASSEMBLY Y SRA DE [NCBI](https://www.ncbi.nlm.nih.gov/)

## :white_check_mark: INTRODUCCIÓN

El Centro Nacional para la Información Biotecnológica (en inglés: *National Center for Biotechnology Information* [NCBI]), es parte de la Biblioteca Nacional de Medicina de los Estados Unidos. Se encarga de almacenar y actualizar la información referente a secuencias genómicas en GenBank, un índice de artículos científicos rederentes a biomedicina, biotecnología, bioquímica, genética y genómica en PubMed, una recopilación de enfermedades genéticas humanas en OMIM, además de otros datos biotecnológicos de relevancia en diversas bases de datos.<br />
Todas las bases de datos de NCBI estan disponibles en línea de manera gratuita <br />
Dentro de las bases de datos se encuentran por ejemplo: <br />

<div align="center">
<p>BASE DE DATOS DE NCBI</p>
<img src="https://user-images.githubusercontent.com/84527634/122137441-9fc2a980-ce12-11eb-94e5-a349897f193a.png" width="900" height="550">
</div>

* **Assembly:**	Contiene información sobre la	estructura de genomas ensamblados, nombres de ensamblados y otros metadatos (anotación de genes), informes estadísticos	y	enlaces	a	datos de secuencias	de genómas.	
* **GenBank:** Base de datos redundante	de secuencias	genéticas	del	Nacional Institutes	of Health	(NIH), es una colección anotada de todas las secuencias de ADN disponibles públicamente. GenBank es parte del	INSDC.	
* **Genome:**	Contiene secuencia y mapa	de genomas completos y en	progreso de	más	de 1000	organismos.	Los tres dominios	principales de la	vida (bacterias, arqueas y eucariotas), pero también virus,	fagos, viroides, plásmidos.	
* **Reference	sequence (RefSeq):** Colección de secuencias de ADN	y ARN (cDNA) no redundantes y	curadas producidas por NCBI. RefSeqs proporciona una referencia	estable para la anotación del genoma,	iden\ﬁcación y caracterización de genes, análisis de mutaciones y	polimorﬁsmos,	estudios de expresión y	análisis comparativos.
* **SRA (Sequence Read Archive):** Almacena	datos	NGS	de plataformas de secuenciación que incluyen Roche 454 GS	System®, Illumina Genome Analyzer®, Life Technologies AB SOLiD System®,	Helicos Biosciences Heliscope®,	Complete Genomics® y Paciﬁc	Biosciences	SMRT®.
* **BioProject:** Este recurso describe	el alcance,	el material	y	los	objetivos de proyectos genómicos,	proporcionando un	mecanismo	para recuperar conjuntos de	datos	almacenados	en	diferentes bases de	datos.	
* **BioSample:** Esta base de	datos	contiene descripciones de	materiales de origen biológico utilizados	en ensayos experimentales.

## :white_check_mark: OBJETIVOS 

1. Reconocer y utlizar las Bases de	datos	Assembly y SRA del NCBI
2. Realizar	descarga manual	de metadata de una muestra seleccionada.	
3. Registrar actividades en	el proyecto	de genómica	github.

## :white_check_mark: TRABAJO PRÁCTICO

### 1. SELECCIÓN DE UNA ESPECIE DE IMPORTANCIA ECONÓMICA EN PRODUCCIÓN ANIMAL. :sheep:
<div align="center">
<p>Ovis aries</p>
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flock_of_sheep.jpg/245px-Flock_of_sheep.jpg" width="300" height="300">
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

* [Link de acceso al genoma de Ovis aries (sheep)](https://www.ncbi.nlm.nih.gov/assembly/GCF_002742125.1)

***SECUENCIAS DE REFERENCIA COMPLETA, INTEGRADA Y NO REDUNDANTE DEL GENOMA ("Refseq")*** <br />
Información del cromosoma 1 del Ovis aries cepa OAR_USU_Benz2616 <br />
- Locus: NC_040252 301310028bp ADN lineal (06-FEB-2019) <br />
- [Bioproyectos](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA517172)
- [Biomuestras](https://www.ncbi.nlm.nih.gov/biosample/SAMEA104496890)
- [Ensamblaje](https://www.ncbi.nlm.nih.gov/assembly/GCF_002742125.1)

* [Link de acceso al cromosoma 1 de Ovis aries (sheep)](https://www.ncbi.nlm.nih.gov/nuccore/NC_040252.1)

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

## :white_check_mark: REFERENCIAS Y LINK DE INTERÉS

1. https://es.wikipedia.org/wiki/Centro_Nacional_para_la_Informaci%C3%B3n_Biotecnol%C3%B3gica
2. https://youtu.be/fCd6B5HRaZ8 
3. https://www.illumina.com/content/dam/illumina-marketing/documents/products/illumina_sequencing_introduction.pdf
4. https://www.nature.com/articles/nrg.2016.49
5. https://github.com/GenomicsEducation/GeneticaGenomicaProducionAnimal_v21
6. https://github.com/pkalbers/OxfordDPhilThesis 
7. https://github.com/Lamm-a/MSc-Bioinformatics-thesis 
8. https://www.ionos.es/digitalguide/paginas-web/desarrollo-web/tutorial-de-markdown/ 
