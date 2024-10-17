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

```sh
echo "Hola, Mundo"
```

* read: Se usa para leer la entrada del usuario. Ejemplo:

```sh
read nombre
echo "Tu nombre es $nombre"
```

---------------------

**(a)** En los scripts de shell, los comentarios se indican con el carácter #. Todo lo que sigue en la línea después de este símbolo será ignorado por el intérprete.

```sh
# Esto es un comentario
```

---------------------

**(b)** Las variables se declaran simplemente asignándoles un valor sin necesidad de un tipo de datos explícito.

```sh
nombre="Juan"
```

Se hace referencia a las variables anteponiendo el signo $ al nombre de la variable.

```sh
echo "Hola, $nombre"
```

</details>

## 🟠 3. Practica

Crear dentro del directorio personal del usuario logueado un directorio llamado practicashell-script y dentro de él un archivo llamado mostrar.sh cuyo contenido sea el siguiente:

```sh
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
```

(a) Asignar al archivo creado los permisos necesarios de manera que pueda ejecutarlo

(b) Ejecutar el archivo creado de la siguiente manera: ./mostrar

(c) ¿Qué resultado visualiza?

(d) Las backquotes (`) entre el comando whoami ilustran el uso de la sustitución de comandos. ¿Qué significa esto?

(e) Realizar modificaciones al script anteriormente creado de manera de poder mostrar distintos resultados (cuál es su directorio personal, el contenido de un directorio en particular, el espacio libre en disco, etc.). Pida que se introduzcan por teclado (entrada estándar) otros datos.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

Crear el directorio y archivo con el script (seguir estos pasos en la terminal):

1. Crear el directorio practicashell-script dentro de tu directorio personal:

```sh
mkdir ~/practicashell-script
```

2. Crear el archivo mostrar.sh dentro de ese directorio:

```sh
touch ~/practicashell-script/mostrar.sh
```

3. Editar el archivo mostrar.sh con el contenido proporcionado usando un editor de texto como nano o vi:

```sh
nano ~/practicashell-script/mostrar.sh
```

4. Dentro del archivo, escribe el siguiente contenido:

```sh
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
```

4. Guardar y salir del editor (Ctrl + X, luego Y y Enter en nano).

---------------------

**(a)** Para hacer el archivo ejecutable, asigna los permisos de ejecución con el comando chmod:

```sh
chmod +x ~/practicashell-script/mostrar.sh
```

---------------------

**(b)** Ejecutar el archivo creado con el siguiente comando:

```sh
./practicashell-script/mostrar.sh
```

---------------------

**(c)** Al ejecutar el script, el resultado esperado sería similar a:

```sh
Introduzca su nombre y apellido:
[Input del usuario: Marianela Rojas]

Fecha y hora actual:
Tue Sep 25 10:45:23 UTC 2024

Su apellido y nombre es:
Rojas Marianela

Su usuario es: marimari

Su directorio actual es: /home/marimari
```

---------------------

**(d)** Las backticks (`) permiten ejecutar un comando dentro de otro comando o en una variable y utilizar el resultado de dicho comando. En el ejemplo:

```sh
echo "Su usuario es: `whoami`"
```

El comando whoami se ejecuta, y su salida (el nombre de usuario del sistema) se inserta en la línea donde aparece. En otras palabras, el resultado del comando whoami reemplaza el texto dentro de los backticks.

---------------------

**(e)** Modificar el script para que, además de los datos anteriores, muestre el directorio personal, el contenido de un directorio en particular, y el espacio libre en disco. Además, voy a pedir otros datos por teclado.

```sh
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
```

</details>

## 🟠 4. Parametrización: 

¿Cómo se acceden a los parámetros enviados al script al momento de su invocación? ¿Qué información contienen las variables  $ \# , $ *, $ ? Y $HOME dentro de un script?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

En shell scripting, es posible pasar parámetros al script al momento de invocarlo desde la línea de comandos. Estos parámetros se acceden utilizando las siguientes variables especiales:

* $1, $2, ..., $n: Representan los parámetros posicionales que se pasan al script. $1 es el primer parámetro, $2 es el segundo, y así sucesivamente. Por ejemplo:

```sh
#!/bin/bash
echo "El primer parámetro es: $1"
echo "El segundo parámetro es: $2"
```

Si ejecuto ./script.sh hola mundo, la salida será:

```sh
El primer parámetro es: hola
El segundo parámetro es: mundo
```

Variables especiales en los scripts:

* $#: Contiene el número total de parámetros pasados al script. Ejemplo:

```sh
echo "Número de parámetros: $#"
```

Si ejecutas ./script.sh hola mundo, la salida será:

```sh
Número de parámetros: 2
```

* $*: Contiene todos los parámetros pasados al script como una sola cadena, separados por espacios.

Ejemplo:

```sh
echo "Todos los parámetros: $*"
```

Si ejecutas ./script.sh hola mundo, la salida será:

```sh
Todos los parámetros: hola mundo
```

* $?: Almacena el valor de retorno del último comando ejecutado. Un valor de 0 indica que el comando anterior se ejecutó correctamente; cualquier otro valor indica un error. Ejemplo:

```sh
ls /home
echo "El código de salida del último comando es: $?"
```

* $HOME: Contiene la ruta del directorio personal del usuario que ejecuta el script. Es una variable de entorno predefinida. Ejemplo:

```sh
echo "El directorio personal del usuario es: $HOME"
```
---------------------

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

```sh
#!/bin/bash
if [ "$1" == "" ]; then
  echo "No se ha proporcionado un parámetro"
  exit 1  # Salida con código de error
else
  echo "Parámetro recibido: $1"
  exit 0  # Salida exitosa
fi
```

En este ejemplo, si no se pasa un parámetro al script, termina con un código de error 1. Si recibe un parámetro, termina correctamente con exit 0.

---------------------

</details>

## 🟠 6. Comando expr

El comando expr permite la evaluación de expresiones. Su sintaxis es: expr arg1 op arg2, donde arg1 y arg2 representan argumentos y op la operación de la expresión. Investigar que tipo de operaciones se pueden utilizar.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

* Operaciones aritméticas:

```sh
#!/bin/bash

# Suma: +
expr 5 + 3

# Resta: -
expr 5 - 2

# Multiplicación: * (Se debe escapar el asterisco con \ o usar comillas dobles)
expr 5 \* 3

# División: /
expr 10 / 2

# Módulo: % (devuelve el resto de una división)
expr 10 % 3  # Resultado: 1
```

* Operaciones de comparación: estas operaciones comparan dos números y devuelven 1 si la condición es verdadera, y 0 si es falsa.

```sh
#!/bin/bash

# Igual a: =
expr 5 = 5   # Resultado: 1

# No igual a: !=
expr 5 != 3  # Resultado: 1

# Mayor que: >
expr 5 \> 3  # Resultado: 1

# Mayor o igual que: >=
expr 5 \>= 5  # Resultado: 1

#Menor que: <
expr 3 \< 5  # Resultado: 1

# Menor o igual que: <=
expr 3 \<= 5  # Resultado: 1
```

* Operaciones lógicas:

```sh
#!/bin/bash

# AND lógico: &
expr 1 \& 0  # Resultado: 0

# OR lógico: |
expr 1 \| 0  # Resultado: 1
```

* Manipulación de cadenas:

```sh
#!/bin/bash

# Concatenación:
expr "Hello" : '\(.*\)' "World"  # Concatenación simple

# Longitud de una cadena:
expr length "cadena"  # Resultado: 6

# Substracción de parte de una cadena:
expr substr "cadena" 1 3  # Resultado: "cad"
```

* Expresiones regulares: puedes usar expr para hacer coincidencias simples con expresiones regulares.

```sh
#!/bin/bash

# Coincidencia de patrón:
expr "cadena" : 'ca.*'  # Resultado: 6 (si coincide, devuelve el número de caracteres)

# Ejemplo combinado:
expr 5 + 3 \* 2  # Resultado: 11 (multiplicación se evalúa primero)
```

Importante: los operadores de expr deben estar separados por espacios y, en muchos casos, algunos caracteres como *, <, >, &, y | deben ser escapados con \ o rodeados por comillas dobles para evitar que el shell los interprete antes de que expr los procese.

---------------------

</details>

