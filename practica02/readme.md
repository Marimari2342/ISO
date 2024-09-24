# Introducción a los Sistemas Operativos - Practica 2

## 🟣 1. Editor de textos:

(a) Nombre al menos 3 editores de texto que puede utilizar desde la línea de comandos.

(b) ¿En qué se diferencia un editor de texto de los comandos cat, more o less? Enumere los modos de operación que posee el editor de textos vi.

(c) Nombre los comandos más comunes que se le pueden enviar al editor de textos vi.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Tres editores de texto que se pueden utilizar desde la línea de comandos:

* Vim: Un editor de texto avanzado basado en vi, disponible en la mayoría de sistemas Unix y Linux.

* Nano: Un editor de texto simple y fácil de usar, comúnmente preinstalado en muchas distribuciones de Linux.

* Emacs: Un potente editor de texto que se puede usar desde la terminal, altamente personalizable.

---------------------

**(b)** Las diferencias entre un editor de texto y los comandos cat, more o less son que un editor de texto como vi o nano permite modificar archivos, realizar ediciones complejas, guardar los cambios y trabajar interactivamente con el contenido. Mientras que los comandos como cat, more y less son herramientas de visualización de archivos de texto; cat muestra el contenido de un archivo en la terminal, more y less permiten navegar el contenido de un archivo página por página, pero no permiten modificarlo.

Los modos de operación en vi son:

* Modo comando: Es el modo principal, donde se pueden ejecutar comandos como mover el cursor, borrar texto, copiar y pegar, etc.

* Modo inserción: Permite insertar texto en el archivo.

* Modo de línea: Permite ejecutar comandos relacionados con el archivo en su totalidad, como guardar (:w), salir (:q), o realizar búsquedas.

---------------------

**(c)** Comandos comunes en vi:

* Para entrar en modo inserción:

i: Insertar texto antes del cursor.

a: Insertar texto después del cursor.

o: Insertar una nueva línea debajo de la actual.

* Para guardar y salir:

:w: Guardar los cambios.

:q: Salir.

:wq: Guardar y salir al mismo tiempo.

:q!: Salir sin guardar cambios.

* Para navegar:

h, j, k, l: Mover el cursor hacia la izquierda, abajo, arriba y derecha respectivamente.

gg: Ir al inicio del archivo.

G: Ir al final del archivo.

* Para editar:

dd: Eliminar la línea actual.

yy: Copiar la línea actual.

p: Pegar el contenido copiado.

</details>

## 🟣 2. Proceso de Arranque SystemV [(link)](https://github.com/systeminit/si):

(a) Enumere los pasos del proceso de inicio de un sistema GNU/Linux, desde que se prende la PC hasta que se logra obtener el login en el sistema.

(b) Proceso INIT. ¿Quién lo ejecuta? ¿Cuál es su objetivo?

(c) RunLevels. ¿Qué son? ¿Cuál es su objetivo?

(d) ¿A qué hace referencia cada nivel de ejecución según el estándar? ¿Dónde se define qué Runlevel ejecutar al iniciar el sistema operativo? ¿Todas las distribuciones respetan estos estándares?

(e) Archivo /etc/inittab. ¿Cuál es su finalidad? ¿Qué tipo de información se almacena en el? ¿Cuál es la estructura de la información que en él se almacena?

(f) Suponga que se encuentra en el runlevel <X>. Indique qué comando(s) ejecutaría para cambiar al runlevel <Y>. ¿Este cambio es permanente? ¿Por qué?

(g) Scripts RC. ¿Cuál es su finalidad? ¿Dónde se almacenan? Cuando un sistema GNU/Linux arranca o se detiene se ejecutan scripts, indique cómo determina qué script ejecutar ante cada acción. ¿Existe un orden para llamarlos? Justifique.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Pasos del proceso de inicio de un sistema GNU/Linux (SystemV):

* Encendido y POST: Al encender la PC, el BIOS/UEFI realiza el Power-On Self Test (POST), comprobando la memoria y dispositivos esenciales.

* Cargador de arranque (Bootloader): El BIOS/UEFI transfiere el control al cargador de arranque (como GRUB), que carga el kernel de Linux en la memoria.

* Kernel de Linux: El kernel inicia y detecta hardware, monta el sistema de archivos raíz (root filesystem) y comienza a ejecutar procesos esenciales.

* INIT: El kernel inicia el proceso init, que es el primer proceso de usuario en GNU/Linux. Este lee los scripts de arranque y comienza a gestionar los servicios del sistema.

* Scripts de arranque RC: Los scripts de arranque (/etc/rc.d/ o /etc/init.d/) se ejecutan para iniciar los servicios según el runlevel configurado.

