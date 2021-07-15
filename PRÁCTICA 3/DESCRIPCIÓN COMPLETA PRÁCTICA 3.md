 ## PRÁCTICA 3: INTRODUCCIÓN AL ANÁLISIS DE SECUENCIAS NGS.
  
  ## :white_check_mark: INTRODUCCIÓN 
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
  
<div align="center">
<p>FORMATO fastq</p>
<img src="https://user-images.githubusercontent.com/84527634/125660700-fd6ff03f-ff32-4561-a896-5d4ea7282e99.png" height="400">
</div>

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
 
## :white_check_mark: OBJETIVOS 
  1. Comprobar la integridad de las descarga de los archivos usando md5sum.
  2. Realizar un análisis integral de control de calidad de secuencias NGS con fastqc.<br />
  3. Filtrar y podar las secuencias con el software trimmomatic.<br />
  4. Transferir archivos mediante protocolo FTP desde el Servidor a nuestros computadores. 
  
## ORIGEN DE LAS MUESTRAS 
  Las muestras que serán analizadas provienen de la base de datos [SRA de NCBI](https://www.ncbi.nlm.nih.gov/sra) y corresponden a lecturas crudas del salmón del Atlántico *Salmo salar* en formato fastq, obtenidas por secuenciación de extremos emparejados con un secuenciador Illumina HiSeq2000.<br />
  
## :white_check_mark: TRABAJO PRÁCTICO: ETAPAS DEL ANÁLISIS DE CONTROL DE CALIDAD, FILTRADO Y PODA.

 ### **1. CONEXIÓN REMOTA AL SERVIDOR POMEO**
  
<div align=" leftAlign ">
<p>PASO 1. ABRIR PuTTY</p>
<img src="https://user-images.githubusercontent.com/84527634/122123050-86fac980-cdfb-11eb-8294-9d2ed06d41bc.png" width="800" height="500">
</div>

<div align=" leftAlign ">
<p>PASO 2. AGREGAR USUARIO Y CONTRASEÑA</p>
<img src="https://user-images.githubusercontent.com/84527634/122123842-844ca400-cdfc-11eb-84dd-e1f942bf16ce.png" width="1000" height="400">
</div>

 ### **2. INSTALACIÓN Y CONFIGURACIÓN DE SOFTWARE PARA EL CONTROL DE CALIDAD: FastQC y Trimmomatic** <br />
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
:green_book: EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)
 
 ### **3. DESCARGAR SECUENCIAS NGS USANDO SRA toolkit**
 
Para esta práctica se trabajará con la biomuestra **SRR2006763** proveniente de la cepa Aquagen de *Salmo salar* y a partir de la que se obtendrán los dos archivos fastq, ya que los datos provienen de secuenciación pair-end.
Biomuestra 1:SRR2006763_1.fastq Biomuestra 2:SRR2006763_2.fastq

Crear un archivo ejecutable (.sh) con nano denominado download.sh
```
nano download.sh
```
Se abrira la venta de NANO

<div align=" leftAlign ">
<img src="https://user-images.githubusercontent.com/84527634/122129316-ed83e580-ce03-11eb-9ad4-d5f79edd84e2.png" height="400">
</div>

Una vez dentro de NANO Introducir y guardar la información del script como se detalla a continuación, cambiando en la segunda y tercera línea por su nombre de usuario. Note que el script solo tiene 4 líneas.

:page_with_curl: PUEDES VER EL SCRIPT dowload.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/download.sh)
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
- **Recordar cambiar usuario por jacqueline.vasquez** <br />
- **Recordar guardar el script usando** **Ctrl+O**, luego salir de nano usando **Ctrl+X.** <br />
:page_with_curl: PUEDES VER EL SCRIPT fdump.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/fdump.sh) 

Correr el script mediante el siguiente comando

```
 bash fdump.sh
```
Al finalizar, además de extraer los archivos fastq debería indicarle el total de read leidos y escritos.
spots read : 2,856,007 reads read : 5,712,014 reads written : 5,712,014
Biomuestra 1:SRR2006763_1.fastq Biomuestra 2:SRR2006763_2.fastq

:green_book: EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt) 

### **4. COMPROBACIÓN DE LA INTEGRIDAD DE LOS ARCHIVOS**

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

:green_book: EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)

