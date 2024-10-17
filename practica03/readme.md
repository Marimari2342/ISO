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

## 🟠 8. Estructuras de Control

Investigue la sintaxis de las siguientes estructuras de control incluidas en shell scripting: if, case, while, for, select

<details><summary> <code> Respuesta 🖱 </code></summary><br>

1. ***Estructura if:*** evalúa una condición y ejecuta comandos dependiendo de si la condición es verdadera o falsa. Puede incluir else y elif para manejar casos adicionales.

```sh
if [ condición ]; then
    # Bloque de código si la condición es verdadera
elif [ otra_condición ]; then
    # Bloque de código si la otra_condición es verdadera
else
    # Bloque de código si ninguna condición es verdadera
fi
```

Ejemplo:

```sh
#!/bin/bash

num=10

if [ $num -gt 5 ]; then
    echo "El número es mayor que 5"
elif [ $num -eq 5 ]; then
    echo "El número es igual a 5"
else
    echo "El número es menor que 5"
fi
```

2. ***Estructura case***: compara una variable o expresión con varios patrones y ejecuta el bloque de código correspondiente al primer patrón que coincida. Se utiliza para reemplazar múltiples sentencias if-elif.

```sh
case variable in
    patrón1)
        # Bloque de código si variable coincide con patrón1
        ;;
    patrón2)
        # Bloque de código si variable coincide con patrón2
        ;;
    *)
        # Bloque de código si no coincide con ningún patrón
        ;;
esac
```

Ejemplo:

```sh
#!/bin/bash

echo "Ingrese una opción (a, b o c):"
read opcion

case $opcion in
    a)
        echo "Opción A seleccionada"
        ;;
    b)
        echo "Opción B seleccionada"
        ;;
    c)
        echo "Opción C seleccionada"
        ;;
    *)
        echo "Opción no válida"
        ;;
esac
```

3. ***Estructura while***: ejecuta un bloque de código mientras la condición evaluada sea verdadera. Se utiliza para bucles con una condición de repetición.

```sh
while [ condición ]; do
    # Bloque de código a ejecutar mientras la condición sea verdadera
done
```

Ejemplo:

```sh
#!/bin/bash

contador=1

while [ $contador -le 5 ]; do
    echo "Iteración: $contador"
    contador=$((contador + 1))
done
```

4. ***Estructura for***: ejecuta un bloque de código para cada elemento en una lista o un rango de valores. Es muy útil para recorrer listas, arrays o secuencias numéricas.

```sh
for variable in lista; do
    # Bloque de código que se ejecuta por cada elemento de la lista
done
```

Ejemplo (recorriendo una lista de valores):

```sh
#!/bin/bash

for fruta in manzana naranja plátano; do
    echo "Fruta: $fruta"
done
```

Ejemplo (recorriendo un rango de números):

```sh
#!/bin/bash

for i in {1..5}; do
    echo "Número: $i"
done
```

5. ***Estructura select***: se utiliza para crear menús interactivos. Muestra una lista de opciones y permite al usuario seleccionar una de ellas.

```sh
select variable in lista; do
    # Bloque de código que se ejecuta por cada opción seleccionada
done
```

Ejemplo:

```sh
#!/bin/bash

PS3="Seleccione una fruta: "  # Prompt del menú
select fruta in manzana naranja plátano; do
    case $fruta in
        manzana)
            echo "Has seleccionado manzana."
            break
            ;;
        naranja)
            echo "Has seleccionado naranja."
            break
            ;;
        plátano)
            echo "Has seleccionado plátano."
            break
            ;;
        *)
            echo "Opción no válida."
            ;;
    esac
done
```

El prompt PS3 define el texto que se muestra para la entrada del usuario. select permite repetir el menú hasta que se use el comando break.

Estas estructuras de control son fundamentales en Shell Scripting y permiten controlar el flujo de ejecución de los scripts según condiciones, iteraciones y opciones de menú.

---------------------

</details>

## 🟠 9. Sentencias break y continue

¿Qué acciones realizan las sentencias break y continue dentro de un bucle? ¿Qué parámetros} reciben?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

Las sentencias break y continue se utilizan en los bucles para alterar el flujo de ejecución. Aunque ambas modifican el comportamiento del bucle, lo hacen de manera diferente.

* break: Finaliza el bucle actual. Puede recibir un número opcional para salir de varios niveles de bucles anidados.

* continue: Salta la iteración actual del bucle y continúa con la siguiente. Puede recibir un número opcional para continuar desde un bucle específico en el caso de bucles anidados.

---------------------

1. ***Sentencia break***

La sentencia break se utiliza para salir completamente de un bucle, independientemente de si la condición del bucle se ha cumplido o no. Cuando break se ejecuta, el bucle se termina inmediatamente y el control del programa pasa a la siguiente instrucción fuera del bucle.