* Login: Finalmente, el sistema muestra una pantalla de login en modo consola o gráfico (dependiendo del runlevel) para que el usuario pueda iniciar sesión.

---------------------

**(b)** El proceso init es ejecutado por el kernel, siendo el primer proceso de usuario (PID 1). Objetivo: init se encarga de lanzar y gestionar todos los procesos del sistema. Determina qué servicios iniciar y en qué orden, según el runlevel configurado.

---------------------

**(c)** Los runlevels son estados predefinidos del sistema que determinan qué servicios se ejecutan en un momento dado. Objetivo: Permiten controlar el estado del sistema, como si debe estar en modo monousuario, modo gráfico, o si debe apagarse.

---------------------

**(d)** Los niveles de ejecución según el estándar:

Runlevels comunes:

0: Apagar el sistema.

1: Modo monousuario (mantenimiento).

2: Modo multiusuario sin red (en algunas distribuciones).

3: Modo multiusuario con red y sin entorno gráfico.

4: No asignado (puede usarse personalizadamente).

5: Modo gráfico (con entorno de escritorio).

6: Reiniciar el sistema.

Qué Runlevel ejecutar se define en el archivo /etc/inittab, donde se configura el runlevel predeterminado. No todas las distribuciones respetan estos estándares; algunas distribuciones modernas usan systemd, que reemplaza los runlevels por "targets", aunque las distribuciones más antiguas basadas en SystemV siguen este esquema.

---------------------

**(e)** Archivo /etc/inittab:

Finalidad: Configura el runlevel por defecto del sistema y otros parámetros relacionados con init.

Información almacenada: Define qué runlevel usar, acciones a realizar en cada runlevel, y qué procesos deben ejecutarse.

Estructura: Las líneas tienen el formato id:runlevels:action:process, donde: id (el identificador único de la línea); runlevels (en que runlevels se ejecuta el comando); action (la acción a tomar, por ejemplo, iniciar, reiniciar).
process (el proceso o script que se debe ejecutar).

---------------------

**(f)** Comandos para cambiar el runlevel: Usas el comando init <Y> o telinit <Y> donde <Y> es el runlevel al que quieres cambiar. Por ejemplo, init 3 cambiaría al runlevel 3. Este cambio no es permanente, es temporal. Para hacer un cambio permanente, se debe modificar el runlevel en el archivo /etc/inittab (en sistemas basados en SystemV).

---------------------

**(g)** Scripts RC:

Finalidad: Los scripts RC (como los de /etc/rc.d/ o /etc/init.d/) se encargan de iniciar o detener servicios en función del runlevel al que se cambie.

Ubicación: Se almacenan en /etc/rc.d/ o /etc/init.d/, dependiendo de la distribución.

Determinación del script a ejecutar: Según el runlevel, se ejecutan scripts en los directorios correspondientes a ese runlevel (/etc/rcX.d/, donde X es el número del runlevel).

Orden de ejecución: Los scripts se ejecutan en un orden específico. Aquellos con nombres que comienzan con S son ejecutados al inicio (Start), y aquellos que comienzan con K al detenerse (Kill). El número después de la S o K determina el orden de ejecución.

</details>

## 🟣 3. SystemD [(link)](https://github.com/systemd/systemd):

(a) ¿Qué es sytemd?

(b) ¿A qué hace referencia el concepto de Unit en SystemD?

(c) ¿Para que sirve el comando systemctl en SystemD?

(d) ¿A qué hace referencia el concepto de target en SystemD?

(e) Ejecute el comando pstree. ¿Qué es lo que se puede observar a partir de la ejecución de este comando?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** SystemD es un sistema de inicialización y gestor de servicios para sistemas operativos Linux. Se encarga de arrancar y gestionar los procesos del sistema, así como de manejar servicios y recursos de manera eficiente. Introduce un enfoque paralelizado para iniciar servicios y proporciona funcionalidades como la gestión de dependencias y la supervisión de procesos.

---------------------

**(b)** En SystemD, una "Unit" es un archivo de configuración que describe un servicio, un dispositivo, un punto de montaje, o cualquier otra unidad que el sistema puede gestionar. Cada unidad tiene un tipo (por ejemplo, service, socket, mount, etc.) y define cómo debe ser gestionada, incluyendo sus dependencias, condiciones de inicio y comandos a ejecutar.

---------------------

**(c)** El comando systemctl es la herramienta principal para interactuar con el sistema y los servicios gestionados por SystemD. Permite iniciar, detener, reiniciar, habilitar o deshabilitar servicios, así como consultar el estado de las unidades y gestionar configuraciones del sistema.

---------------------

