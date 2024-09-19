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

**(a)** Características más relevantes de GNU/Linux:

* Código Abierto y Libre: GNU/Linux es un sistema operativo de código abierto, lo que significa que su código fuente está disponible públicamente para que cualquiera pueda verlo, modificarlo y distribuirlo. La ventaja de esto es que permite la personalización y adaptación del sistema a necesidades específicas, promueve la transparencia en el desarrollo del software y favorece la colaboración comunitaria.

* Multitarea: lo que permite ejecutar múltiples procesos al mismo tiempo. Esto mejora el rendimiento y la capacidad de respuesta del sistema, permitiendo a los usuarios realizar múltiples tareas simultáneamente sin interferir entre sí.

* Multiplataforma: GNU/Linux puede funcionar en una amplia variedad de hardware. Su capacidad para escalar desde sistemas pequeños a grandes lo hace adecuado para diferentes entornos, desde escritorios personales hasta centros de datos.

* Seguridad y Permisos: GNU/Linux implementa un robusto sistema de permisos y control de acceso que incluye características como el control de acceso basado en roles (RBAC) y capacidades avanzadas de gestión de usuarios. Esto mejora la seguridad al limitar el acceso a archivos y recursos del sistema. Las políticas de permisos estrictas ayudan a proteger el sistema contra accesos no autorizados y malware.

* Comunidad Activa y Soporte: GNU/Linux cuenta con una amplia comunidad de desarrolladores y usuarios que contribuyen al desarrollo del sistema y ofrecen soporte a través de foros, listas de correo y documentación. Proporciona acceso a una vasta cantidad de recursos y asistencia, lo que facilita la resolución de problemas y la obtención de soporte técnico.

* Compatibilidad y Software: GNU/Linux ofrece compatibilidad con una amplia gama de software, desde aplicaciones de línea de comandos hasta entornos de escritorio completos. Además, es compatible con muchos estándares abiertos y protocolos. Esto facilita la integración con diferentes herramientas y aplicaciones, y permite a los usuarios ejecutar una variedad de software en el sistema operativo.

**(c)** **GNU** es un acrónimo recursivo que significa "GNU's Not Unix" (**GNU** **N**o es **U**nix). Es un proyecto de software libre iniciado por Richard Stallman en 1983 con el objetivo de desarrollar un sistema operativo completo y libre que sea compatible con Unix.

GNU se refiere a 4 libertades principales de los usuarios del software:

* Libertad de usar el programa con cualquier proposito.

* Libertad de estudiar su funcionamiento.

* Libertad para distribuir sus copias.

* Libertad para mejorar los programas.

**(e)** Multitarea es una capacidad del sistema operativo que permite a una computadora ejecutar múltiples tareas o procesos de manera simultánea. En un contexto de sistemas operativos, la multitarea se refiere a la capacidad de un sistema para gestionar y coordinar varios procesos al mismo tiempo, ya sea que esos procesos se ejecuten en paralelo (simultáneamente) o de manera secuencial muy rápida, dando la impresión de que se están ejecutando al mismo tiempo.

GNU/Linux utiliza multitarea preventiva para gestionar la ejecución de procesos, asegurando una asignación justa y eficiente del tiempo de CPU. Esta capacidad permite que GNU/Linux maneje múltiples aplicaciones y tareas al mismo tiempo, mejorando el rendimiento y la capacidad de respuesta del sistema.

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

**(b)** Las diferencias entre distribuciones de GNU/Linux pueden abarcar varios aspectos:

* Gestor de paquetes: Cada distribución utiliza un sistema diferente para la instalación y gestión de software. Por ejemplo, Debian y Ubuntu usan APT, mientras que Fedora usa DNF y Arch usa Pacman.

* Entorno de escritorio: Las distribuciones pueden incluir diferentes entornos de escritorio por defecto, como GNOME, KDE Plasma, XFCE, etc.

* Ciclo de lanzamiento: Algunas distribuciones, como Ubuntu LTS, siguen un ciclo de lanzamientos regulares con versiones de soporte a largo plazo, mientras que otras, como Arch Linux, utilizan un modelo de lanzamiento continuo (rolling release).

