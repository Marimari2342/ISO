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

## 🟠 12. Evaluación de expresiones:

(a) Realizar un script que le solicite al usuario 2 números, los lea de la entrada Standard e imprima la multiplicación, suma, resta y cual es el mayor de los números leídos.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Voy a realizar un script que solicite al usuario dos numeros, e imprima multiplicación,
# suma, resta y el mayor de los números leidos

echo "ingrese dos numeros"
read num1 num2

# multiplicacion
mult=$(expr $num1 \* $num2)
echo "multiplicacion => $mult"

# suma
suma=$(expr $num1 + $num2)
echo "suma => $suma"

# resta
resta=$(expr $num1 - $num2)
echo "resta => $resta"

# mayor de ambos
if [$num1 -gt $num2];then
  echo "Mayor numero => $num1"
else
  echo "Mayor numero => $num2"
fi
```
---------------------

</details>

(b) Modificar el script creado en el inciso anterior para que los números sean recibidos como parámetros. El script debe controlar que los dos parámetros sean enviados.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Verificar que se hayan pasado dos parámetros
if [ $# -ne 2 ]; then # si el total de parámetros pasados ($#) no es igual (-ne) a 2
    echo "Error: Debes ingresar exactamente 2 números como parámetros."
    echo "Uso: $0 num1 num2" # esto es para explicar como usar el script (info más abajo)
    exit 1 # error general
fi

# Leer los números desde los parámetros
num1=$1
num2=$2

# multiplicacion
mult=$(expr $num1 \* $num2)
echo "multiplicacion => $mult"

# suma
suma=$(expr $num1 + $num2)
echo "suma => $suma"

# resta
resta=$(expr $num1 - $num2)
echo "resta => $resta"

# mayor de ambos
if [$num1 -gt $num2];then
  echo "Mayor numero => $num1"
else
  echo "Mayor numero => $num2"
fi
```

La linea:

```sh
echo "Uso: $0 num1 num2"
```

Le explica al usuario como usar el script. El <code>$0</code> nos indica el nombre del script. Entonces si por ejemplo, guardo el script como <code>punto12.sh</code> y lo ejecuto mal (por ejemplo, pasandole un sólo parámetro) el script me va a mostrar el siguiente mensaje:

```sh
Error: Debes ingresar exactamente 2 números como parámetros.
Uso: ./punto12.sh num1 num2
```

---------------------

</details>

(c) Realizar una calculadora que ejecute las 4 operaciones básicas: +, - ,*, /. Esta calculadora debe funcionar recibiendo la operación y los números como parámetros

<details><summary> <code> Respuesta 🖱 </code></summary><br>


```sh
#!/bin/bash

# Verificar que se hayan pasado todos los parámetros
if [ $# -ne 3 ]; then # si el total de parámetros pasados ($#) no es igual (-ne) a 3
    echo "Error: Debes ingresar exactamente 2 números y la operación a realizar como parámetros."
    echo "Uso: $0 num1 operacion num2" # esto es para explicar como usar el script (info más abajo)
    exit 1 # error general
fi

# Leer los números desde los parámetros
num1=$1
operacion=$2
num2=$3

case $operacion in
    +)
        # suma
        suma=$(expr $num1 + $num2)
        echo "$num1 $operacion $num2 => $suma"
        ;;
    -)
        # resta
        resta=$(expr $num1 - $num2)
        echo "$num1 $operacion $num2 => $resta"
        ;;
    \*)
        # multiplicacion
        mult=$(expr $num1 \* $num2)
        echo "$num1 $operacion $num2 => $mult"
        ;;
    /)
        # division
        if ($num2  -eq 0);then
          echo "error => el denominador no puede ser 0"
          exit 1
        else
          division=$(expr $num1 / $num2)
          echo "$num1 $operacion $num2 => $division"
        fi
        ;;
    *)
        # error por ingresar op inválida
        echo "La operación no es válida, la calculadora sólo realiza: +,-,*,/"
        exit 1
        ;;
esac
```

---------------------

</details>

## 🟠 13. Uso de las estructuras de control:

(a) Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# El script a continuación va a mostrar en pantalla los números del 1 al 100 y sus cuadrados
for i in {1..100}; do
  cuadrado=$(($i \* $i))
  echo "Numero: $i, --> Cuadrado del numero: $cuadrado"
