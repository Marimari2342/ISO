# Introducción a los Sistemas Operativos - Practica 2

## 🟣  1. Editor de textos:

(a) Nombre al menos 3 editores de texto que puede utilizar desde la línea de comandos.

(b) ¿En qué se diferencia un editor de texto de los comandos cat, more o less? Enumere los modos de operación que posee el editor de textos vi.

(c) Nombre los comandos más comunes que se le pueden enviar al editor de textos vi.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

(a) Tres editores de texto que se pueden utilizar desde la línea de comandos:

* Vim: Un editor de texto avanzado basado en vi, disponible en la mayoría de sistemas Unix y Linux.

* Nano: Un editor de texto simple y fácil de usar, comúnmente preinstalado en muchas distribuciones de Linux.

* Emacs: Un potente editor de texto que se puede usar desde la terminal, altamente personalizable.

---------------------

(b) Las diferencias entre un editor de texto y los comandos cat, more o less son que un editor de texto como vi o nano permite modificar archivos, realizar ediciones complejas, guardar los cambios y trabajar interactivamente con el contenido. Mientras que los comandos como cat, more y less son herramientas de visualización de archivos de texto; cat muestra el contenido de un archivo en la terminal, more y less permiten navegar el contenido de un archivo página por página, pero no permiten modificarlo.

Los modos de operación en vi son:

* Modo comando: Es el modo principal, donde se pueden ejecutar comandos como mover el cursor, borrar texto, copiar y pegar, etc.

* Modo inserción: Permite insertar texto en el archivo.

* Modo de línea: Permite ejecutar comandos relacionados con el archivo en su totalidad, como guardar (:w), salir (:q), o realizar búsquedas.

---------------------

(c) Comandos comunes en vi:

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
