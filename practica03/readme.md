# Introducción a los Sistemas Operativos - Practica 3

## 🟠 1. 

¿Qué es el Shell Scripting? ¿A qué tipos de tareas están orientados los script? ¿Los scripts deben compilarse? ¿Por qué?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

El Shell Scripting es la escritura de secuencias de comandos (scripts) para ser interpretadas por el shell, que es la interfaz entre el usuario y el sistema operativo en entornos Unix o Linux. El shell permite la ejecución de comandos directamente en el sistema operativo, automatizando tareas repetitivas o complejas.

Los scripts están orientados a automatizar tareas del sistema, como:

* Manejo de archivos (crear, mover, borrar).

* Administración de procesos y recursos.

* Realización de copias de seguridad.

* Configuración del sistema.

* Automatización de despliegues.

* Ejecución de procesos en secuencia (pipelines).

Los scripts no necesitan compilarse, ya que son interpretados en tiempo de ejecución por el shell. A diferencia de los lenguajes compilados que requieren una etapa previa de compilación para convertir el código a binario, los scripts se ejecutan línea por línea. Esto facilita su uso para tareas rápidas y hace que sean más flexibles a la hora de modificarse.

</details>

## 🟠 2. Investigar la funcionalidad de los comandos echo y read.

(a) ¿Como se indican los comentarios dentro de un script?

(b) ¿Cómo se declaran y se hace referencia a variables dentro de un script?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

* echo: Se usa para imprimir texto o variables en la salida estándar (normalmente, la pantalla). Ejemplo:

~~~
echo "Hola, Mundo"
~~~

* read: Se usa para leer la entrada del usuario. Ejemplo:

~~~
read nombre
echo "Tu nombre es $nombre"
~~~

---------------------

**(a)** En los scripts de shell, los comentarios se indican con el carácter #. Todo lo que sigue en la línea después de este símbolo será ignorado por el intérprete.

~~~
# Esto es un comentario
~~~

---------------------

**(b)** Las variables se declaran simplemente asignándoles un valor sin necesidad de un tipo de datos explícito.

~~~
nombre="Juan"
~~~

Se hace referencia a las variables anteponiendo el signo $ al nombre de la variable.

~~~
echo "Hola, $nombre"
~~~

</details>

## 🟠 3. 

Crear dentro del directorio personal del usuario logueado un directorio llamado practicashell-script y dentro de él un archivo llamado mostrar.sh cuyo contenido sea el siguiente:

~~~
#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es:"
~~~

(a) Asignar al archivo creado los permisos necesarios de manera que pueda ejecutarlo

(b) Ejecutar el archivo creado de la siguiente manera: ./mostrar

(c) ¿Qué resultado visualiza?

(d) Las backquotes (`) entre el comando whoami ilustran el uso de la sustitución de comandos. ¿Qué significa esto?

(e) Realizar modificaciones al script anteriormente creado de manera de poder mostrar distintos resultados (cuál es su directorio personal, el contenido de un directorio en particular, el espacio libre en disco, etc.). Pida que se introduzcan por teclado (entrada estándar) otros datos.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

Crear el directorio y archivo con el script (seguir estos pasos en la terminal):

1. Crear el directorio practicashell-script dentro de tu directorio personal:

~~~
mkdir ~/practicashell-script
~~~

2. Crear el archivo mostrar.sh dentro de ese directorio:

~~~
touch ~/practicashell-script/mostrar.sh
~~~

3. Editar el archivo mostrar.sh con el contenido proporcionado usando un editor de texto como nano o vi:

~~~
nano ~/practicashell-script/mostrar.sh
~~~

4. Dentro del archivo, escribe el siguiente contenido:

~~~
#!/bin/bash
# Este script solicita nombre y apellido, y muestra información del sistema
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es: `pwd`"
~~~

4. Guardar y salir del editor (Ctrl + X, luego Y y Enter en nano).

---------------------

**(a)** Para hacer el archivo ejecutable, asigna los permisos de ejecución con el comando chmod:

~~~
chmod +x ~/practicashell-script/mostrar.sh
~~~

---------------------

**(b)** Ejecutar el archivo creado con el siguiente comando:

~~~
./practicashell-script/mostrar.sh
~~~

---------------------

**(c)** Al ejecutar el script, el resultado esperado sería similar a:

~~~
Introduzca su nombre y apellido:
[Input del usuario: Juan Pérez]

Fecha y hora actual:
Tue Sep 25 10:45:23 UTC 2024

Su apellido y nombre es:
Pérez Juan

Su usuario es: juanperez

Su directorio actual es: /home/juanperez
~~~

---------------------

**(d)** Las backticks (`) permiten ejecutar un comando dentro de otro comando o en una variable y utilizar el resultado de dicho comando. En el ejemplo:

~~~
echo "Su usuario es: `whoami`"
~~~

El comando whoami se ejecuta, y su salida (el nombre de usuario del sistema) se inserta en la línea donde aparece. En otras palabras, el resultado del comando whoami reemplaza el texto dentro de los backticks.

**(e)** Modificar el script para que, además de los datos anteriores, muestre el directorio personal, el contenido de un directorio en particular, y el espacio libre en disco. Además, voy a pedir otros datos por teclado.

Modifica el archivo mostrar.sh con el siguiente contenido:

~~~
bash
Copiar código
#!/bin/bash
# Este script solicita información y muestra detalles del sistema
echo "Introduzca su nombre y apellido:"
read nombre apellido

echo "Introduzca su directorio a listar (ejemplo: /home):"
read directorio

echo "Introduzca su color favorito:"
read color

echo "Fecha y hora actual:"
date

echo "Su apellido y nombre es:"
echo "$apellido $nombre"

echo "Su color favorito es: $color"

echo "Su usuario es: `whoami`"
echo "Su directorio actual es: `pwd`"
echo "Su directorio personal es: $HOME"
echo "El contenido del directorio $directorio es:"
ls "$directorio"

echo "Espacio libre en disco:"
df -h
~~~

Explicación de los nuevos comandos:

* read directorio: Le pedimos al usuario que introduzca un directorio para listar su contenido.

* ls "$directorio": Muestra el contenido del directorio proporcionado por el usuario.

* df -h: Muestra el espacio libre en el sistema de archivos en formato legible para humanos.

Para ejecutarlo: después de guardar el archivo, puedes ejecutarlo de la misma manera que antes.

~~~
./practicashell-script/mostrar.sh
~~~

El script pedirá el nombre, apellido, color favorito y el directorio a listar, y mostrará toda la información solicitada.

</details>