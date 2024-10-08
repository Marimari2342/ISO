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

## 🟣 6. Procesos:

(a) ¿Qué es un proceso? ¿A que hacen referencia las siglas PID y PPID? ¿Todos los procesos tienen estos atributos en GNU/Linux? Justifique. Indique qué otros atributos tiene un proceso.

(b) Indique qué comandos se podrían utilizar para ver qué procesos están en ejecución en un sistema GNU/Linux.

(c) ¿Qué significa que un proceso se está ejecutando en Background? ¿Y en Foreground?

(d) ¿Cómo puedo hacer para ejecutar un proceso en Background? ¿Como puedo hacer para pasar un proceso de background a foreground y viceversa?

(e) Pipe ( | ). ¿Cuál es su finalidad? Cite ejemplos de su utilización.

(f) Redirección. ¿Qué tipo de redirecciones existen? ¿Cuál es su finalidad? Cite ejemplos de utilización.

(g) Comando kill. ¿Cuál es su funcionalidad? Cite ejemplos.

(h) Investigue la funcionalidad y parámetros de los siguientes comandos relacionados con el manejo de procesos en GNU/Linux. Además, compárelos entre ellos: ps, kill, pstree, killall, top, nice.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Un proceso es un programa en ejecución que realiza una tarea o conjunto de tareas en el sistema operativo. En GNU/Linux, un proceso contiene información del programa, como su estado, el tiempo de CPU que ha utilizado, la memoria que ocupa, y otros atributos relevantes.

* PID (Process ID): Es el identificador único de un proceso dentro del sistema operativo.

* PPID (Parent Process ID): Es el identificador del proceso padre, es decir, el proceso que generó o inició el proceso actual.

En GNU/Linux, todos los procesos tienen un PID y un PPID, incluso el proceso raíz del sistema, que es el proceso con PID 1 (usualmente llamado init o systemd en sistemas modernos).

---------------------

**(b)** Comandos para ver procesos en ejecución en GNU/Linux:

* ps: Muestra una instantánea de los procesos actuales.

* top: Muestra en tiempo real los procesos y su consumo de recursos.

* htop: Similar a top, pero más interactivo.

* pstree: Muestra los procesos en forma de árbol, mostrando jerarquías.

* pgrep: Busca procesos que coinciden con un patrón.

* jobs: Muestra los trabajos en ejecución en el terminal actual.

---------------------

**(c)**

* Background: Es un proceso que se ejecuta en segundo plano. No requiere la interacción directa del usuario y no bloquea la terminal.

* Foreground: Un proceso que se ejecuta en primer plano, bloquea la terminal hasta que termina y requiere la atención directa del usuario.

---------------------

**(d)** Ejecutar un proceso en Background:

* Para ejecutar un proceso en segundo plano desde el inicio, se añade un & al final del comando:

~~~
comando &
~~~

* Pasar un proceso de background a foreground: se utiliza el comando fg seguido del número de trabajo (%jobnumber).

~~~
fg %1
~~~

Pasar un proceso de foreground a background: primero se suspende el proceso con Ctrl + Z, y luego se envía al segundo plano con bg.

~~~
bg %1
~~~

---------------------

**(e)** Pipe (|) permite redirigir la salida estándar de un comando como entrada estándar de otro comando. Ejemplos:

~~~
ls -l | grep "archivo"
cat archivo.txt | wc -l
~~~

---------------------

**(f)** La redirección permite enviar la salida de un comando a un archivo o recibir la entrada desde un archivo en lugar del teclado. Tipos de redirección:

* <code>></code> Redirige la salida estándar a un archivo, sobrescribiéndolo.

~~~
echo "Hola" > archivo.txt
~~~

* <code>>></code> Redirige la salida estándar a un archivo, agregando datos.

~~~
echo "Mundo" >> archivo.txt
~~~

* <code><</code> Redirige la entrada estándar desde un archivo.

~~~
cat < archivo.txt
~~~

* <code>2></code> Redirige la salida de errores estándar a un archivo.

~~~
comando 2> errores.log
~~~

---------------------