done
```

---------------------

</details>

(b) Crear un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta. Según la opción elegida se le debe mostrar: 

* Listar: lista el contenido del directoria actual.

* DondeEstoy: muestra el directorio donde me encuentro ubicado.

* QuienEsta: muestra los usuarios conectados al sistema.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# El script debe mostrar 3 opciones de usuario
echo "ingrese numero de opcion de usuario:"
echo "1 --> Listar: lista el contenido del directoria actual."
echo "2 --> DondeEstoy: muestra el directorio donde me encuentro ubicado."
echo "3 --> QuienEsta: muestra los usuarios conectados al sistema."
read opcion

case $opcion in 
  # Listar
  1)
    ls
    ;; 
  # DondeEstoy
  2)
    pwd
    ;; 
  # QuienEsta
  3)
    whoami
    ;; 
  *)
    echo "opcion incorrecta."
    exit 1
    ;;
esac
```

---------------------

</details>

(c) Crear un script que reciba como parámetro el nombre de un archivo e informe si el mismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# me aseguro que se recibió un sólo parametro
if [ $# -ne 1 ]; then # si el total de parámetros pasados ($#) no es igual (-ne) a 1
    echo "Error: Debes ingresar exactamente un sólo nombre de archivo."
    echo "Uso: $0 nombre_de_archivo_o_directorio" # esto es para explicar como usar el script
    exit 1 # error general
fi

nombre=$1

if [ -f "$nombre" ];then
  echo "Se encontró un archivo con ese nombre"
elif [ -d "$nombre" ]; then
  echo "Se encontró un directorio con ese nombre"
else
  mkdir $nombre
  echo "Se generó un nuevo directorio llamado $nombre"
fi
```

---------------------

</details>

## 🟠 14. Renombrando Archivos: 

Haga un script que renombre solo archivos de un directorio pasado como parametro agregandole una CADENA, contemplando las opciones:

* “-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del archivo.

* “-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre del archivo.

```sh
# Ejemplo:
# Si tengo los siguientes archivos: /tmp/a /tmp/b
# Al ejecutar: ./renombra /tmp/ -a EJ
# Obtendré como resultado: /tmp/aEJ /tmp/bEJ
# Y si ejecuto: ./renombra /tmp/ -b EJ
# El resultado será: /tmp/EJa /tmp/EJb
```
<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Me aseguro que pase 3 parámetros (el directorio, la opcion [-a o -b] y la cadena a concatenar)
if [ $# -ne 3 ];then
  echo "Error: Debes ingresar exactamente tres parámetros."
  echo "Uso: $0 /directorio/ opcion(-a o b) cadena" # esto es para explicar como usar el script
  exit 1 # error general
fi

directorio=$1
opcion=$2
cadena=$3

if [ -d $directorio ]; then
  case $opcion in
    -a)
      # renombra el fichero concatenando CADENA al final del nombre del archivo.
      for file in "$directorio"*;then
        if [ -f "$file" ]; then
          nombre_archivo=$(basename "$file")  # Extraer solo el nombre del archivo, sin la ruta
          nuevo_nombre="${nombre_archivo}${cadena}"  # Concatenar la cadena al final del nombre
          mv -v "$file" "$directorio$nuevo_nombre"  # Renombrar el archivo
        fi
      done
      ;;
    -b)
      # renombra el fichero concatenando CADENA al inicio del nombre del archivo.
      for file in "$directorio"*;then
        if [ -f "$file" ]; then # si es un archivo
          nombre_archivo=$(basename "$file")  # Extraer solo el nombre del archivo, sin la ruta
          nuevo_nombre="${cadena}${nombre_archivo}"  # Concatenar la cadena al inicio del nombre
          mv -v "$file" "$directorio$nuevo_nombre"  # Renombrar el archivo
        fi
      done
      ;;
    *)
      echo "Error, opcion ingresada inválida."
      exit 1
  esac
else
  echo "Error, no se envió un directorio como parámetro"
fi
exit 0
```

---------------------

</details>

## 🟠 15. Comando cut. 

El comando cut nos permite procesar la líneas de la entrada que reciba (archivo, entrada estándar, resultado de otro comando, etc) y cortar columnas o campos, siendo posible indicar cual es el delimitador de las mismas. Investigue los parámetros que puede recibir este comando y cite ejemplos de uso.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

El comando cut se utiliza para extraer secciones de cada línea de un archivo o entrada estándar. Generalmente, se usa para cortar columnas o campos en función de un delimitador o para seleccionar partes específicas de texto.

Parámetros comunes del comando cut:

* -b: Selecciona un rango de bytes (bytes por posición en la línea, no caracteres en términos de codificación).

```sh
echo "123456789" | cut -b 1-3

# Salida:
123
```
* -c: Selecciona caracteres específicos o rangos de caracteres en cada línea.

```sh
echo "123456789" | cut -c 4-6

# Salida:
456
```
* -d: Define el delimitador cuando se trabajan con campos (usado junto con -f).

```sh
echo "uno:dos:tres" | cut -d ':' -f 2

# Salida:
dos
```

* -f: Selecciona los campos basados en un delimitador (se usa con -d para especificar el delimitador). Cada campo es una parte de la línea separada por el delimitador.

```sh
echo "nombre,apellido,edad" | cut -d ',' -f 1,3

# Salida:
nombre,edad
```
* --complement: Selecciona todos los campos excepto los especificados. Funciona con las opciones -b, -c y -f.

```sh
echo "nombre,apellido,edad" | cut -d ',' -f 2 --complement

# Salida:
nombre,edad
```

* -s: Suprime las líneas que no contienen el delimitador especificado. Solo muestra las líneas que contienen el delimitador.

```sh
echo "nombre apellido" | cut -d ',' -f 1 -s

# Salida: no imprime nada, ya que no hay un delimitador.
```

* --output-delimiter: Cambia el delimitador de salida al especificado.

```sh
echo "nombre,apellido,edad" | cut -d ',' -f 1,2 --output-delimiter="|"

# Salida:
nombre|apellido
```

---------------------

</details>

## 🟠 16. 

Realizar un script que reciba como parámetro una extensión y haga un reporte con 2 columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión. Se debe guardar el resultado en un archivo llamado reporte.txt

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# verifico que el parámetro me lo pasaron bien 
if [ $# -ne 1 ]; then
  echo "Error, sólo se debe pasar 1 parámetro"
  echo "Uso: $0 extension"
  exit 1
fi

extension=$1 # extension pasada como parámetro
reporte="reporte.txt" # nombre del archivo en donde guardo el resultado

# Obtener la lista de usuarios en el sistema
# (Uso cut y obtengo la primera columna del archivo /etc/passwd, que contiene los nombres de los usuarios.)
usuarios=$(cut -d: -f1 /etc/passwd) 


# Recorrer cada usuario
for usuario in $usuarios; do
    # Contar los archivos con la extensión dada en el directorio home del usuario
    cantidad=$(find "/home/$usuario" -maxdepth 1 -type f -name "*.$extension" 2>/dev/null | wc -l)

    # Agregar al reporte si el usuario tiene archivos con esa extensión
    if [ "$cantidad" -gt 0 ]; then
        echo "$usuario $cantidad" >> "$reporte"
    fi
done

# Mostrar el reporte generado
echo "Reporte generado en $reporte:"
cat "$reporte"
```

---------------------

</details>


## 🟠 17. 

Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de eliminar la letra a (mayúscula o minúscula). Ejemplo, directorio actual:

```sh
# IsO
# pepE
# Maria

# Si ejecuto: ./ejercicio17

# Obtendré como resultado:
# iSo
# PEPe
# mRI
```

Ayuda: Investigar el comando tr

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Script que imprime en pantalla los nombres de los archivos que se encuentran en el directorio
# actual, intercalando mayúsculas y minúsculas, y eliminando la letra a (a,A)

for file in *; do
  if [ -f "$file" ]
    nuevo_nombre=$(echo "$file" | tr 'A-Za-z' 'a-zA-Z' | tr -d 'aA')
    echo "$nuevo_nombre" # Solo lo cambio al imprimir, no me dice que toque el nombre del archivo
  fi
done
```

---------------------

El comando <code>tr</code> es una herramienta que permite traducir o eliminar caracteres en un flujo de texto. Se utiliza para realizar transformaciones básicas de texto, como cambiar mayúsculas a minúsculas, eliminar caracteres repetidos o reemplazar ciertos caracteres por otros.

```sh
# Sintaxis básica
tr [opciones] SET1 [SET2]

# SET1: Especifica los caracteres que se quieren transformar.
# SET2: Especifica los caracteres por los que se quieren reemplazar los de SET1.
```

Las opciones pueden modificar el comportamiento de tr. Ejemplos de uso del comando tr

1. **Cambiar mayúsculas a minúsculas**

```sh
echo "HELLO WORLD" | tr 'A-Z' 'a-z'
# Resultado: hello world
```

2. **Cambiar minúsculas a mayúsculas**

```sh
echo "hello world" | tr 'a-z' 'A-Z'
# Resultado: HELLO WORLD
```

3. **Eliminar ciertos caracteres**: puedes eliminar caracteres de un texto usando la opción -d.

```sh
echo "hello 123 world" | tr -d '0-9'
# Resultado: hello world
```

4. **Reemplazar un carácter por otro**

```sh
echo "hello world" | tr ' ' '-'
# Resultado: hello-world
```

5. **Comprimir caracteres repetidos**: la opción -s (squeeze) permite comprimir caracteres repetidos consecutivos en uno solo.

```sh
echo "hellooo    woorlldd" | tr -s 'o d'
# Resultado: helo world
```

---------------------

</details>

## 🟠 18. 

Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema (el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee, el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Verifica que se haya pasado exactamente un parámetro (el nombre del usuario)
if [ $# -ne 1 ]; then
  echo "Error: Debes ingresar el nombre del usuario."
  echo "Uso: $0 nombre_usuario"
  exit 1
fi

# Asigno el nombre de usuario a la variable $usuario
usuario=$1

# Bucle que verifica cada 10 segundos si el usuario está logueado
while true; do # bucle infinito hasta que el usuario se loguee
  # Comprueba si el usuario está logueado
  if who | grep -w "$usuario" > /dev/null; then   # mirar mas abajo
    echo "Usuario $usuario logueado en el sistema."
    exit 0
  fi
  # Espera 10 segundos antes de volver a comprobar
  sleep 10
done

# who muestra los usuarios loguados en el sistema
# grep -w es para buscar el nombre exacto de usuario

# porque uso /dev/null --> grep normalmente imprimirá en pantalla cualquier línea que coincida 
# con el usuario. Pero en este caso, no necesitamos mostrar esa información, solo queremos saber 
# si el usuario está o no logueado. Al redirigir la salida a /dev/null, evitas que el nombre del 
# usuario aparezca en la terminal cada vez que se verifica.  

# basicamene sería, si dentro de los usuarios conectados se encuentra $usuario entonces entro al if
```

---------------------

</details>

## 🟠 20. 

Realice un script que simule el comportamiento de una estructura de PILA e implemente las siguientes funciones aplicables sobre una estructura global definida en el script: 

* push: Recibe un parámetro y lo agrega en la pila 

* pop: Saca un elemento de la pila 

* length: Devuelve la longitud de la pila 

* print: Imprime todos elementos de la pila

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash
#Script que simula el comportamiento de una pila

# defino la estructura global pila como un array
pila=()

# funcion --> push: Recibe un parámetro y lo agrega en la pila 
push(){
  local elemento=$1 # guardo el parametro en la variable local $elemento
  pila+=($elemento) # agrego $elemento a la pila
  echo "Elemento $elemento agregado a la pila"
}

# funcion --> pop: Saca un elemento de la pila 
pop(){
  if [ ${#pila[*]} -eq 0 ];then # si todos los elementos de mi pila = 0
    echo "Error: pila vacía."
  else
    local elemento=${pila[-1]} # accedo al último elemento y lo guardo en $elemento
    unset pila[-1] # borro el último elemento de la pila
    echo "Elemento $elemento eliminado de la pila"
  fi
}

# length: Devuelve la longitud de la pila 
lenght(){
  echo "La longitud de la pila es ${#pila[*]}" # longitud de la pila dada por ${#pila[*]} 
}

# print: Imprime todos elementos de la pila
print(){
  if [ ${#pila[*]} -eq 0 ];then
    echo "Pila vacía."
  else
    echo "Elementos de la pila:"
     # esto lo hago así para imprimir en orden, puesto que es una pila, imprimo del ultimo 
     # elemento del arreglo al primero (ponele si mi array es {1 2 3 4 5} imprime 5 4 3 2 1)
    for (( i=${#pila[*]}-1; i>=0; i-- )); do
      echo "${pila[$i]}"
    done
  fi
}

# Menú para interactuar con la pila
while true; do
    echo "Elige una opción de la Pila:"
    echo "1. push (agregar a la pila)"
    echo "2. pop (eliminar de la pila)"
    echo "3. length (longitud de la pila)"
    echo "4. print (imprimir pila)"
    echo "5. salir"
    read opcion

    case $opcion in
        1)
            echo "Ingresa el elemento a agregar: "
            read elemento
            push "$elemento"
            ;;
        2)
            pop
            ;;
        3)
            length
            ;;
        4)
            print
            ;;
        5)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opción inválida. Inténtalo de nuevo."
            ;;
    esac
done
```

---------------------

</details>

## 🟠 22. 

Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad de elementos del arreglo puede variar). Implemente la función productoria dentro de este script, cuya tarea sea multiplicar todos los números del arreglo.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Productoria

# Declaro mi arreglo
num=(10 3 5 7 9 3 5 4)

# Funcion productoria

productoria(){
  local prod=1
  for i in "${num[*]}";do
    prod=$((prod \* i))
  done
  echo "El resultado es: $prod"
}

# Llamo a la funcion
productoria
```

---------------------

</details>

## 🟠 23. 

Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla sólo los números pares y que cuente sólo los números impares y los informe en pantalla al finalizar el recorrido.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Quiero recorrer un arreglo de números, imprimir los números pares y contabilizar los impares

# Declaro mi arreglo
arr=(1 3 4 6 8 33 65 78 4 3 6)

recorrer(){
  cont=0
  for i in "${arr[*]}";do
    if (( $i % 2 == 0 ));then
      echo $i
    else 
      (( cont++ ))
  done
  echo "Cantidad de numeros impares: $cont"
}

# Llamo a la funcion
recorrer
```

---------------------

</details>

## 🟠 24. 

Dada la definición de 2 vectores del mismo tamaño y cuyas longitudes no se conocen. Complete el script de manera tal de implementar la suma elemento a elemento entre ambos vectores y que la misma sea impresa en pantalla de la siguiente manera:

~~~
La suma de los elementos de la posición 0 de los vectores es 6
La suma de los elementos de la posición 1 de los vectores es 178
...
La suma de los elementos de la posición 4 de los vectores es 10
~~~

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Voy a sumar elemento a elemento de dos vectores e informar en pantalla (v1[1]+v2[1]... y así)

# Declaracion de vectores
v1=(1 2 3 5 6 8)
v2=(5 6 8 1 5 4)

# Funcion que hace lo que quiero
informar(){
  i=0
  while [ $i -lt ${#v1[*]} ];do
    num=$((v1[i] + v2[i]))
    echo "La suma de los elementos de la posición $i de los vectores es $num"
    ((i++))
  done
}

# llamo a la funcion
informar
```

---------------------

</details>

## 🟠 25. 

Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro: 

“-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso contrario, un mensaje de error.

“-l”: Devuelve la longitud del arreglo

“-i”: Imprime todos los elementos del arreglo en pantalla

<details><summary> <code> Respuesta 🖱 </code></summary><br>

```sh
#!/bin/bash

# Verifico cantidad de parámetros pasados: 0 , 1 o 2 parámetros es válido. Más parámetros Error
if [ $# -gt 2 ]; then
  echo "Cantidad de parámetros pasados mayor a la permitida"
  echo "Posibles usos"
  echo " --> $0 (agrego todos los nombres de usuarios del grupo 'users')"
  echo " --> $0 -b n (retorna elemento en posición n del arreglo)"
  echo " --> $0 -l (devuelve longitud del arreglo)"
  echo " --> $0 -i (imprime elementos del arreglo)"
  exit 1
fi

# Función para agregar usuarios del grupo 'users' al arreglo
agregar(){
  arreglo=( $(cat /etc/group | grep users | cut -d: -f4| tr ',' ' '))
}

# Si se pasa un solo parámetro
if [ $# -eq 1 ]; then
  opcion=$1
  case $opcion in
    "-l")
      agregar
      echo "Longitud del arreglo: ${#arreglo[*]}"
      ;;
    "-i")
      agregar
      for i in "${arreglo[*]}"; do
        echo "$i"
      done
      ;;
    *)
      echo "Error, opción incorrecta"
      exit 1
      ;;
  esac

# Si se pasan dos parámetros
elif [ $# -eq 2 ]; then
  opcion=$1
  posicion=$2
  if [ "$opcion" = "-b" ]; then
    agregar
    if [ "$posicion" -ge 0 ] && [ "$posicion" -lt ${#arreglo[*]} ]; then
      echo "Elemento en la posición $posicion: ${arreglo[$posicion]}"
    else
      echo "Error, posición $posicion inválida"
      exit 1
    fi
  else
    echo "Error, opción incorrecta"
    exit 1
  fi
else
  # Si no se pasan parámetros, simplemente agrega los usuarios
  agregar
fi
```

---------------------

</details>