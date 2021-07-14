## PRÁCTICA 2: INTRODUCCIÓN A LINUX PARA GENÓMICA

### INTRODUCCIÓN 
**SHELL DE UNIX**
Una Shell de Unix o también shell, es el término usado en informática para referirse a un intérprete de comandos, el cual consiste en la interfaz de usuario tradicional de los sistemas operativos basados en Unix y similares, como GNU/Linux. [Para más información haz clic Aquí](https://es.wikipedia.org/wiki/Shell_de_Unix).<br />
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

#### **1. INSTALACIÓN Y CONFIGURACIÓN DE SOFTWARE PARA ACCESO REMOTO Y TRANSFERENCIA DE ARCHIVOS**
 1. DESCARGAR E INSTALAR PuTTY <br />
 - Para un sistema operativo windows se puede descargar del siguiente link [PuTTY](https://www.putty.org/).<br />
 
 2. DESCARGAR E INSTALAR WinSCP
 - Para un sistema operativo windows se puede descargar del siguiente link [WinSCP](https://winscp.net/eng/download.php).<br />
 
#### **2. ACCESO REMOTO AL SERVIDOR POMEO**
En esta práctica accedermos al servidor POMEO de la Escuela de Ciencias del Mar usando nombres de usuario y password respectivos.
Para lo susuarios de windows usaremos PuTTy aproximadamente como se muestra en la siguiente copia de pantalla.

![primera vez que se conecta al servidor pomeo](https://user-images.githubusercontent.com/84527634/123120891-b076af00-d412-11eb-8a5b-f1ae90df4ba0.png)
![segundo paso de la primera vez de coneccion con pomeo](https://user-images.githubusercontent.com/84527634/123121157-ef0c6980-d412-11eb-821d-1acdfcfc03a4.png)

Una vez dentro de la terminal agregar nombre de usuario y contraseña correspondiente.

![usuario y contraseña](https://user-images.githubusercontent.com/84527634/123138222-c7bd9880-d422-11eb-827e-d4c4bd926f4e.png)

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

#### **3. INSTALACIÓN Y CONFIGURACIÓN DE CONDA, NANO Y SRA TOOLKIT**
Accede nuevamente al servidor POMEO con tu cuenta de usuario y clave de acceso. Ahora instalaremos algunos software clave para el trabajo de genómica incluyendo el gestor de software Miniconda y el editor nano, entre otros.

Ejecutar los siguientes comandos en la terminal:

Para instalar Miniconda primero lo descargaremos del repositorio de anaconda con el comando wget. Se tendra un archivo de salida ejecutable con extension “.sh”, que debe ser ejecutado con el comando bash.
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```
Activación de miniconda
```
source ~/.bashrc
```
Revisión del contenido de conda
```
conda list
```
Revisión de la version de conda
```
conda --version
```
Instalación de editor de texto nano
```
conda install -c conda-forge nano
```
* LINK DEL EJEMPLO EN LA TERMINAL [AQUÍ](https://github.com/GenomicsEducation/Jacqueline-Vasquez/blob/43bbeb5202abe65bbc1e51b534456f00b41ecb7f/PR%C3%81CTICA%202/EJEMPLOS%20DE%20LA%20TERMINAL/terminal%20practica%202.txt)

#### **4. APRENDER A CREAR UN SCRIPT USANDO EL EDITOR DE TEXTO NANO.**
Usando nano crearemos un script denominado script1.sh. En este script ejecutaremos una simple impresión de la frase “Curso de Genomica” usando la función echo. La primera línea del script debe contener la siguiente instrucción #!/bin/sh a veces denominada shebang. Esta instrucción indica que se debe ejecutar, desde el directorio bin, el script actual usando la Shell.

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

#### **5. SCRIPT PARA DESCARGAR SECUENCIAS NGS COMPRIMIDAS EN FORMATO SRA**
SRA Toolkit es una herramienta que permite descargar y convertir automáticamente archivos en formato .SRA en otros formatos usando un interprete de comandos y de manera automática. Es compatible con Linux, Windows y Mac. Usé el comando wget y tar para descargar y descomprimir SRA Toolkit.<br />

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
 
