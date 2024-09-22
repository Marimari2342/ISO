# Introducción a los Sistemas Operativos - Practica 1

## 🔵 1. Características de GNU/Linux:

(a) Mencione y explique las características más relevantes de GNU/Linux.

(b) Mencione otros sistemas operativos y compárelos con GNU/Linux en cuanto a los
puntos mencionados en el inciso a.

(c) ¿Qué es GNU?

(d) Indique una breve historia sobre la evolución del proyecto GNU

(e) Explique qué es la multitarea, e indique si GNU/Linux hace uso de ella.

(f) ¿Qué es POSIX?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

Un SO es un programa que actua como intermediario entre el usuario y el hardware y es parte esencial de cualquier sistema de computo. El proposito del SO es crear un entorno comodo y eficiente para la ejecucion de programas, garantizando el correcto funcionamiento del sistema. Las principales funciones de todo SO son: administrar la memoria, administrar la CPU y administrar los dispositivos.

El GNU/Linux es un SO tipo Unix (Unix like), pero libre, el mismo esta diseñado por miles de programadores, es gratuito y de libre distribucion (se puede bajar desde la Web, CD, etc), tiene diversas distribuciones (customizaciones) y es de codigo abierto, es decir, que podemos ver como esta hecho. Esto nos permite estudiarlo, personalizarlo, auditarlo, etc.

---------------------

**(a)** Características más relevantes de GNU/Linux:

* Código Abierto y Libre: GNU/Linux es un sistema operativo de código abierto, lo que significa que su código fuente está disponible públicamente para que cualquiera pueda verlo, modificarlo y distribuirlo. La ventaja de esto es que permite la personalización y adaptación del sistema a necesidades específicas, promueve la transparencia en el desarrollo del software y favorece la colaboración comunitaria.

* Multitarea: lo que permite ejecutar múltiples procesos al mismo tiempo. Esto mejora el rendimiento y la capacidad de respuesta del sistema, permitiendo a los usuarios realizar múltiples tareas simultáneamente sin interferir entre sí.

* Multiplataforma: GNU/Linux puede funcionar en una amplia variedad de hardware. Su capacidad para escalar desde sistemas pequeños a grandes lo hace adecuado para diferentes entornos, desde escritorios personales hasta centros de datos.

* Seguridad y Permisos: GNU/Linux implementa un robusto sistema de permisos y control de acceso que incluye características como el control de acceso basado en roles (RBAC) y capacidades avanzadas de gestión de usuarios. Esto mejora la seguridad al limitar el acceso a archivos y recursos del sistema. Las políticas de permisos estrictas ayudan a proteger el sistema contra accesos no autorizados y malware.

* Comunidad Activa y Soporte: GNU/Linux cuenta con una amplia comunidad de desarrolladores y usuarios que contribuyen al desarrollo del sistema y ofrecen soporte a través de foros, listas de correo y documentación. Proporciona acceso a una vasta cantidad de recursos y asistencia, lo que facilita la resolución de problemas y la obtención de soporte técnico.

* Compatibilidad y Software: GNU/Linux ofrece compatibilidad con una amplia gama de software, desde aplicaciones de línea de comandos hasta entornos de escritorio completos. Además, es compatible con muchos estándares abiertos y protocolos. Esto facilita la integración con diferentes herramientas y aplicaciones, y permite a los usuarios ejecutar una variedad de software en el sistema operativo.

---------------------

**(c)** **GNU** es un acrónimo recursivo que significa "GNU's Not Unix" (**GNU** **N**o es **U**nix). Es un proyecto de software libre iniciado por Richard Stallman en 1983 con el objetivo de desarrollar un sistema operativo completo y libre que sea compatible con Unix.

GNU se refiere a 4 libertades principales de los usuarios del software:

* Libertad de usar el programa con cualquier proposito.

* Libertad de estudiar su funcionamiento.

* Libertad para distribuir sus copias.

* Libertad para mejorar los programas.

---------------------

**(e)** Multitarea es una capacidad del sistema operativo que permite a una computadora ejecutar múltiples tareas o procesos de manera simultánea. En un contexto de sistemas operativos, la multitarea se refiere a la capacidad de un sistema para gestionar y coordinar varios procesos al mismo tiempo, ya sea que esos procesos se ejecuten en paralelo (simultáneamente) o de manera secuencial muy rápida, dando la impresión de que se están ejecutando al mismo tiempo.

GNU/Linux utiliza multitarea preventiva para gestionar la ejecución de procesos, asegurando una asignación justa y eficiente del tiempo de CPU. Esta capacidad permite que GNU/Linux maneje múltiples aplicaciones y tareas al mismo tiempo, mejorando el rendimiento y la capacidad de respuesta del sistema.

---------------------

**(f)** **POSIX** (Portable Operating System Interface) es un conjunto de estándares definidos para mantener la compatibilidad y portabilidad entre sistemas operativos. Estos estándares están diseñados para permitir que el software escrito para un sistema POSIX pueda ser ejecutado en otros sistemas POSIX sin modificaciones significativas.

</details>

## 🔵 2. Distribuciones de GNU/Linux:

(a)¿Qué es una distribución de GNU/Linux? Nombre al menos 4 distribuciones de GNU / Linux y cite diferencias básicas entre ellas.

(b) ¿En qué se diferencia una distribución de otra?