```sh
#!/bin/bash

# Ejemplo: break
for i in {1..5}; do
    if [ $i -eq 3 ]; then
        break  # Sale del bucle cuando i es igual a 3
    fi
    echo "Iteración: $i"
done
echo "Bucle terminado"

# Salida:
Iteración: 1
Iteración: 2
Bucle terminado
```

Parámetros: en bash, break acepta un parámetro opcional: un número entero positivo que indica de cuántos bucles anidados se debe salir.

break n: Saldrá de los n niveles de bucles anidados.

```sh
#!/bin/bash

# Ejemplo con bucles anidados:
for i in {1..3}; do
    for j in {1..3}; do
        if [ $j -eq 2 ]; then
            break 2  # Sale de ambos bucles (interno y externo)
        fi
        echo "i: $i, j: $j"
    done
done
echo "Bucle terminado"

# Salida:
i: 1, j: 1
Bucle terminado
```
---------------------

2. ***Sentencia continue***

La sentencia continue se utiliza para saltar el resto del código en la iteración actual del bucle y pasar directamente a la siguiente iteración. No termina el bucle, sino que simplemente salta al siguiente ciclo.

```sh
#!/bin/bash

# ejemplo: continue
for i in {1..5}; do
    if [ $i -eq 3 ]; then
        continue  # Salta la iteración cuando i es igual a 3
    fi
    echo "Iteración: $i"
done

#Salida:
Iteración: 1
Iteración: 2
Iteración: 4
Iteración: 5
```

Parámetros: en bash, continue también acepta un parámetro opcional: un número entero positivo que indica de cuántos niveles de bucles anidados se debe continuar.

continue n: Continúa desde el n-ésimo bucle exterior.

```sh
#!/bin/bash

# Ejemplo con bucles anidados:
for i in {1..3}; do
    for j in {1..3}; do
        if [ $j -eq 2 ]; then
            continue 2  # Pasa a la siguiente iteración del bucle externo
        fi
        echo "i: $i, j: $j"
    done
done

# Salida:
i: 1, j: 1
i: 2, j: 1
i: 3, j: 1
```

---------------------

</details>

## 🟠 10. Variables

¿Qué tipo de variables existen? ¿Es shell script fuertemente tipado? ¿Se pueden definir
arreglos? ¿Cómo?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

* ***Tipos de Variables en Shell Script***

En Shell Script, las variables no tienen tipos de datos explícitos como en lenguajes de programación fuertemente tipados (como Java o C). Todas las variables son tratadas como cadenas de texto por defecto, aunque se pueden manipular para que se comporten como números enteros en operaciones aritméticas.

Tipos de variables más comunes:

```sh
#!/bin/bash

# Variables de usuario: Definidas por el usuario en un script o en la terminal. 
# No requieren declaración de tipo.
nombre="Carlos"
edad=25

# Variables de entorno: Variables que están disponibles en todo el entorno del sistema operativo.
# Accesibles por cualquier script o aplicación.
export PATH="/usr/local/bin:$PATH"

# Variables posicionales: Son argumentos que se pasan a un script y se acceden con $1, $2, etc. 
# $0 es el nombre del script.
./mi_script.sh arg1 arg2

# Variables especiales: Variables predefinidas en el shell, como:
$?: Código de retorno del último comando ejecutado.
$$: PID del proceso actual.
$#: Número de argumentos pasados al script.
$@ o $*: Todos los argumentos pasados al script.
```

---------------------

* ***¿Es Shell Script Fuertemente Tipado?***

No, Shell Script no es fuertemente tipado. En Shell Script, no se declara el tipo de las variables, y pueden contener cualquier tipo de dato sin especificar si son números, cadenas de texto, etc. Esto significa que puedes asignar y reasignar distintos tipos de valores a la misma variable sin necesidad de conversión explícita.

```sh
variable="texto"  # La variable es una cadena de texto
variable=123      # Ahora es un número (aunque sigue siendo tratada como cadena)
```

Aunque no es estrictamente tipado, puedes realizar operaciones aritméticas con variables que contienen números utilizando comandos como expr o let, o con la expansión aritmética $(( )).

---------------------

* ***¿Se Pueden Definir Arreglos? ¿Cómo?***

Sí, en Shell Script puedes definir arreglos (arrays). Los arreglos en Bash son unidimensionales y sus elementos se pueden acceder por índices numéricos.