**(d)** Un "target" en SystemD es una unidad especial que agrupa otras unidades para facilitar la gestión del inicio del sistema. Por ejemplo, multi-user.target agrupa todos los servicios necesarios para que el sistema esté disponible en modo multiusuario. Los targets permiten establecer diferentes niveles de ejecución y simplifican el proceso de arranque.

---------------------

**(e)** El comando pstree muestra un árbol de procesos en ejecución en el sistema, organizando los procesos en función de sus jerarquías parentales. Al ejecutar pstree, podrás observar cómo los procesos están relacionados entre sí, quién es el proceso padre de cada uno, y la estructura general de los procesos activos. Esto es útil para visualizar la organización y el uso de recursos en el sistema.

</details>

## 🟣 4. Usuarios:

(a) ¿Qué archivos son utilizados en un sistema GNU/Linux para guardar la información
de los usuarios?

(b) ¿A qué hacen referencia las siglas UID y GID? ¿Pueden coexistir UIDs iguales en un sistema GNU/Linux? Justifique.

(c) ¿Qué es el usuario root? ¿Puede existir más de un usuario con este perfil en GNU/Linux? ¿Cuál es la UID del root?.

(d) Agregue un nuevo usuario llamado iso2017 a su instalación de GNU/Linux, especifique que su home sea creada en /home/iso_2017, y hágalo miembro del grupo catedra (si no existe, deberá crearlo). Luego, sin iniciar sesión como este usuario cree un archivo en su home personal que le pertenezca. Luego de todo esto, borre el usuario y verifique que no queden registros de él en los archivos de información de los usuarios y grupos.

(e) Investigue la funcionalidad y parámetros de los siguientes comandos.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Los archivos principales que almacenan información de los usuarios en un sistema GNU/Linux son:

* /etc/passwd: Contiene información básica de los usuarios, como nombre de usuario, UID, GID y el directorio home.

* /etc/shadow: Almacena las contraseñas de los usuarios de forma segura y también incluye información sobre la expiración de las contraseñas.

* /etc/group: Contiene información sobre los grupos de usuarios, incluyendo el nombre del grupo y sus GIDs.

---------------------

**(b)**

* UID (User ID): Es el identificador único de un usuario en el sistema.

* GID (Group ID): Es el identificador único de un grupo en el sistema.

En un sistema GNU/Linux, los UIDs deben ser únicos. No pueden coexistir UIDs iguales para diferentes usuarios; sin embargo, un mismo GID puede ser utilizado por múltiples usuarios, ya que varios usuarios pueden pertenecer al mismo grupo.

---------------------

**(c)** El usuario root es el superusuario en sistemas GNU/Linux, con permisos completos para realizar cualquier operación en el sistema. Solo debe haber un usuario root por defecto en el sistema. La UID del usuario root es 0.

---------------------

**(d)**
Pasos para agregar un nuevo usuario llamado iso2017 con su home en /home/iso_2017 y hacerlo miembro del grupo catedra:

1. Crear el grupo (si no existe):

~~~
sudo groupadd catedra
~~~

2. Agregar el usuario:

~~~
sudo useradd -m -d /home/iso_2017 -G catedra iso2017
~~~

3. Establecer una contraseña para el usuario:

~~~
sudo passwd iso2017
~~~

4. Crear un archivo en su home (sin iniciar sesión como el usuario):

~~~
sudo touch /home/iso_2017/archivo.txt
sudo chown iso2017: /home/iso_2017/archivo.txt
~~~

5. Eliminar el usuario:

~~~
sudo userdel -r iso2017
~~~

6. Verificar la eliminación: Asegúrate de que no hay registros en /etc/passwd, /etc/shadow, y /etc/group relacionados con el usuario iso2017.

---------------------

**(e)** Comandos y sus funcionalidades

* useradd o adduser: Comando para crear un nuevo usuario. useradd es más básico, mientras que adduser suele ser un script más amigable que gestiona algunos pasos automáticamente.

* usermod: Permite modificar la información de un usuario existente, como cambiar su nombre, GID, o grupos a los que pertenece.

* userdel: Se utiliza para eliminar un usuario. La opción -r elimina también su directorio home y los archivos asociados.

* su: Cambia el usuario en la sesión actual. Usualmente se utiliza su - para acceder como root, cargando su entorno.

* groupadd: Crea un nuevo grupo en el sistema.

* who: Muestra los usuarios que están actualmente conectados al sistema.

* groupdel: Elimina un grupo existente del sistema.

* passwd: Cambia la contraseña de un usuario.

</details>

## 🟣 5. FileSystem:

(a) ¿Cómo son definidos los permisos sobre archivos en un sistema GNU/Linux?

(b) Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con los permisos en GNU/Linux: chmod, chown, chgrp.

