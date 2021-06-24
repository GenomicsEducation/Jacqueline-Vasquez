
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


### TRABAJO PRÁCTICO

### 1.

### 2. 




### 3. INFORMACIÓN DE BIOPROYECTOS Y BIOMUESTRAS


### REFERENCIAS Y LINK DE INTERÉS
