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