### **5. REALIZAR ANÁLISIS DEL CONTROL DE CALIDAD**

Para el análisis de control de calidad de secuencias fastq que provienen de secuenciadores NGS, en el directorio SRR2006763 crear y correr el siguiente script (nano fastqc.sh)
- **cambiar usuario por jacqueline.vasquez**<br />
- **guardar el script usando** **Ctrl+O**, luego salir de nano usando **Ctrl+X.**<br />
:page_with_curl: PUEDES VER EL SCRIPT fastqc.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/fastqc.sh) 
```
  #!/bin/bash
  #SBATCH - J fastqc_usuario
  fastqc /home2/usuario/SRA_samples/SRR2006763/*.fastq
```
La salida resultante de la ejecución del script anterior serán dos archivos:

 1. archivo HTML
 2. archivo .zip

:green_book: EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)

### **6. REALIZAR FILTRADO Y PODA DE LAS SECUENCIAS**

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
:page_with_curl: PUEDES VER EL SCRIPT filtado.sh [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/SCRIPT.sh/filtrado.sh)

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
:green_book: EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/2f5afe2fbc90bfcd7a3df52898098b12433a0d49/PR%C3%81CTICA%203/EJEMPLO%20DE%20LA%20TERMINAL/TERMINAL%20PRACTICA%203.txt)

### **7. TRANSFERIR ARCHIVOS DE CONTROL DE CALIDAD MEDIANTE PROTOCOLO FTP DESDE EL SERVIDOR AL COMPUTADOR DEL USUARIO.**<br />
Para Transferir archivos mediante protocolo FTP desde Servidor al usuario, se puede seralizar de las siguientes maneras:
- Para Windows se puede hacer medante el software WINSCP u otro similar tal como se muestra en la siguiente imagen
![WINSCP](https://user-images.githubusercontent.com/84527634/123025274-60630280-d3a8-11eb-82a1-84791dd8d876.png)

- Para MAC: se puede crear un directorio temporal para la descarga de archivos
```
cd tmp
mkdir download
cd download
scp usuario@200.54.220.141:/home2/usuario/SRA_samples/SRR2006763/*.html .
```
- Se solicitará el ingreso de su clave
- Se concluirá la descarga al computador local y se la puede revisar con open.

Adicionalmente, POMEO tiene instalado Rstudio server por lo que es posible acceder sus archivos directamente ingresando al servidor a traves del puerto 8787 al cual podrás ingresar utilizando tu usuario y contraseña 

[Rstudio de POMEO](http://200.54.220.141:8787/auth-sign-in)


## INTERPRETACIÓN DE RESULTADOS 

<div align="center">
<p>SECUENCIAS NGS</p>
<img src="https://user-images.githubusercontent.com/84527634/122330912-fb1f9500-cf01-11eb-93b6-a75775b5cb74.png" height="400">
</div>

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


## :white_check_mark: REFERENCIAS DE INTERÉS 
- Grüning, B., Dale, R., Sjödin, A. et al. Bioconda: sustainable and comprehensive software distribution for the life sciences. Nat Methods 15, 475–476 (2018). https://doi.org/10.1038/s41592-018-0046-7
- Brown, J., Pirrung, M., & McCue, L. (2017). FQC Dashboard: integrates FastQC results into a web-based, interactive, and extensible FASTQ quality control tool. Bioinformatics, 3137–3139.
- Stephan, P., Dander, A., Fischer, M., Snajder, R., Sperk, M., Efremova, M., . . . Trajanoski, Z. (2014). A survey of tools for variant analysis of next-generation genome sequencing data. Briefings in Bioinformatics, 256-278.
- Taishan, H., Chitnis, N., Monos, D., & Dinh, A. (2021). Next-generation sequencing technologies: An overview. Human Immunology, 1-10.
- He, B., Shu, R., Yang, H., Lu, Q., Wang, W., Song, L., . . . Lang, J. (2020). Assessing the Impact of Data Preprocessing on Analyzing Next Generation Sequencing . Frontiers in Bioengineering and Biotechnology, 1-12 .
- Bolger AM, Lohse M, Usadel B. Trimmomatic: a flexible trimmer for Illumina sequence data. Bioinformatics. 2014;30(15):2114-2120. doi:10.1093/bioinformatics/btu170