```sh
#!/bin/bash

# Los arreglos en Bash se definen usando paréntesis y los elementos se separan por espacios.
mi_array=(elemento1 elemento2 elemento3)

# Los elementos de un array se acceden utilizando el índice correspondiente (que comienza en 0).
echo ${mi_array[0]}  # Imprime "elemento1"
echo ${mi_array[1]}  # Imprime "elemento2"

# Puedes modificar o añadir elementos a un arreglo asignándolos a un índice específico.
mi_array[3]="elemento4"

# Acceder a todos los elementos del arreglo: usando * o @.
echo ${mi_array[@]}  # Imprime todos los elementos del arreglo
echo ${mi_array[*]}  # También puedo escribirlo así

# Obtener el tamaño del arreglo:
Para obtener la cantidad de elementos en un array, usa el operador especial ${#array[@]}.
echo ${#mi_array[@]}  # Imprime el número de elementos en el arreglo
```

Ejemplo de uso de un array:

```sh
#!/bin/bash

# Definir el arreglo
frutas=("manzana" "naranja" "plátano")

# Acceder a los elementos
echo "Primera fruta: ${frutas[0]}"
echo "Todas las frutas: ${frutas[@]}"

# Añadir una fruta
frutas[3]="uva"

# Mostrar el tamaño del arreglo
echo "Número de frutas: ${#frutas[@]}"
```

---------------------

</details>

## 🟠 11. Parámetros

¿Pueden definirse funciones dentro de un script? ¿Cómo? ¿Cómo se maneja el pasaje de parámetros de una función a la otra?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

En Shell Script se pueden definir funciones dentro de un script. Las funciones permiten encapsular bloques de código reutilizables y organizan mejor el flujo del script. Además, se pueden pasar parámetros a las funciones de manera similar a cómo se pasan argumentos a un script.

1. Definir una Función

```sh
nombre_funcion() {
    # Bloque de código de la función
}

# Como una variante válida:
function nombre_funcion {
    # Bloque de código de la función
}
```

---------------------

2. Llamar a una Función: se puede llamar simplemente usando su nombre:

```sh
nombre_funcion
```

---------------------

3. Pasar Parámetros a una Función: los parámetros se pasan a las funciones de la misma manera que los argumentos de un script. Los valores que se pasan a la función se acceden mediante variables posicionales dentro de la función ($1, $2, ..., $n).

```sh
$1: Primer parámetro
$2: Segundo parámetro
$@ o $*: Todos los parámetros
```

```sh
#!/bin/bash

# Ejemplo de función con parámetros:
mi_funcion() {
    echo "El primer parámetro es: $1"
    echo "El segundo parámetro es: $2"
    echo "Todos los parámetros son: $@"
}

# Llamada a la función con dos parámetros
mi_funcion "Hola" "Mundo"


# Salida:
# -- El primer parámetro es: Hola
# -- El segundo parámetro es: Mundo
# -- Todos los parámetros son: Hola Mundo
```

---------------------

4. Retornar Valores desde una Función: en bash, las funciones no pueden retornar directamente valores como en otros lenguajes de programación. Sin embargo, se puede usar la sentencia return para devolver un código de estado (generalmente entre 0 y 255). Si necesitas devolver un valor complejo, puedes usar variables globales, modificar variables por referencia o imprimir el resultado y capturarlo con command substitution (sustitución de comandos).

```sh
#!/bin/bash

#Ejemplo con return:
mi_funcion() {
    if [ $1 -gt 10 ]; then
        return 0  # Éxito
    else
        return 1  # Error
    fi
}

mi_funcion 15
echo "Código de retorno: $?"  # Captura el código de retorno
```

```sh
#!/bin/bash

# Ejemplo con command substitution para devolver un valor:
sumar() {
    local suma=$(( $1 + $2 ))
    echo $suma  # Imprimir el resultado
}

resultado=$(sumar 5 10)  # Captura el resultado con command substitution
echo "La suma es: $resultado"
```

---------------------

5. Variables Globales y Locales en Funciones: en Shell Script, todas las variables son globales por defecto, lo que significa que cualquier variable definida en una función estará disponible fuera de ella, a menos que se defina como local usando el comando local.

```sh
#!/bin/bash

# Ejemplo de uso de local:
mi_funcion() {
    local variable_local="Esto es local"
    variable_global="Esto es global"
}

mi_funcion
echo $variable_global  # Esto imprime "Esto es global"
echo $variable_local   # Esto no imprimirá nada porque es local a la función
```

---------------------

6. Pasaje de Parámetros de una Función a Otra: una función puede llamar a otra función y pasarle parámetros de la misma forma que un script pasaría argumentos a una función. Los parámetros se transfieren de la misma manera mediante las variables posicionales.

```sh
#!/bin/bash

# Ejemplo de funciones que se llaman entre sí:
funcion_a() {
    echo "Función A, parámetro recibido: $1"
    funcion_b "Mensaje desde función A"
}

funcion_b() {
    echo "Función B, parámetro recibido: $1"
}

# Llamada a la función A
funcion_a "Hola"

# Salida:
Función A, parámetro recibido: Hola
Función B, parámetro recibido: Mensaje desde función A
```

---------------------

</details>