(c) ¿Qué es Debian? Acceda al [sitio](https://www.debian.org/intro/about) e indique cuáles son los objetivos del proyecto y una breve cronología del mismo.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Una distribución de **GNU/Linux** es un sistema operativo que utiliza el núcleo Linux junto con una variedad de software de libre y código abierto, además de herramientas y aplicaciones. Cada distribución combina el núcleo Linux con una selección particular de software y herramientas, ofreciendo diferentes enfoques y características según sus objetivos.

Distribuciones populares de GNU/Linux:

* **Ubuntu:**

Orientación: General, amigable para principiantes.

Entorno de escritorio: GNOME (anteriormente usaba Unity).

Gestor de paquetes: APT (Advanced Package Tool).

Ciclo de lanzamiento: Regular (LTS cada dos años).

* **Debian:**

Orientación: Estable, enfocado en la libertad del software y la estabilidad.

Entorno de escritorio: No se especifica un entorno por defecto, pero GNOME es el más común.

Gestor de paquetes: APT.

Ciclo de lanzamiento: Menos frecuente, con versiones estables que se liberan cuando están listas.

* **Fedora:**

Orientación: Innovadora, con tecnologías y software de vanguardia.

Entorno de escritorio: GNOME.

Gestor de paquetes: DNF (Dandified YUM).

Ciclo de lanzamiento: Regular, con nuevas versiones cada 6 meses.

* **Arch Linux:**

Orientación: Minimalista, para usuarios avanzados que desean controlar cada aspecto del sistema.

Entorno de escritorio: No incluye un entorno de escritorio por defecto; se instala manualmente.

Gestor de paquetes: Pacman.

Ciclo de lanzamiento: Rolling release (actualizaciones continuas sin versiones específicas).

---------------------

**(b)** Las diferencias entre distribuciones de GNU/Linux pueden abarcar varios aspectos:

* Gestor de paquetes: Cada distribución utiliza un sistema diferente para la instalación y gestión de software. Por ejemplo, Debian y Ubuntu usan APT, mientras que Fedora usa DNF y Arch usa Pacman.

* Entorno de escritorio: Las distribuciones pueden incluir diferentes entornos de escritorio por defecto, como GNOME, KDE Plasma, XFCE, etc.

* Ciclo de lanzamiento: Algunas distribuciones, como Ubuntu LTS, siguen un ciclo de lanzamientos regulares con versiones de soporte a largo plazo, mientras que otras, como Arch Linux, utilizan un modelo de lanzamiento continuo (rolling release).

* Filosofía y objetivos: Cada distribución puede tener una orientación diferente, como ser amigable para principiantes (Ubuntu), ofrecer software más actualizado y experimental (Fedora), o proporcionar una base mínima para usuarios avanzados (Arch Linux).

* Compatibilidad y soporte de hardware: Algunas distribuciones están optimizadas para ciertos tipos de hardware o configuraciones, mientras que otras buscan ser lo más universales posible.

---------------------

**(c)** Debian es una de las distribuciones de GNU/Linux más antiguas y respetadas. Es conocida por su estabilidad, robustez y enfoque en el software libre.

Objetivos del proyecto:

Estabilidad: Proporcionar una base sólida y confiable para los usuarios y desarrolladores.

Software libre: Promover el uso del software libre y mantener un compromiso con la libertad del software.

Universalidad: Ser una distribución universal que pueda funcionar en una variedad de arquitecturas y entornos.

</details>

## 🔵 3. Estructura de GNU/Linux:

(a) Nombre cuales son los 3 componentes fundamentales de GNU/Linux.

(b) Mencione y explique la estructura básica del Sistema Operativo GNU/Linux.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Los tres componentes fundamentales de GNU/Linux son:

* Núcleo (Kernel): el núcleo de Linux es el componente central del sistema operativo. Es responsable de gestionar los recursos del hardware, como la CPU, la memoria, y los dispositivos periféricos. Proporciona una interfaz entre el hardware y el software, y maneja la comunicación entre diferentes procesos y el hardware. Sus funciones son: maneja la memoria, controla el acceso a los dispositivos, gestiona procesos y multitarea, y proporciona servicios básicos para las aplicaciones.

* Shell: esta es una interfaz de línea de comandos que permite a los usuarios interactuar con el sistema operativo mediante comandos escritos. Actúa como un intérprete de comandos, ejecutando órdenes ingresadas por el usuario y proporcionando acceso a las funciones del sistema. Como funciones tiene: permitir la ejecución de comandos, la gestión de archivos y directorios, la configuración del sistema y la automatización de tareas a través de scripts.

* Sistema de Archivos: es la estructura que el núcleo utiliza para almacenar y organizar archivos y directorios en el disco duro. Proporciona un método para organizar y acceder a los datos. Sus funciones son: administrar la creación, lectura, escritura y eliminación de archivos y directorios. También gestiona permisos de acceso y asegura la integridad de los datos.

---------------------

**(b)** La estructura básica del sistema operativo GNU/Linux se organiza en varias capas, cada una con un rol específico:

* Núcleo (Kernel):

Ubicación: Capa más baja.

Funciones: Gestiona hardware, proporciona servicios básicos, y maneja la comunicación entre hardware y software.

* Shell y Línea de Comandos:

Ubicación: Capa encima del núcleo.

Funciones: Proporciona una interfaz para que los usuarios interactúen con el sistema mediante comandos. Ejemplos de shells son Bash, Zsh y Fish.

* Entorno de Usuario y Aplicaciones:

Ubicación: Capa superior.

Funciones: Incluye aplicaciones y herramientas de usuario, como editores de texto, navegadores web, y software de oficina. Estas aplicaciones son generalmente ejecutables que interactúan con el sistema a través de la shell y el núcleo.

* Sistema de Archivos:

Ubicación: Parte del núcleo, pero interactúa estrechamente con el entorno de usuario.

Funciones: Organiza y gestiona los datos en discos duros, particiones, y otros medios de almacenamiento. Ejemplos de sistemas de archivos incluyen ext4, XFS y Btrfs.

* Bibliotecas y Herramientas del Sistema:

Ubicación: Se encuentran en el espacio de usuario, pero son fundamentales para la ejecución de aplicaciones.

Funciones: Proporcionan funciones comunes y API para aplicaciones y servicios del sistema. Ejemplos incluyen la biblioteca estándar de C (glibc) y herramientas como coreutils.

* Servicios y Daemons:

Ubicación: Capa de servicios del sistema.

Funciones: Ejecutan tareas en segundo plano para proporcionar funcionalidades adicionales, como servicios de red, gestión de impresión, y otras tareas administrativas. Ejemplos incluyen cron, sshd (para conexiones SSH) y apache2 (para servidores web).

Esta estructura modular y jerárquica permite que GNU/Linux sea flexible personalizable y robusto para una amplia variedad de usos, desde servidores hasta sistemas de escritorio.

</details>

## 🔵 4. Kernel:

(a) ¿Qué es? Indique una breve reseña histórica acerca de la evolución del Kernel de GNU/Linux.

(b) ¿Cuáles son sus funciones principales?

(c) ¿Cuál es la versión actual? ¿Cómo se definía el esquema de versionado del Kernel en versiones anteriores a la 2.4? ¿Qué cambió en el versionado se impuso a partir de la versión 2.6?

(d) ¿Es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina?

(e) ¿Dónde se encuentra ubicado dentro del File System?

(f) ¿El Kernel de GNU/Linux es monolítico? Justifique.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** El Kernel de GNU/Linux es el núcleo del sistema operativo Linux, que actúa como intermediario entre el hardware y las aplicaciones. Fue creado por Linus Torvalds en 1991, inspirado en el sistema Unix. La primera versión (0.01) se lanzó en septiembre de 1991, y a lo largo de los años, el kernel ha evolucionado con contribuciones de miles de desarrolladores y comunidades de software libre, expandiendo su funcionalidad y mejorando su estabilidad y rendimiento. Desde su origen, se ha utilizado en una variedad de sistemas, desde servidores hasta dispositivos móviles, y ha dado lugar a numerosas distribuciones de Linux.

---------------------

**(b)** Funciones principales del Kernel:

* Gestión de procesos: Controla la creación, ejecución y terminación de procesos.

* Gestión de memoria: Administra la memoria RAM y el espacio de direcciones de los procesos.

* Gestión de dispositivos: Proporciona control sobre dispositivos de hardware a través de controladores.

* Sistema de archivos: Facilita la interacción con el sistema de archivos, permitiendo la lectura y escritura de datos.

* Seguridad y acceso: Implementa mecanismos de seguridad para controlar el acceso a recursos del sistema.

* Comunicación entre procesos: Permite la comunicación y sincronización entre procesos en ejecución.

---------------------

**(d)** Sí, es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina. Esto se realiza comúnmente en sistemas que utilizan múltiples versiones del kernel para pruebas o compatibilidad con hardware específico. Los administradores pueden seleccionar el kernel a utilizar en el momento del arranque a través de un gestor de arranque como GRUB.

---------------------

**(e)** El Kernel de GNU/Linux se encuentra ubicado en el directorio /boot, donde se almacenan los archivos del kernel (como vmlinuz), así como otros archivos necesarios para el arranque del sistema.

---------------------

**(f)** Sí, el Kernel de GNU/Linux es considerado un kernel monolítico. Esto significa que el núcleo del sistema operativo y los controladores de dispositivo se ejecutan en el mismo espacio de memoria en modo núcleo (kernel mode), lo que permite un acceso más rápido a los recursos del hardware. Sin embargo, GNU/Linux también soporta módulos del kernel, que permiten cargar y descargar controladores y funcionalidades en tiempo de ejecución, lo que le confiere cierta flexibilidad propia de arquitecturas más modulares. Sin embargo, la base sigue siendo monolítica, ya que la mayoría de sus funciones principales están integradas en un solo binario.

</details>

## 🔵 5. Intérprete de comandos (Shell):

(a) ¿Qué es?

(b) ¿Cuáles son sus funciones?

(c) Mencione al menos 3 intérpretes de comandos que posee GNU/Linux y compárelos entre ellos.

(d) ¿Dónde se ubican (path) los comandos propios y externos al Shell?

(e) ¿Por qué considera que el Shell no es parte del Kernel de GNU/Linux?

(f) ¿Es posible definir un intérprete de comandos distinto para cada usuario? ¿Desde dónde se define? ¿Cualquier usuario puede realizar dicha tarea?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Un intérprete de comandos, o shell, es una interfaz de línea de comandos que permite a los usuarios interactuar con el sistema operativo. A través del shell, los usuarios pueden ejecutar comandos, gestionar archivos y ejecutar programas. Actúa como un intermediario entre el usuario y el sistema operativo, interpretando los comandos escritos y enviándolos al kernel para su ejecución.

---------------------

**(b)** Funciones del shell:

* Ejecutar comandos: Permite a los usuarios ingresar y ejecutar comandos del sistema.

* Automatización de tareas: Facilita la creación de scripts para automatizar tareas repetitivas.

* Gestión de archivos: Permite a los usuarios manipular archivos y directorios (crear, eliminar, copiar, mover).

* Interacción con procesos: Ofrece funciones para gestionar procesos en ejecución (iniciar, detener, cambiar prioridades).

* Configuración del entorno: Permite la configuración de variables de entorno que influyen en el comportamiento del sistema y las aplicaciones.

---------------------

**(c)** Ejemplos de intérpretes de comandos:

* Bash (Bourne Again Shell): es el más popular y versátil; soporta scripting  avanzado, autocompletado y edición de línea. Es ampliamente utilizado en muchas distribuciones y tiene una gran cantidad de recursos y documentación.

* Zsh (Z Shell): ofrece características avanzadas como globbing, corrección ortográfica y soporte para temas. Es altamente configurable y amigable para usuarios que buscan personalización.

* Fish (Friendly Interactive Shell): se enfoca en la usabilidad con una sintaxis intuitiva, autocompletado inteligente y colorido. Ideal para principiantes debido a su simplicidad y amigabilidad, pero menos flexible para scripting avanzado.

---------------------

**(d)** Ubicación (path) de los comandos:

* Comandos propios del Shell: Generalmente se encuentran en directorios como <code>/bin</code> y <code>/usr/bin</code>. Estos son comandos esenciales que vienen incluidos con el sistema.

* Comandos externos: También pueden encontrarse en directorios como <code>/usr/local/bin</code> para aplicaciones instaladas por el usuario o <code>/sbin</code> para comandos de administración del sistema.

---------------------

**(e)** El shell no es parte del kernel porque cumple funciones diferentes. El kernel es el núcleo del sistema operativo, gestionando recursos de hardware y procesos, mientras que el shell es una interfaz de usuario que permite interactuar con el sistema. En resumen, el shell opera a un nivel más alto que el kernel, facilitando la interacción del usuario y no realizando las funciones fundamentales de gestión de recursos que realiza el kernel.

---------------------

**(f)** Sí, es posible definir un intérprete de comandos distinto para cada usuario. Esto se puede hacer editando el archivo <code>/etc/passwd</code>, donde se especifica el shell por defecto para cada usuario en el último campo de cada línea correspondiente a un usuario.

el mismo se define en el archivo <code>/etc/passwd</code> o mediante el comando chsh (change shell), que permite a los usuarios cambiar su shell por defecto.

Respecto a los permisos, cualquier usuario puede cambiar su shell por defecto usando chsh, pero para cambiar el shell de otros usuarios se necesitan permisos de superusuario (root).

</details>

## 🔵 6. Sistema de Archivos (File System):

(a) ¿Qué es?

(b) Mencione sistemas de archivos soportados por GNU/Linux.

(c) ¿Es posible visualizar particiones del tipo FAT y NTFS en GNU/Linux?

(d) ¿Cuál es la estructura básica de los File System en GNU/Linux? Mencione los directorios más importantes e indique qué tipo de información se encuentra en ellos. ¿A qué hace referencia la sigla FHS?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Un sistema de archivos es el componente del sistema operativo encargado de organizar, gestionar, y almacenar los datos en los dispositivos de almacenamiento (como discos duros, SSDs, memorias USB, etc.). Un sistema de archivos define la manera en que los archivos se crean, editan, eliminan, y cómo se accede a ellos. Además, proporciona una estructura jerárquica en forma de directorios o carpetas para organizar estos archivos.

---------------------

**(b)** GNU/Linux soporta una amplia variedad de sistemas de archivos. Algunos de los más comunes son:

* ext4 (cuarta versión del Extended File System): Es el sistema de archivos predeterminado en la mayoría de las distribuciones de Linux modernas.

* ext3 (tercera versión del Extended File System): Sistema de archivos con soporte de journaling (registro de cambios), usado en distribuciones más antiguas.

* ext2: Un sistema de archivos más antiguo, sin journaling.

* XFS: Sistema de archivos de alto rendimiento, utilizado principalmente en servidores y sistemas que requieren escalabilidad.

* Btrfs (B-tree File System): Sistema de archivos con características avanzadas como snapshots, compresión, y autocomprobación de integridad de datos.

* ReiserFS: Sistema de archivos con buen rendimiento para el manejo de muchos archivos pequeños.

* vfat: Versión extendida del FAT (File Allocation Table), compatible con FAT16 y FAT32.

* NTFS: Sistema de archivos utilizado principalmente en Windows, soportado en GNU/Linux a través de herramientas como ntfs-3g.

---------------------

**(c)** Sí, es posible visualizar y trabajar con particiones FAT y NTFS en GNU/Linux. Para las particiones FAT (como FAT16 y FAT32), GNU/Linux ofrece soporte nativo y permite montar y manipular estas particiones sin problemas. Para las particiones NTFS, el soporte se proporciona a través del paquete ntfs-3g, que permite montar, leer, y escribir en particiones NTFS. Este paquete suele estar preinstalado en muchas distribuciones modernas.

---------------------

**(d)** GNU/Linux sigue una estructura de directorios jerárquica basada en el FHS (Filesystem Hierarchy Standard), que define cómo deben organizarse los directorios y archivos del sistema operativo. Los directorios más importantes son:

* / (Root): Es la raíz del sistema de archivos. Todo el sistema de archivos de GNU/Linux parte de aquí.

* /bin: Contiene binarios esenciales (programas ejecutables) para el funcionamiento básico del sistema, como ls, cp, mv.

* /boot: Contiene los archivos necesarios para el arranque del sistema, como el kernel y el gestor de arranque.

* /dev: Directorio para los archivos de dispositivos (dispositivos de hardware), como discos duros, puertos, etc.
* /etc: Contiene archivos de configuración del sistema y de programas instalados.

* /home: Contiene los directorios de los usuarios. Cada usuario tiene su propio subdirectorio donde almacena sus archivos personales.

* /lib: Librerías esenciales para los binarios que están en /bin y /sbin.

* /media: Punto de montaje para dispositivos externos como memorias USB y CDs.

* /mnt: Otro directorio utilizado para montar sistemas de archivos temporalmente.

* /opt: Directorio opcional donde se instalan paquetes de software adicionales.

* /proc: Sistema de archivos virtual que contiene información sobre procesos en ejecución y otros datos del kernel.

* /root: Directorio personal del usuario root (administrador del sistema).

* /sbin: Contiene binarios esenciales para la administración del sistema, generalmente solo accesibles por el superusuario (root).

* /tmp: Contiene archivos temporales que pueden ser eliminados después de reiniciar el sistema.

* /usr: Contiene aplicaciones de usuario y utilidades. Dentro de /usr, encontramos subdirectorios como /usr/bin, /usr/lib, /usr/share, etc.

* /var: Contiene archivos variables como registros (logs), datos de bases de datos, archivos de correo, etc.

El FHS (Filesystem Hierarchy Standard) es el estándar que define la estructura y el contenido de los directorios en sistemas tipo Unix (como GNU/Linux). Su objetivo es asegurar una organización coherente y consistente de los archivos y directorios en todas las distribuciones de Linux, facilitando la administración y el desarrollo de software.

</details>

## 🔵 7. Particiones:

(a) Definición. Tipos de particiones. Ventajas y Desventajas.

(b) ¿Cómo se identifican las particiones en GNU/Linux? (Considere discos IDE, SCSI y SATA).

(c) ¿Cuántas particiones son necesarias como mínimo para instalar GNU/Linux? Nómbrelas indicando tipo de partición, identificación, tipo de File System y punto de montaje.

(d) Ejemplifique diversos casos de particionamiento dependiendo del tipo de tarea que se deba realizar en su sistema operativo.

(e) ¿Qué tipo de software para particionar existe? Menciónelos y compare.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Una partición es una división lógica del espacio de almacenamiento en un disco duro u otro medio. Estas divisiones permiten organizar y gestionar el espacio de almacenamiento de manera más eficiente, al separar el disco en diferentes secciones que pueden ser utilizadas por distintos sistemas de archivos o sistemas operativos. Hay distintos tipos de particiones:

* Primarias: son las particiones principales en un disco duro. Un disco puede tener hasta cuatro particiones primarias o tres primarias y una extendida. Ventajas: son las únicas que pueden ser utilizadas para arrancar un sistema operativo. La desventaja es la limitación en el número de particiones.

* Extendidas: no se pueden utilizar directamente para almacenar datos, pero dentro de una partición extendida se pueden crear múltiples particiones lógicas. Ventajas: permite superar la limitación de las 4 particiones, ya que dentro de la extendida pueden existir muchas particiones lógicas. La desventaja es que sólo puede haber una partición extendida por disco.

* Lógicas: se crean dentro de una partición extendida y se utilizan para almacenar datos. Ventajas: No tienen límite en el número dentro de la partición extendida.
Desventajas: No pueden ser usadas para arrancar el sistema operativo (en sistemas con BIOS).

---------------------

**(b)** En GNU/Linux, las particiones se identifican de acuerdo con el nombre del dispositivo de disco seguido por un número que representa la partición.

* Discos IDE: Se identifican como /dev/hd[a-d], donde: hda sería el primer disco IDE (maestro en el canal primario); hdb sería el segundo disco IDE (esclavo en el canal primario). Las particiones se numeran, por ejemplo: /dev/hda1, /dev/hda2, etc.

* Discos SCSI y SATA: Se identifican como /dev/sd[a-z], donde: sda sería el primer disco; sdb sería el segundo disco, y así sucesivamente. Las particiones se numeran, por ejemplo: /dev/sda1, /dev/sda2, etc. Hoy en día, SATA y SCSI utilizan el mismo esquema de identificación, siendo el más común en equipos modernos.

---------------------

**(c)** Para instalar GNU/Linux, como mínimo se requieren dos particiones:

* Partición raíz (/):

Tipo de partición: Primaria o lógica.

Identificación: Generalmente /dev/sda1 o similar.

Tipo de File System: Generalmente ext4 (aunque también puede ser XFS, Btrfs, etc.).

Punto de montaje: /.

* Partición de intercambio (Swap):

Tipo de partición: Primaria o lógica.

Identificación: Generalmente /dev/sda2 o similar.

Tipo de File System: Swap (específico para la memoria de intercambio).

Punto de montaje: No tiene punto de montaje, se usa para paginación.

---------------------

**(d)**

* Caso básico (uso doméstico):

/ (raíz): 20-50 GB, ext4.

Swap: 4-8 GB (dependiendo de la RAM).

/home: Para datos personales, ext4, tamaño restante del disco.

* Caso servidor (alta disponibilidad):

/ (raíz): 20-50 GB, ext4.

/var: 50-100 GB, donde se almacenan logs, bases de datos, etc.

/home: Separado, si hay varios usuarios.

/boot: 500 MB, para almacenar el kernel y los archivos de arranque.

Swap: Igual o ligeramente superior a la RAM.

* Caso de escritorio con múltiples sistemas operativos:

/ (raíz): 20-30 GB para GNU/Linux.

Swap: 4-8 GB.

Partición para Windows: NTFS, en un espacio adecuado.

/home: ext4, para almacenar datos de usuario.

---------------------

**(e)** Existen varias herramientas para particionar, tanto de línea de comandos como con interfaz gráfica:

* GParted (Graphical Partition Editor):

Plataforma: Interfaz gráfica.

Características: Muy fácil de usar, soporta múltiples sistemas de archivos (ext4, NTFS, FAT32, etc.).

Ventajas: Ideal para usuarios que prefieren GUI, permite redimensionar, crear y eliminar particiones sin pérdida de datos.

* fdisk:

Plataforma: Línea de comandos.

Características: Maneja particiones MBR, muy básico pero poderoso.

Ventajas: Disponible en cualquier distribución GNU/Linux, muy ligero.

* parted:

Plataforma: Línea de comandos.

Características: Maneja particiones MBR y GPT, soporta sistemas de archivos como ext4, NTFS, FAT32.

Ventajas: Flexible y avanzado, permite el uso de discos grandes (> 2TB) con GPT.

* cfdisk:

Plataforma: Línea de comandos.

Características: Similar a fdisk, pero con una interfaz semigráfica.

Ventajas: Muy sencillo de usar para tareas básicas.

* GNOME Disks:

Plataforma: Gráfica (GUI).

Características: Herramienta de discos en el entorno de escritorio GNOME, fácil de usar.

Ventajas: Ideal para usuarios de escritorio que necesitan particionar de manera sencilla sin recurrir a terminales.

* Conclusión, comparando, GParted es la mejor opción para la mayoría de los usuarios, ya que tiene una interfaz intuitiva y es compatible con muchos sistemas de archivos. En contraste, herramientas como fdisk o parted son más adecuadas para usuarios avanzados o cuando se requiere trabajar en sistemas sin entorno gráfico.

</details>

## 🔵 8. Arranque (bootstrap) de un Sistema Operativo:

(a) ¿Qué es el BIOS? ¿Qué tarea realiza?

(b) ¿Qué es UEFI? ¿Cuál es su función?

(c) ¿Qué es el MBR? ¿Que es el MBC?

(d) ¿A qué hacen referencia las siglas GPT? ¿Qué sustituye? Indique cuál es su formato.

(e) ¿Cuál es la funcionalidad de un “Gestor de Arranque”? ¿Qué tipos existen? ¿Dónde se instalan? Cite gestores de arranque conocidos.

(f) ¿Cuáles son los pasos que se suceden desde que se prende una computadora hasta que el Sistema Operativo es cargado (proceso de bootstrap)?

(g) Analice el proceso de arranque en GNU/Linux y describa sus principales pasos.

(h) ¿Cuáles son los pasos que se suceden en el proceso de parada (shutdown) de GNU/Linux?

(i) ¿Es posible tener en una PC GNU/Linux y otro Sistema Operativo instalado? Justifique.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** BIOS (Basic Input/Output System) es un firmware almacenado en una memoria no volátil (ROM o Flash) de la placa base del ordenador. Su función principal es iniciar y probar el hardware al encender la computadora, y luego cargar y ejecutar el sistema operativo desde un dispositivo de almacenamiento.

Las principales tareas del BIOS son:

* Realiza el POST (Power-On Self-Test), que verifica si el hardware funciona correctamente.

* Busca un dispositivo de arranque (disco duro, SSD, unidad USB, CD/DVD) y carga el gestor de arranque.

* Proporciona una interfaz básica para interactuar con el hardware antes de cargar el sistema operativo.

---------------------

**(b)** UEFI (Unified Extensible Firmware Interface) es una versión más moderna del BIOS que ofrece una interfaz más avanzada entre el firmware del hardware y el sistema operativo. Sustituye al BIOS tradicional, brindando una serie de ventajas.

* Facilita el proceso de arranque del sistema operativo.

* Permite el uso de discos duros de más de 2 TB mediante el esquema de partición GPT.

* Ofrece una interfaz gráfica, soporte para el uso del mouse y arranque más rápido.

* Incorpora funciones de seguridad, como Secure Boot, para prevenir la carga de software malicioso durante el arranque.

---------------------

**(c)** MBR (Master Boot Record) es un sector especial ubicado al principio de un disco (sector 0) que contiene la información necesaria para iniciar el sistema operativo. El MBR incluye:

* La tabla de particiones, que describe las particiones en el disco.

* El código de arranque que carga el gestor de arranque o el sistema operativo.

* MBC (Master Boot Code) es la sección del MBR que contiene el código de arranque, es decir, el software que se ejecuta durante el proceso de arranque.

---------------------

**(d)** GPT (GUID Partition Table) es un esquema de particionamiento de discos que forma parte del estándar UEFI. GPT sustituye al esquema de particiones MBR. Utiliza identificadores únicos globales (GUID) para cada partición. Soporta discos de más de 2 TB y permite hasta 128 particiones primarias (en lugar de las 4 limitadas por MBR). GPT almacena múltiples copias de la tabla de particiones en diferentes lugares del disco para mayor seguridad.

---------------------

**(e)** Un gestor de arranque es un software que permite seleccionar qué sistema operativo se cargará al iniciar el ordenador. Es el primer programa que se ejecuta después del BIOS o UEFI y se encarga de transferir el control al sistema operativo.

* Tipos de gestores de arranque:

Simple: Carga directamente un único sistema operativo.

Multiboot: Permite seleccionar entre múltiples sistemas operativos instalados en la misma máquina.

* Dónde se instalan: los gestores de arranque generalmente se instalan en el MBR (en sistemas BIOS/MBR) o en la partición EFI (en sistemas UEFI).

* Gestores de arranque conocidos: **GRUB** (GNU GRand Unified Bootloader), popular en sistemas GNU/Linux; **Windows Boot Manager** utilizado por sistemas operativos Windows; **Syslinux** minimalista, para sistemas Linux y pequeñas distribuciones.

---------------------

**(f)** Los pasos que se suceden desde que se prende una computadora hasta que el Sistema Operativo es cargado son:

* Encendido: Al encender la computadora, la CPU comienza a ejecutar las instrucciones del firmware (BIOS/UEFI).

* POST (Power-On Self-Test): El firmware realiza una verificación del hardware (memoria, CPU, discos, etc.).

* Carga del gestor de arranque: El BIOS/UEFI localiza el gestor de arranque en el dispositivo de almacenamiento y lo carga en la memoria.

* Ejecución del gestor de arranque: El gestor de arranque permite seleccionar un sistema operativo, si hay varios.

* Carga del sistema operativo: El gestor de arranque carga el kernel del sistema operativo en la memoria y transfiere el control.

---------------------

**(g)** Proceso de arranque en GNU/Linux y principales pasos:

* BIOS/UEFI: Se inicia el BIOS o UEFI y realiza el POST, luego carga el gestor de arranque (por ejemplo, GRUB).

* GRUB: GRUB presenta una interfaz para seleccionar el sistema operativo. Luego, carga el kernel de GNU/Linux.

* Cargar el kernel: El kernel se carga en la memoria y comienza a detectar e inicializar los controladores de hardware.

* init o systemd: Después de que el kernel está cargado, se ejecuta el proceso init (o systemd en sistemas modernos), que gestiona la secuencia de arranque de servicios y procesos.

* Servicios de usuario: Se cargan los servicios y demonios (red, interfaz gráfica, etc.).

* Login: Finalmente, el sistema muestra la pantalla de inicio de sesión o entra en el entorno gráfico.

---------------------

**(h)** Los pasos que se suceden en el proceso de parada (shutdown) de GNU/Linux son:

* Notificación de apagado: El usuario o administrador emite un comando de apagado (shutdown, halt o poweroff).

* init o systemd: Se ejecuta el proceso de cierre de los servicios en orden inverso al arranque.

* Cierre de procesos: Se cierran los procesos del usuario y los servicios del sistema.

* Desmontaje de sistemas de archivos: Los sistemas de archivos montados se desmontan de manera segura para evitar la corrupción de datos.

* Apagado del hardware: Finalmente, el sistema operativo emite la señal para apagar el hardware.

---------------------

**(i)** Sí, es posible tener GNU/Linux junto con otro sistema operativo (como Windows) en la misma PC. Este proceso se llama arranque dual (dual-boot). El gestor de arranque (como GRUB) permite seleccionar qué sistema operativo se desea iniciar al encender la computadora. Para hacer esto, se suelen dividir los discos en particiones independientes para cada sistema operativo.

</details>

## 🔵 9. Archivos:

(a) ¿Cómo se identifican los archivos en GNU/Linux?

(b) Investigue el funcionamiento de los editores vi y mcedit, y los comandos cat y more.

(c) Cree un archivo llamado “prueba.exe” en su directorio personal usando el vi. El mismo debe contener su número de alumno y su nombre.

(d) Investigue el funcionamiento del comando file. Pruébelo con diferentes archivos. ¿Qué diferencia nota?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** En GNU/Linux, los archivos se identifican y gestionan mediante un sistema de archivos jerárquico. Cada archivo se identifica por:

* Ruta de acceso (path): Un archivo se identifica por su ruta completa. Puede ser: Ruta absoluta (comienza desde el directorio raíz /, por ejemplo, /home/usuario/documento.txt); o Ruta relativa, (relativa al directorio actual, por ejemplo, documento.txt o ./documento.txt).

* Nombre del archivo: GNU/Linux distingue entre mayúsculas y minúsculas. Además,internamente, cada archivo se identifica con un número de inode (identificador único dentro de un sistema de archivos). El inode contiene información sobre el archivo, como permisos, propietario, tamaño, y ubicación en disco.

---------------------

**(b)** Funcionamiento de los editores vi y mcedit, y los comandos cat y more

* vi:  es un editor de texto muy popular en sistemas Unix/Linux. Funciona en modo texto y tiene dos modos principales: modo de comandos, que ermite realizar operaciones de edición como guardar, salir, copiar, pegar, etc; y modo de inserción que se usa para escribir o modificar texto.

Comandos básicos en vi:

i: Cambia al modo de inserción.

Esc: Cambia al modo de comandos.

:w: Guarda el archivo.

:q: Sale de vi.

:wq: Guarda y sale.

* mcedit: es el editor de texto incorporado en Midnight Commander, un gestor de archivos. Es más simple que vi y tiene una interfaz visual con menús accesibles mediante atajos de teclado, lo que lo hace más amigable para los usuarios novatos.

Comandos básicos en mcedit:

F2: Guarda el archivo.

F10: Salir del editor.

Ctrl + O: Alternar entre el editor y el administrador de archivos.

* cat: el comando cat (concatenate) se utiliza para mostrar el contenido de uno o más archivos en la salida estándar (pantalla); concatenar archivos y mostrar o guardar su contenido.

* more: el comando more permite ver el contenido de un archivo página por página, útil para archivos largos que no caben en una sola pantalla.

---------------------

**(c)** Para crear un archivo llamado “prueba.exe” usando vi:

1. Abro el terminal y navego al directorio personal con:

~~~
cd ~
~~~

2. Abro vi y creo el archivo con el siguiente comando:

~~~
vi prueba.exe
~~~

3. Una vez dentro de vi, presiono <code>i</code> para entrar en modo de inserción.

4. Escribo número de alumno y nombre:

~~~
23272/0 - Marianela Rojas
~~~

4. Para guardar el archivo y salir, presiono Esc para volver al modo de comandos y luego escribo:

~~~
:wq
~~~

---------------------

**(d)** El comando file en GNU/Linux se utiliza para determinar el tipo de archivo. No se basa solo en la extensión del archivo (como .txt o .exe), sino que inspecciona el contenido del archivo para determinar su tipo real.

Cuando se utiliza file en diferentes archivos, el comando identifica el tipo de contenido real del archivo, independientemente de su nombre o extensión. En otras palabras, file se basa en el contenido y no en la extensión del archivo. Por ejemplo, si renombramos un archivo de texto como <code>archivo.exe</code>, file seguirá detectando que es un archivo de texto.

</details>

## 🔵 11 y 12. Investigue:

(a) Funcionamiento y parámetros más importantes.

(b) Indique en qué directorios se almacenan dichos comandos.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

1. shutdown

Función: Apaga o reinicia el sistema de manera controlada.

Parámetros importantes

  - `shutdown -h now`: Apaga el sistema de inmediato.
  - `shutdown -r now`: Reinicia el sistema inmediatamente.
  - `shutdown -h +10`: Apaga el sistema en 10 minutos.
  - `shutdown -c`: Cancela un apagado programado.

2. reboot

Función: Reinicia el sistema.

Parámetros importantes:
  - `reboot -f`: Fuerza el reinicio sin cerrar procesos.
  - `reboot --halt`: Apaga la máquina en lugar de reiniciarla.

3. halt

Función: Detiene todas las operaciones del sistema.

Parámetros importantes:
  - `halt -p`: Apaga la máquina después de detenerla.
  - `halt --force`: Fuerza la detención.

4. locate

Función: Busca archivos rápidamente usando una base de datos previamente indexada.

Parámetros importantes:
  - `locate nombre_archivo`: Busca archivos que coincidan con el nombre dado.
  - `locate -i nombre_archivo`: Realiza la búsqueda sin distinguir entre mayúsculas y minúsculas.

5. uname

Función: Muestra información sobre el sistema operativo.

Parámetros importantes:
  - `uname -r`: Muestra la versión del kernel.
  - `uname -a`: Muestra toda la información del sistema (nombre del kernel, versión, etc.).

6. dmesg

Función: Muestra mensajes del kernel, principalmente durante el arranque.

Parámetros importantes:
  - `dmesg | less`: Permite ver los mensajes de forma paginada.
  - `dmesg --clear`: Limpia el búfer de mensajes del kernel.

7. lspci

Función: Lista todos los dispositivos PCI (Periféricos Conectados Interfaz).

Parámetros importantes:
  - `lspci -v`: Muestra información detallada de cada dispositivo PCI.
  - `lspci -nn`: Muestra los números de identificación del dispositivo PCI.

8. at

Función: Programa la ejecución de comandos a una hora específica.

Parámetros importantes:
  - `at 15:00`: Ejecuta comandos programados a las 15:00.
  - `atq`: Muestra los trabajos programados pendientes.
  - `atrm <número de trabajo>`: Elimina un trabajo programado.

9. netstat

Función: Muestra información sobre conexiones de red, tablas de enrutamiento, estadísticas de interfaz y más.

Parámetros importantes:
  - `netstat -tuln`: Muestra todas las conexiones TCP/UDP activas.
  - `netstat -r`: Muestra la tabla de enrutamiento.

10. mount
Función: Monta sistemas de archivos en dispositivos.

Parámetros importantes:
  - `mount /dev/sda1 /mnt`: Monta una partición en el directorio `/mnt`.
  - `mount -o ro /dev/sda1 /mnt`: Monta una partición en modo de solo lectura.

11. umount

Función: Desmonta sistemas de archivos.

Parámetros importantes:
  - `umount /mnt`: Desmonta el sistema de archivos montado en `/mnt`.
  - `umount -f /mnt`: Fuerza el desmontaje.

12. head

Función: Muestra las primeras líneas de un archivo.

Parámetros importantes:
  - `head -n 5 archivo.txt`: Muestra las primeras 5 líneas de un archivo.
  - `head -c 100 archivo.txt`: Muestra los primeros 100 caracteres del archivo.

13. losetup

Función: Configura o asocia un dispositivo de bucle (loop device).

Parámetros importantes:
  - `losetup /dev/loop0 archivo.img`: Asocia un archivo a un dispositivo de bucle.
  - `losetup -d /dev/loop0`: Desasocia el dispositivo de bucle.

14. write

Función: Envía mensajes a otros usuarios conectados.

Parámetros importantes:
  - `write usuario`: Envía un mensaje a un usuario específico.
  - Para enviar mensajes, se escribe el texto seguido de Enter. Para salir, se usa `Ctrl+D`.

15. mkfs

Función: Crea un sistema de archivos en una partición.

Parámetros importantes:
  - `mkfs.ext4 /dev/sda1`: Crea un sistema de archivos ext4 en la partición `/dev/sda1`.
  - `mkfs.vfat /dev/sda1`: Crea un sistema de archivos FAT en `/dev/sda1`.

16. fdisk

Función: Gestiona las particiones del disco.

Parámetros importantes:
  - `fdisk /dev/sda`: Abre el menú de particionamiento para el disco `/dev/sda`.
  - Comandos dentro de `fdisk`: `p` (imprimir tabla de particiones), `n` (crear nueva partición), `d` (eliminar partición).

---------------------

**(b)** Los comandos mencionados suelen estar almacenados en directorios estándar como:

* **/bin**: Contiene comandos esenciales para todos los usuarios, incluso durante el arranque o en modo de recuperación.
* **/usr/bin**: Contiene la mayoría de los comandos de usuario.
* **/sbin**: Comandos de administración del sistema.
* **/usr/sbin**: Comandos de administración adicionales, generalmente para usuarios con privilegios.

</details>