**(g)** El comando kill se utiliza para enviar señales a los procesos. La señal más común es la de terminación (SIGTERM), que indica al proceso que termine de manera ordenada. Ejemplos:

* Matar un proceso con su PID:

~~~
kill 1234
~~~

* Enviar la señal SIGKILL (matar el proceso inmediatamente):

~~~
kill -9 1234
~~~

---------------------

**(h)** Comparación de comandos relacionados con el manejo de procesos:

* ps: muestra una lista estática de los procesos en ejecución en ese momento. Se utiliza para ver información detallada sobre procesos individuales o de grupos de procesos.

~~~
ps aux
~~~

* kill: envia señales a procesos, generalmente para detenerlos. Ejemplo:

~~~
kill 1234
~~~

*pstree: muestra los procesos en forma de árbol jerárquico, indicando la relación entre los procesos y sus procesos padres.

~~~
pstree
~~~

* killall: mata todos los procesos que coinciden con un nombre dado.

~~~
killall firefox
~~~

* top: muestra información en tiempo real sobre el uso de recursos del sistema, como el uso de CPU y memoria por cada proceso. Es interactivo.

~~~
top
~~~

* nice: se utiliza para iniciar un proceso con una prioridad diferente (un valor de "nice" más alto o más bajo). Valores más altos significan menor prioridad.

~~~
nice -n 10 comando
~~~

</details>

## 🟣 7. Otros comandos de Linux (Indique funcionalidad y parámetros):

(a) ¿A qué hace referencia el concepto de empaquetar archivos en GNU/Linux?

(b) Seleccione 4 archivos dentro de algún directorio al que tenga permiso y sume el tamaño de cada uno de estos archivos. Cree un archivo empaquetado conteniendo estos 4 archivos y compare los tamaños de los mismos. ¿Qué característica nota?

(c) ¿Qué acciones debe llevar a cabo para comprimir 4 archivos en uno solo? Indique la secuencia de comandos ejecutados.

(d) ¿Pueden comprimirse un conjunto de archivos utilizando un único comando?

(e) Investigue la funcionalidad de los siguientes comandos: tar, grep, gzip, zgrep, wc.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Empaquetar archivos en GNU/Linux significa agrupar varios archivos en uno solo, generalmente usando el comando tar. No se comprimen, solo se combinan.

---------------------

**(b)** Para sumar el tamaño de 4 archivos:

~~~
du -sh archivo1 archivo2 archivo3 archivo4
~~~

Luego, empaquetas usando:

~~~
tar -cvf archivo.tar archivo1 archivo2 archivo3 archivo4
~~~

El archivo empaquetado tiene un tamaño similar a la suma de los archivos originales.

---------------------

**(c)** Comprimir 4 archivos en uno solo:

* Empaquetar:

~~~
tar -cvf archivos.tar archivo1 archivo2 archivo3 archivo4
~~~

* Comprimir:

~~~
gzip archivos.tar
~~~

---------------------

**(d)** Sí, se pueden comprimir directamente archivos con un solo comando:

~~~
tar -czvf archivo_comprimido.tar.gz archivo1 archivo2 archivo3 archivo4
~~~

---------------------

**(e)**

* tar: Empaqueta y comprime archivos.

~~~
tar -czvf archivo.tar.gz archivo1 archivo2
~~~

* grep: Busca patrones en archivos.

~~~
grep "texto" archivo.txt
~~~

* gzip: Comprime archivos.

~~~
gzip archivo.txt
~~~

* zgrep: Busca en archivos comprimidos.

~~~
zgrep "texto" archivo.gz
~~~

* wc: Cuenta líneas, palabras y caracteres.

~~~
wc archivo.txt
~~~

</details>


## 🟣 8. Comandos varios

Indique qué acción realiza cada uno de los comandos indicados a continuación considerando su orden. Suponga que se ejecutan desde un usuario que no es root ni pertenece al grupo de root. (Asuma que se encuentra posicionado en el directorio de trabajo del usuario con el que se logueó). En caso de no poder ejecutarse el comando, indique la razón:

<details><summary> <code> Respuesta 🖱 </code></summary><br>

