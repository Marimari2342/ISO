# Introducción a los Sistemas Operativos - Practica 3

## 🟠 1. Shell Scripting

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

## 🟠 3. Practica

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
[Input del usuario: Marianela Rojas]

Fecha y hora actual:
Tue Sep 25 10:45:23 UTC 2024

Su apellido y nombre es:
Rojas Marianela

Su usuario es: marimari

Su directorio actual es: /home/marimari
~~~

---------------------

**(d)** Las backticks (`) permiten ejecutar un comando dentro de otro comando o en una variable y utilizar el resultado de dicho comando. En el ejemplo:

~~~
echo "Su usuario es: `whoami`"
~~~

El comando whoami se ejecuta, y su salida (el nombre de usuario del sistema) se inserta en la línea donde aparece. En otras palabras, el resultado del comando whoami reemplaza el texto dentro de los backticks.

---------------------

**(e)** Modificar el script para que, además de los datos anteriores, muestre el directorio personal, el contenido de un directorio en particular, y el espacio libre en disco. Además, voy a pedir otros datos por teclado.

~~~
#!/bin/bash
# Este script solicita información y muestra detalles del sistema
echo "Introduzca su nombre y apellido:"
read nombre apellido

# Le pedimos al usuario que introduzca un directorio para listar su contenido.
echo "Introduzca su directorio a listar (ejemplo: /home):"
read directorio

echo "Fecha y hora actual:"
date

echo "Su apellido y nombre es:"
echo "$apellido $nombre"

echo "Su usuario es: `whoami`"
echo "Su directorio actual es: `pwd`"
echo "Su directorio personal es: $HOME"
echo "El contenido del directorio $directorio es:"
# Muestra el contenido del directorio proporcionado por el usuario.
ls "$directorio"

# Muestra el espacio libre en el sistema de archivos.
echo "Espacio libre en disco:"
df -h
~~~

</details>

## 🟠 4. Parametrización: 

¿Cómo se acceden a los parámetros enviados al script al momento de su invocación? ¿Qué información contienen las variables / $#, $*, $? Y $HOME / dentro de un script?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

En shell scripting, es posible pasar parámetros al script al momento de invocarlo desde la línea de comandos. Estos parámetros se acceden utilizando las siguientes variables especiales:

* $1, $2, ..., $n: Representan los parámetros posicionales que se pasan al script. $1 es el primer parámetro, $2 es el segundo, y así sucesivamente. Por ejemplo:

~~~
#!/bin/bash
echo "El primer parámetro es: $1"
echo "El segundo parámetro es: $2"
~~~

Si ejecuto ./script.sh hola mundo, la salida será:

~~~
El primer parámetro es: hola
El segundo parámetro es: mundo
~~~

Variables especiales en los scripts:

* $#: Contiene el número total de parámetros pasados al script. Ejemplo:

~~~
echo "Número de parámetros: $#"
~~~

Si ejecutas ./script.sh hola mundo, la salida será:

~~~
Número de parámetros: 2
~~~

* $*: Contiene todos los parámetros pasados al script como una sola cadena, separados por espacios.

Ejemplo:

~~~
echo "Todos los parámetros: $*"
~~~

Si ejecutas ./script.sh hola mundo, la salida será:

~~~
Todos los parámetros: hola mundo
~~~

* $?: Almacena el valor de retorno del último comando ejecutado. Un valor de 0 indica que el comando anterior se ejecutó correctamente; cualquier otro valor indica un error. Ejemplo:

~~~
ls /home
echo "El código de salida del último comando es: $?"
~~~

* $HOME: Contiene la ruta del directorio personal del usuario que ejecuta el script. Es una variable de entorno predefinida. Ejemplo:

~~~
echo "El directorio personal del usuario es: $HOME"
~~~

</details>

## 🟠 5. Comando exit

¿Cual es la funcionalidad de comando exit? ¿Qué valores recibe como parámetro y cual es su significado?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

El comando exit se utiliza para finalizar la ejecución de un script o un proceso en shell. Este comando puede recibir un valor de código de salida (un número), que indica el estado de la terminación del script.

Valores que recibe como parámetro y su significado:

* exit 0: Indica una salida exitosa. El valor 0 significa que el script o proceso ha terminado correctamente.

* exit N: Donde N es cualquier número distinto de 0, indica que el script terminó con un error o fallo. Los valores de error típicos pueden ser:

1: Error general.

2: Uso incorrecto de comandos.

Otros valores pueden depender del script o del sistema operativo.

Ejemplo:

~~~
#!/bin/bash
if [ "$1" == "" ]; then
  echo "No se ha proporcionado un parámetro"
  exit 1  # Salida con código de error
else
  echo "Parámetro recibido: $1"
  exit 0  # Salida exitosa
fi
~~~

En este ejemplo, si no se pasa un parámetro al script, termina con un código de error 1. Si recibe un parámetro, termina correctamente con exit 0.

</details>