## 🟠 7. Comando test expresión

El comando “test expresión” permite evaluar expresiones y generar un valor de retorno, true o false. Este comando puede ser reemplazado por el uso de corchetes de la siguiente manera [ expresión ]. Investigar que tipo de expresiones pueden ser usadas con el comando test. Tenga en cuenta operaciones para: evaluación de archivos, evaluación de cadenas de caracteres y evaluaciones numéricas.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

El comando test en Linux/Unix permite evaluar expresiones y devuelve un valor de retorno: true (0) si la expresión es cierta o false (1) si es falsa. Además, se puede usar su forma abreviada usando corchetes ([ expresión ]). Este comando es comúnmente utilizado en scripts de shell para realizar comprobaciones sobre archivos, cadenas y números.

Diferentes tipos de evaluaciones que puedes realizar con test.

1. Evaluación de archivos: el comando test permite verificar varias condiciones sobre archivos y directorios. Aquí están las principales opciones:

```sh
# Existe el archivo:
test -e archivo
[ -e archivo ]

# Es un archivo regular:
test -f archivo
[ -f archivo ]

# Es un directorio:
test -d directorio
[ -d directorio ]

# Archivo no está vacío (tiene un tamaño mayor a 0):
test -s archivo
[ -s archivo ]

# Archivo es ejecutable:
test -x archivo
[ -x archivo ]

# Archivo tiene permiso de lectura:
test -r archivo
[ -r archivo ]

# Archivo tiene permiso de escritura:
test -w archivo
[ -w archivo ]

# Archivo especial de bloque (dispositivos como discos):
test -b archivo
[ -b archivo ]

# Archivo especial de carácter (dispositivos como terminales o impresoras):
test -c archivo
[ -c archivo ]

# Archivo es un enlace simbólico:
test -L archivo
[ -L archivo ]
```

2. Evaluación de cadenas de caracteres: se pueden usar expresiones con test o [ ] para evaluar cadenas de texto, como comprobar si están vacías, comparar o comprobar si dos cadenas son iguales.

```sh
# Longitud de cadena mayor a 0 (la cadena no está vacía):
test -n "cadena"
[ -n "cadena" ]

# Longitud de cadena es 0 (la cadena está vacía):
test -z "cadena"
[ -z "cadena" ]

# Cadenas son iguales:
test "cadena1" = "cadena2"
[ "cadena1" = "cadena2" ]

# Cadenas son diferentes:
test "cadena1" != "cadena2"
[ "cadena1" != "cadena2" ]
```

3. Evaluación numérica: el comando test permite comparar números enteros para comprobar condiciones como igualdad, mayor o menor que, entre otros.

```sh
# Igualdad numérica:
test 5 -eq 5
[ 5 -eq 5 ]

# Diferencia numérica:
test 5 -ne 3
[ 5 -ne 3 ]

# Mayor que:
test 5 -gt 3
[ 5 -gt 3 ]

# Menor que:
test 3 -lt 5
[ 3 -lt 5 ]

# Mayor o igual que:
test 5 -ge 5
[ 5 -ge 5 ]

# Menor o igual que:
test 3 -le 5
[ 3 -le 5 ]
```

4. Combinaciones lógicas: puedes combinar varias expresiones con operadores lógicos como AND y OR:

```sh
# AND lógico (ambas condiciones deben ser verdaderas):
test -f archivo1 -a -f archivo2
[ -f archivo1 -a -f archivo2 ]

# OR lógico (una de las condiciones debe ser verdadera):
test -f archivo1 -o -f archivo2
[ -f archivo1 -o -f archivo2 ]

# Ejemplos: 

# 1. Verificar si un archivo existe y es un archivo regular:

if [ -e archivo -a -f archivo ]; then
  echo "El archivo existe y es un archivo regular."
fi

# 2. Comparar dos números:

if [ 5 -gt 3 ]; then
  echo "5 es mayor que 3."
fi

# 3. Verificar si una cadena no está vacía:

if [ -n "$cadena" ]; then
  echo "La cadena no está vacía."
fi
```

Estas evaluaciones son comunes en scripts de shell para verificar condiciones antes de ejecutar comandos o tomar decisiones lógicas.

---------------------

</details>