* ls -l > prueba --> Lista archivos en detalle, redirigiendo la salida al archivo prueba.

* ps > PRUEBA --> Muestra procesos del usuario, redirigiendo la salida al archivo PRUEBA.

* chmod 710 prueba --> Da permisos de lectura/ejecución al grupo y ejecución a otros para prueba.

* chown root : root PRUEBA --> cambia el propietario del archivo PRUEBA al usuario root y el grupo del archivo también a root. Como no eres root ni tienes permisos de superusuario, este comando fallará porque solo un administrador puede cambiar los propietarios de archivos y directorios en GNU/Linux.

* chmod 777 PRUEBA --> Permite lectura, escritura y ejecución para todos en PRUEBA.

* chmod 700 /etc/passwd --> Falla porque no tienes permisos para cambiar permisos de este archivo crítico.

* passwd root --> No puedes cambiar la contraseña de root sin permisos.

* rm PRUEBA --> Borra el archivo PRUEBA.

* man /etc/shadow --> Falla porque no es un comando válido para visualizar ese archivo.

* f i n d / −name ∗ . conf --> Busca archivos con extensión .conf en todo el sistema.

* usermod root -d /home/newroot -L --> Falla porque no puedes modificar usuarios sin permisos de root.

* cd /root --> No puedes acceder a /root sin permisos de superusuario.

* rm ∗ --> Borra todos los archivos en el directorio actual.

* cd /etc --> Cambia el directorio a /etc.

* cp * /home -R --> Copia todos los archivos y directorios de /etc a /home, falla sin permisos.

* shutdown --> Falla porque no puedes apagar el sistema sin ser root.

</details>

## 🟣 9. Indique qué comando sería necesario ejecutar para realizar cada una de las siguientes acciones:

(a) Terminar el proceso con PID 23.

(b) Terminar el proceso llamado init o systemd. ¿Qué resultados obtuvo?

(c) Buscar todos los archivos de usuarios en los que su nombre contiene la cadena “.conf”

(d) Guardar una lista de procesos en ejecución el archivo /home/<su nombre de usuario>/ procesos

(e) Cambiar los permisos del archivo /home/<su nombre de usuario>/xxxx a:

* Usuario: Lectura, escritura, ejecución

* Grupo: Lectura, ejecución

* Otros: ejecución

(f) Cambiar los permisos del archivo /home/<su nombre de usuario>/yyyy a:

* Usuario: Lectura, escritura.

* Grupo: Lectura, ejecución

* Otros: Ninguno

(g) Borrar todos los archivos del directorio /tmp

(h) Cambiar el propietario del archivo /opt/isodata al usuario iso2010

(i) Guardar en el archivo /home/<su nombre de usuario>/donde el directorio donde me encuentro en este momento, en caso de que el archivo exista no se debe eliminar su contenido anterior.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Terminar el proceso con PID 23:

~~~
kill 23
~~~

---------------------

**(b)** Terminar el proceso llamado init o systemd:

~~~
killall init
~~~

Resultado: No debería terminar porque son procesos críticos del sistema.

---------------------

**(c)** Buscar archivos con ".conf" en el nombre:

~~~
find /home -name "*.conf"
~~~

---------------------

**(d)** Guardar lista de procesos en ejecución:

~~~
ps > /home/<tu_nombre>/procesos
~~~

---------------------

**(e)** Cambiar permisos (usuario: rwx, grupo: rx, otros: x):

~~~
chmod 751 /home/<tu_nombre>/xxxx
~~~

---------------------

**(f)** Cambiar permisos (usuario: rw, grupo: rx, otros: ninguno):

~~~
chmod 750 /home/<tu_nombre>/yyyy
~~~

---------------------

**(g)** Borrar todos los archivos en /tmp:

