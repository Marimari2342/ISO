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

## 🟣 3. SystemD(https://github.com/systemd/systemd):

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