(c) Al utilizar el comando chmod generalmente se utiliza una notación octal asociada para definir permisos. ¿Qué significa esto? ¿A qué hace referencia cada valor?

(d) ¿Existe la posibilidad de que algún usuario del sistema pueda acceder a determinado archivo para el cual no posee permisos? Nombrelo, y realice las pruebas correspondientes.

(e) Explique los conceptos de “full path name” y “relative path name”. De ejemplos claros de cada uno de ellos.

(f) ¿Con qué comando puede determinar en qué directorio se encuentra actualmente?¿Existe alguna forma de ingresar a su directorio personal sin necesidad de escribir todo el path completo? ¿Podría utilizar la misma idea para acceder a otros directorios? ¿Cómo? Explique con un ejemplo.

(g) Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el uso del FileSystem.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** En un sistema GNU/Linux, los permisos sobre archivos son definidos para controlar el acceso a archivos y directorios. Cada archivo y directorio tiene un conjunto de permisos que determina quién puede leer, escribir o ejecutar el archivo. 

Los permisos se asignan a tres categorías de usuarios:

* Propietario (user)

* Grupo (group)

* Otros (others)

Cada archivo tiene tres tipos de permisos:

* Lectura (r)

* Escritura (w)

* Ejecución (x)

---------------------

**(b)** Comandos relacionados con permisos:

* chmod: Cambia los permisos de acceso de un archivo o directorio. Puede usar notación simbólica (r, w, x) o octal. Ejemplo: chmod u+x archivo.txt (agrega permiso de ejecución al propietario).

* chown: Cambia el propietario y/o grupo de un archivo o directorio. Ejemplo: chown usuario:grupo archivo.txt (cambia propietario y grupo).

* chgrp: Cambia el grupo asociado a un archivo o directorio. Ejemplo: chgrp grupo archivo.txt (cambia solo el grupo).

---------------------

**(c)** La notación octal se utiliza en chmod para establecer permisos de manera más concisa. Cada tipo de permiso se representa con un número:

4: Lectura (r)

2: Escritura (w)

1: Ejecución (x)

Los valores se suman para definir los permisos:

7: rwx (lectura, escritura, ejecución)

6: rw- (lectura, escritura)

5: r-x (lectura, ejecución)

4: r-- (solo lectura)

0: --- (sin permisos)

Por ejemplo, chmod 755 archivo.txt asigna permisos rwx para el propietario y r-x para el grupo y otros.

---------------------

**(d)** Un usuario podría acceder a un archivo sin permisos si se utiliza un programa intermedio que tiene los permisos necesarios, como el comando sudo, que permite ejecutar comandos con permisos de superusuario. Puedes probarlo intentando acceder a un archivo con permisos restringidos a través de un script ejecutable por el root.

---------------------

**(e)** Full path name: Es la ruta completa desde la raíz del sistema de archivos hasta el archivo o directorio. Ejemplo: /home/usuario/documentos/archivo.txt.

Relative path name: Es la ruta relativa a tu directorio actual. Ejemplo: si estás en /home/usuario, puedes referirte a documentos/archivo.txt sin necesidad de la ruta completa.

---------------------

**(f)** 

Comando para saber en qué directorio estás actualmente:

~~~
pwd
~~~

Para ingresar a tu directorio personal sin escribir el path completo, puedes usar el símbolo ~:

~~~
cd ~
~~~

También puedes acceder a otros directorios desde tu directorio personal utilizando ~ como prefijo. Por ejemplo:

~~~
cd ~/documentos
~~~

---------------------

**(g)** Comandos relacionados con el uso del FileSystem:

* cd: Cambia el directorio actual. Ejemplo: cd /ruta/al/directorio.

* umount: Desmonta un sistema de archivos. Ejemplo: umount /dev/sdX.

* mkdir: Crea un nuevo directorio. Ejemplo: mkdir nuevo_directorio.

* du: Muestra el uso de espacio de disco por archivos y directorios. Ejemplo: du -h.

* rmdir: Elimina un directorio vacío. Ejemplo: rmdir viejo_directorio.

* df: Muestra el uso del espacio en disco de todos los sistemas de archivos. Ejemplo: df -h.

* mount: Monta un sistema de archivos. Ejemplo: mount /dev/sdX /punto/de/montaje.

* ln: Crea enlaces entre archivos. El parámetro -s crea un enlace simbólico. Ejemplo: ln -s archivo.txt enlace.

* ls: Lista archivos y directorios en el directorio actual. Ejemplo: ls -l.

* pwd: Muestra la ruta del directorio actual.

* cp: Copia archivos o directorios. Ejemplo: cp origen.txt destino.txt.

* mv: Mueve o renombra archivos o directorios. Ejemplo: mv archivo.txt nuevo_nombre.txt.

</details>