~~~
rm /tmp/*
~~~

---------------------

**(h)** Cambiar propietario a iso2010:

~~~
chown iso2010 /opt/isodata
~~~

---------------------

**(i)** Guardar el directorio actual en un archivo sin eliminar su contenido:

~~~
pwd >> /home/<tu_nombre>/donde
~~~

</details>

## 🟣 10. Indique qué comando sería necesario ejecutar para realizar las siguientes acciones:

(a) Ingrese al sistema como usuario “root”

(b) Cree un usuario. Elija como nombre, por convención, la primer letra de su nombre seguida de su apellido. Asígnele una contraseña de acceso.

(c) ¿Qué archivos fueron modificados luego de crear el usuario y qué directorios se crearon?

(d) Crear un directorio en /tmp llamado cursada2017

(e) Copiar todos los archivos de /var/log al directorio antes creado.

(f) Para el directorio antes creado (y los archivos y subdirectorios contenidos en él) cambiar el propietario y grupo al usuario creado y grupo users.

(g) Agregue permiso total al dueño, de escritura al grupo y escritura y ejecución a todos los demás usuarios para todos los archivos dentro de un directorio en forma recursiva.

(h) Acceda a otra terminal virtual para loguearse con el usuario antes creado.

(i) Una vez logueado con el usuario antes creado, averigüe cuál es el nombre de su terminal.

(j) Verifique la cantidad de procesos activos que hay en el sistema.

(k) Verifiqué la cantidad de usuarios conectados al sistema.

(l) Vuelva a la terminal del usuario root, y envíele un mensaje al usuario anteriormente creado, avisándole que el sistema va a ser apagado.

(m) Apague el sistema.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Ingresar como usuario root:

~~~
su -
~~~

**(b)** Crear un usuario (ejemplo: mrojas):

~~~
useradd mrojas
passwd mrojas
~~~

**(c)** 

* Archivos modificados: /etc/passwd, /etc/shadow, /etc/group

* Directorio creado: /home/mrojas/

**(d)** Crear un directorio en /tmp:

~~~
mkdir /tmp/cursada2017
~~~

**(e)** Copiar archivos de /var/log:

~~~
cp /var/log/* /tmp/cursada2017
~~~

**(f)** Cambiar propietario y grupo:

~~~
chown -R jdoe:users /tmp/cursada2017
~~~

**(g)** Cambiar permisos de forma recursiva:

~~~
chmod -R 764 /tmp/cursada2017
~~~

**(h)** Acceder a otra terminal virtual:

~~~
Ctrl + Alt + F2
~~~

**(i)** Averiguar el nombre de la terminal:

~~~
tty
~~~

**(j)** Verificar procesos activos:

~~~
ps aux | wc -l
~~~

**(k)** Verificar usuarios conectados:

~~~
who | wc -l
~~~

**(l)** Enviar mensaje a usuario:

~~~
echo "El sistema va a ser apagado" | write mrojas
~~~

**(m)** Apagar el sistema:

~~~
shutdown now
~~~

</details>

## 🟣 11. Indique comando a ejecutar para realizar las siguientes acciones:

(a) Cree un directorio cuyo nombre sea su número de legajo e ingrese a él.

(b) Cree un archivo utilizando el editor de textos vi, e introduzca su información personal: Nombre, Apellido, Número de alumno y dirección de correo electrónico. El archivo debe llamarse "LEAME".

(c) Cambie los permisos del archivo LEAME, de manera que se puedan ver reflejados los siguientes permisos:

Dueño: ningún permiso

Grupo: permiso de ejecución

Otros: todos los permisos

(d) Vaya al directorio /etc y verifique su contenido. Cree un archivo dentro de su directorio personal cuyo nombre sea leame donde el contenido del mismo sea el listado de todos los archivos y directorios contenidos en /etc. ¿Cuál es la razón por la cuál puede crear este archivo si ya existe un archivo llamado "LEAME.en este directorio?.

(e) ¿Qué comando utilizaría y de qué manera si tuviera que localizar un archivo dentro del filesystem? ¿Y si tuviera que localizar varios archivos con características similares? Explique el concepto teórico y ejemplifique.

(f) Utilizando los conceptos aprendidos en el punto e), busque todos los archivos cuya extensión sea .so y almacene el resultado de esta búsqueda en un archivo dentro del directorio creado en a). El archivo deberá llamarse .ejercicio_f".

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Crear un directorio con el nro de legajo de nombre y entrar en él:

~~~
mkdir <nrolegajo>
cd <nrolegajo>
~~~

---------------------

**(b)** Crear un archivo usando vi y añadir información personal

~~~
vi LEAME
~~~

En el editor vi, presiona i para entrar en modo de inserción y escribe tu información personal:

~~~
Nombre: [Tu Nombre]
Apellido: [Tu Apellido]
Número de alumno: [Tu Número de Alumno]
Dirección de correo electrónico: [Tu Correo Electrónico]
~~~

Luego, presiona Esc, escribe :wq y presiona Enter para guardar y salir.

---------------------

**(c)** Cambiar permisos del archivo LEAME

~~~
chmod 751 LEAME
~~~

Esto establece los permisos de la siguiente manera:

Dueño: 0 (sin permisos)

Grupo: 5 (lectura y ejecución)

Otros: 7 (lectura, escritura y ejecución)

---------------------

**(d)** Verificar el contenido de /etc y crear un archivo en el directorio personal

~~~
cd /etc
ls
cd ~
ls /etc > leame
~~~

Se puede crear el archivo leame en el directorio personal aunque ya exista un archivo llamado LEAME porque los sistemas de archivos en Linux son sensibles a mayúsculas y minúsculas. Por lo tanto, LEAME y leame son considerados archivos diferentes.

---------------------

**(e)** Para localizar un archivo específico en el filesystem, se usa el comando find:

~~~
find / -name "nombre_del_archivo"
~~~

Para localizar varios archivos con características similares, se puede usar comodines. Por ejemplo, si buscas todos los archivos .txt:

~~~
find / -name "*.txt"
~~~

find es un comando utilizado para buscar archivos en una jerarquía de directorios. Se puede buscar por nombre, tipo, tamaño, entre otros criterios.

---------------------

**(f)** Buscar archivos con extensión .so y almacenar el resultado

~~~
find / -name "*.so" > <numlegajo>/.ejercicio_f
~~~

Esto busca todos los archivos con extensión .so en el filesystem y guarda el resultado en un archivo llamado .ejercicio_f en el directorio que creaste.

</details>

## 🟣 12. Comandos

Indique qué acción realiza cada uno de los comandos indicados a continuación considerando su orden. Suponga que se ejecutan desde un usuario que no es root ni pertenece al grupo de root. (Asuma que se encuentra posicionado en el directorio de trabajo del usuario con el que se logueó). En caso de no poder ejecutarse el comando indique la razón:

![imagen](/recursos/image01.png)

(a) Inicie 2 sesiones utilizando su nombre de usuario y contraseña. En una sesión vaya siguiendo paso a paso las órdenes que se encuentran escritas en el cuadro superior. En la otra sesión, cree utilizando algún editor de textos un archivo que se llame .ejercicio10_explicacion"dentro del directorio creado en el ejercicio 9.a) y, para cada una de las órdenes que ejecute en la otra sesión, realice una breve explicación de los resultados obtenidos.

(b) Complete en el cuadro superior los comandos 19 y 20, de manera tal que realicen la siguiente acción: 

* 19: Copiar el directorio iso y todo su contenido al directorio creado en el inciso 9.a).

* 20: Copiar el resto de los archivos y directorios que se crearon en este ejercicio al directorio creado en el ejercicio 9.a).

(c) Ejecute las órdenes 19 y 20 y comentelas en el archivo creado en el inciso a).

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Abrir dos terminales y loguear con tu nombre de usuario y contraseña en ambas. Ejecutar órdenes en la primera sesión: A continuación, seguir los comandos.

Crear el archivo .ejercicio10_explicacion en la segunda sesión usando un editor de textos (como nano o vi) para crear el archivo:

~~~
nano $HOME/ejercicio5/.ejercicio10_explicacion
~~~

~~~
vi $HOME/ejercicio5/.ejercicio10_explicacion
~~~

Documentar cada comando.

---------------------

**(b)** Completar comandos 19 y 20

Para copiar el directorio iso y los archivos generados en el ejercicio:

* Copiar el directorio iso:

~~~
cp -r $HOME/iso $HOME/ejercicio5/
~~~

* Copiar el resto de los archivos y directorios:

~~~
cp -r $HOME/f* $HOME/ejercicio5/
~~~

---------------------

**(c)**

~~~
# .ejercicio10_explicacion

1. `mkdir iso`
   - Crea un directorio llamado "iso". Si no hay errores, se crea exitosamente.

2. `cd ./iso`
   - Cambia al directorio "iso". Si no existe, se genera un error.

3. `ps > f0`
   - Captura la lista de procesos activos y la redirige al archivo "f0".

4. `ls > f1`
   - Lista el contenido del directorio actual y lo guarda en "f1".

5. `cd /`
   - Cambia al directorio raíz "/". Esto se realiza correctamente.

6. `echo $HOME`
   - Muestra el directorio home del usuario. Imprime algo como "/home/usuario".

7. `ls -l > $HOME/iso/ls`
   - Lista los archivos en formato detallado y guarda el resultado en "$HOME/iso/ls".

8. `cd $HOME; mkdir f2`
   - Cambia al directorio home y crea un directorio "f2".

9. `ls -ld f2`
   - Muestra información sobre el directorio "f2".

10. `chmod 341 f2`
    - Cambia los permisos de "f2". Es posible que falle si no tienes permisos.

11. `touch dir`
    - Crea un archivo llamado "dir". Si ya existe, actualiza su fecha de modificación.

12. `cd f2`
    - Cambia al directorio "f2".

13. `cd ~/iso`
    - Cambia al directorio "iso" en el home del usuario.

14. `pwd > f3`
    - Guarda la ruta del directorio actual en "f3".

15. `ps | grep 'ps' | wc -l >> ../f2/f3`
    - Cuenta cuántos procesos "ps" están corriendo y agrega el número a "f3".

16. `chmod 700 ../f2`
    - Cambia los permisos de "f2" a sólo lectura, escritura y ejecución para el dueño.

17. `cd ..`
    - Vuelve al directorio anterior.

18. `find . -name etc/passwd`
    - Busca "etc/passwd" en el directorio actual (no encontrará nada por la ruta incorrecta).

19. `find / -name passwd`
    - Busca el archivo "passwd" en todo el sistema.

20. `mkdir ejercicio5`
    - Crea un nuevo directorio llamado "ejercicio5".
~~~

</details>

## 🟣 13. Ejercicio de practica

Cree una estructura desde el directorio /home que incluya varios directorios, subdirectorios y archivos, según el esquema siguiente. Asuma que “usuario” indica cuál es su nombre de usuario. Además deberá tener en cuenta que dirX hace referencia a directorios y fX hace referencia a archivos:

(a) Utilizando la estructura de directorios anteriormente creada, indique que comandos son necesarios para realizar las siguientes acciones:

* Mueva el archivo "f3.al directorio de trabajo /home/usuario.

* Copie el archivo "f4.en el directorio "dir11".

* Haga los mismo que en el inciso anterior pero el archivo de destino, se debe llamar "f7".

* Cree el directorio copia dentro del directorio usuario y copie en él, el contenido de "dir1".

* Renombre el archivo "f1"por el nombre archivo y vea los permisos del mismo.

* Cambie los permisos del archivo llamado archivo de manera de reflejar lo siguiente:

Usuario: Permisos de lectura y escritura

Grupo: Permisos de ejecución

Otros: Todos los permisos

* Renombre los archivos "f3 2 "f4"de manera que se llamen "f3.exe 2 "f4 exerespectivamente.

* Utilizando un único comando cambie los permisos de los dos archivos renombrados en el inciso anterior, de manera de reflejar lo siguiente:

Usuario: Ningún permiso

Grupo: Permisos de escritura

Otros: Permisos de escritura y ejecución

<details><summary> <code> Respuesta 🖱 </code></summary><br>

Estructura de Directorios --> Supongamos la siguiente estructura:

~~~
/home/usuario
├── dir1
│   ├── f1
│   ├── f2
│   └── f3
├── dir11
│   ├── f4
│   └── f5
└── dir2
    └── f6
~~~

Comandos para las Acciones

1. Mover el archivo "f3" al directorio de trabajo /home/usuario:

~~~
mv dir1/f3 /home/usuario/
~~~

2. Copiar el archivo "f4" al directorio "dir11":

~~~
cp dir11/f4 /home/usuario/dir11/
~~~

3. Copiar el archivo "f4" al directorio "dir11" y renombrarlo como "f7":

~~~
cp dir11/f4 /home/usuario/dir11/f7
~~~

4. Crear el directorio "copia" dentro del directorio usuario y copiar el contenido de "dir1":

~~~
mkdir /home/usuario/copia
cp -r /home/usuario/dir1/* /home/usuario/copia/
~~~

5. Renombrar el archivo "f1" por "archivo" y ver los permisos:

~~~
mv dir1/f1 /home/usuario/archivo
ls -l archivo
~~~

6. Cambiar los permisos del archivo llamado "archivo":

~~~
chmod 761 archivo
~~~

Esto refleja:

* Usuario: lectura y escritura (rw-)

* Grupo: ejecución (rwx)

* Otros: todos los permisos (rwx)

7. Renombrar los archivos "f3" y "f4" a "f3.exe" y "f4.exe" respectivamente:

~~~
mv dir1/f3 dir1/f3.exe
mv dir11/f4 dir11/f4.exe
~~~

8. Cambiar los permisos de los dos archivos renombrados en un solo comando:

~~~
chmod 027 dir1/f3.exe dir11/f4.exe
~~~

Esto refleja:

* Usuario: ningún permiso (---)

* Grupo: permisos de escritura (--w)

* Otros: permisos de escritura y ejecución (--wx)

</details>

## 🟣 14. Comandos varios

Indique qué comando/s es necesario para realizar cada una de las acciones de la siguiente secuencia de pasos (considerando su orden de aparición):

(a) Cree un directorio llamado logs en el directorio /tmp.

(b) Copie todo el contenido del directorio /var/log en el directorio creado en el punto anterior.

(c) Empaquete el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar".

(d) Empaquete y comprima el directorio creado en 1, el archivo resultante se debe llamar "misLogs.tar.gz".

(e) Copie los archivos creados en 3 y 4 al directorio de trabajo de su usuario.

(f) Elimine el directorio creado en 1, logs.

(g) Desempaquete los archivos creados en 3 y 4 en 2 directorios diferentes.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Crear un directorio llamado logs en el directorio /tmp

~~~
mkdir /tmp/logs
~~~

---------------------

(b) Copiar todo el contenido del directorio /var/log en el directorio creado en el punto anterior

~~~
cp -r /var/log/* /tmp/logs/
~~~

---------------------

(c) Empaquetar el directorio creado en (a) en un archivo llamado "misLogs.tar"

~~~
tar -cf misLogs.tar -C /tmp logs
~~~

Nota: La opción -C cambia al directorio /tmp antes de empaquetar, así que el archivo resultante contiene solo el directorio logs.

---------------------

(d) Empaquetar y comprimir el directorio creado en (a) en un archivo llamado "misLogs.tar.gz"

~~~
tar -czf misLogs.tar.gz -C /tmp logs
~~~

La opción -z comprime el archivo usando gzip.

---------------------

(e) Copiar los archivos creados en (c) y (d) al directorio de trabajo de su usuario

~~~
cp misLogs.tar misLogs.tar.gz ~/
~~~

---------------------

(f) Eliminar el directorio creado en (a), logs

~~~
rm -r /tmp/logs
~~~

Nota: Usa -r para eliminar el directorio y su contenido de forma recursiva.

---------------------

(g) Desempaquetar los archivos creados en (c) y (d) en dos directorios diferentes

~~~
mkdir ~/misLogs_tar
mkdir ~/misLogs_tar_gz

tar -xf ~/misLogs.tar -C ~/misLogs_tar/
tar -xzf ~/misLogs.tar.gz -C ~/misLogs_tar_gz/
~~~

-x se usa para desempaquetar.

-f especifica el archivo a desempaquetar.

-z se usa solo para archivos comprimidos.

</details>