* Filosofía y objetivos: Cada distribución puede tener una orientación diferente, como ser amigable para principiantes (Ubuntu), ofrecer software más actualizado y experimental (Fedora), o proporcionar una base mínima para usuarios avanzados (Arch Linux).

* Compatibilidad y soporte de hardware: Algunas distribuciones están optimizadas para ciertos tipos de hardware o configuraciones, mientras que otras buscan ser lo más universales posible.

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

**(b)** Funciones principales del Kernel:

* Gestión de procesos: Controla la creación, ejecución y terminación de procesos.

* Gestión de memoria: Administra la memoria RAM y el espacio de direcciones de los procesos.

* Gestión de dispositivos: Proporciona control sobre dispositivos de hardware a través de controladores.

* Sistema de archivos: Facilita la interacción con el sistema de archivos, permitiendo la lectura y escritura de datos.

* Seguridad y acceso: Implementa mecanismos de seguridad para controlar el acceso a recursos del sistema.

* Comunicación entre procesos: Permite la comunicación y sincronización entre procesos en ejecución.

**(d)** Sí, es posible tener más de un Kernel de GNU/Linux instalado en la misma máquina. Esto se realiza comúnmente en sistemas que utilizan múltiples versiones del kernel para pruebas o compatibilidad con hardware específico. Los administradores pueden seleccionar el kernel a utilizar en el momento del arranque a través de un gestor de arranque como GRUB.

**(e)** El Kernel de GNU/Linux se encuentra ubicado en el directorio /boot, donde se almacenan los archivos del kernel (como vmlinuz), así como otros archivos necesarios para el arranque del sistema.

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

**(b)** Funciones del shell:

* Ejecutar comandos: Permite a los usuarios ingresar y ejecutar comandos del sistema.

* Automatización de tareas: Facilita la creación de scripts para automatizar tareas repetitivas.

* Gestión de archivos: Permite a los usuarios manipular archivos y directorios (crear, eliminar, copiar, mover).

* Interacción con procesos: Ofrece funciones para gestionar procesos en ejecución (iniciar, detener, cambiar prioridades).

* Configuración del entorno: Permite la configuración de variables de entorno que influyen en el comportamiento del sistema y las aplicaciones.

**(c)** Ejemplos de intérpretes de comandos:

* Bash (Bourne Again Shell): es el más popular y versátil; soporta scripting  avanzado, autocompletado y edición de línea. Es ampliamente utilizado en muchas distribuciones y tiene una gran cantidad de recursos y documentación.

* Zsh (Z Shell): ofrece características avanzadas como globbing, corrección ortográfica y soporte para temas. Es altamente configurable y amigable para usuarios que buscan personalización.

* Fish (Friendly Interactive Shell): se enfoca en la usabilidad con una sintaxis intuitiva, autocompletado inteligente y colorido. Ideal para principiantes debido a su simplicidad y amigabilidad, pero menos flexible para scripting avanzado.


**(d)** Ubicación (path) de los comandos:

* Comandos propios del Shell: Generalmente se encuentran en directorios como <code>/bin</code> y <code>/usr/bin</code>. Estos son comandos esenciales que vienen incluidos con el sistema.

* Comandos externos: También pueden encontrarse en directorios como <code>/usr/local/bin</code> para aplicaciones instaladas por el usuario o <code>/sbin</code> para comandos de administración del sistema.

**(e)** El shell no es parte del kernel porque cumple funciones diferentes. El kernel es el núcleo del sistema operativo, gestionando recursos de hardware y procesos, mientras que el shell es una interfaz de usuario que permite interactuar con el sistema. En resumen, el shell opera a un nivel más alto que el kernel, facilitando la interacción del usuario y no realizando las funciones fundamentales de gestión de recursos que realiza el kernel.

**(f)** Sí, es posible definir un intérprete de comandos distinto para cada usuario. Esto se puede hacer editando el archivo <code>/etc/passwd</code>, donde se especifica el shell por defecto para cada usuario en el último campo de cada línea correspondiente a un usuario.

el mismo se define en el archivo <code>/etc/passwd</code> o mediante el comando chsh (change shell), que permite a los usuarios cambiar su shell por defecto.

Respecto a los permisos, cualquier usuario puede cambiar su shell por defecto usando chsh, pero para cambiar el shell de otros usuarios se necesitan permisos de superusuario (root).

</details>