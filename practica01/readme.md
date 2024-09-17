# Introducción a los Sistemas Operativos - Practica 1

## 🔵 1. Características de GNU/Linux:

(a) Mencione y explique las características más relevantes de GNU/Linux.

(b) Mencione otros sistemas operativos y compárelos con GNU/Linux en cuanto a los
puntos mencionados en el inciso a.

(c) ¿Qué es GNU?

(d) Indique una breve historia sobre la evolución del proyecto GNU

(e) Explique qué es la multitarea, e indique si GNU/Linux hace uso de ella.

(f) ¿Qué es POSIX?

<details><summary> <code> Respuesta 🖱 </code></summary><br>

Un SO es un programa que actua como intermediario entre el usuario y el hardware y es parte esencial de cualquier sistema de computo. El proposito del SO es crear un entorno comodo y eficiente para la ejecucion de programas, garantizando el correcto funcionamiento del sistema. Las principales funciones de todo SO son: administrar la memoria, administrar la CPU y administrar los dispositivos.

El GNU/Linux es un SO tipo Unix (Unix like), pero libre, el mismo esta diseñado por miles de programadores, es gratuito y de libre distribucion (se puede bajar desde la Web, CD, etc), tiene diversas distribuciones (customizaciones) y es de codigo abierto, es decir, que podemos ver como esta hecho. Esto nos permite estudiarlo, personalizarlo, auditarlo, etc.

**(a)** Características más relevantes de GNU/Linux:

* Código Abierto y Libre: GNU/Linux es un sistema operativo de código abierto, lo que significa que su código fuente está disponible públicamente para que cualquiera pueda verlo, modificarlo y distribuirlo. La ventaja de esto es que permite la personalización y adaptación del sistema a necesidades específicas, promueve la transparencia en el desarrollo del software y favorece la colaboración comunitaria.

* Multitarea: lo que permite ejecutar múltiples procesos al mismo tiempo. Esto mejora el rendimiento y la capacidad de respuesta del sistema, permitiendo a los usuarios realizar múltiples tareas simultáneamente sin interferir entre sí.

* Multiplataforma: GNU/Linux puede funcionar en una amplia variedad de hardware. Su capacidad para escalar desde sistemas pequeños a grandes lo hace adecuado para diferentes entornos, desde escritorios personales hasta centros de datos.

* Seguridad y Permisos: GNU/Linux implementa un robusto sistema de permisos y control de acceso que incluye características como el control de acceso basado en roles (RBAC) y capacidades avanzadas de gestión de usuarios. Esto mejora la seguridad al limitar el acceso a archivos y recursos del sistema. Las políticas de permisos estrictas ayudan a proteger el sistema contra accesos no autorizados y malware.

* Comunidad Activa y Soporte: GNU/Linux cuenta con una amplia comunidad de desarrolladores y usuarios que contribuyen al desarrollo del sistema y ofrecen soporte a través de foros, listas de correo y documentación. Proporciona acceso a una vasta cantidad de recursos y asistencia, lo que facilita la resolución de problemas y la obtención de soporte técnico.

* Compatibilidad y Software: GNU/Linux ofrece compatibilidad con una amplia gama de software, desde aplicaciones de línea de comandos hasta entornos de escritorio completos. Además, es compatible con muchos estándares abiertos y protocolos. Esto facilita la integración con diferentes herramientas y aplicaciones, y permite a los usuarios ejecutar una variedad de software en el sistema operativo.

**(c)** **GNU** es un acrónimo recursivo que significa "GNU's Not Unix" (**GNU** **N**o es **U**nix). Es un proyecto de software libre iniciado por Richard Stallman en 1983 con el objetivo de desarrollar un sistema operativo completo y libre que sea compatible con Unix.

GNU se refiere a 4 libertades principales de los usuarios del software:

* Libertad de usar el programa con cualquier proposito.

* Libertad de estudiar su funcionamiento.

* Libertad para distribuir sus copias.

* Libertad para mejorar los programas.

**(e)** Multitarea es una capacidad del sistema operativo que permite a una computadora ejecutar múltiples tareas o procesos de manera simultánea. En un contexto de sistemas operativos, la multitarea se refiere a la capacidad de un sistema para gestionar y coordinar varios procesos al mismo tiempo, ya sea que esos procesos se ejecuten en paralelo (simultáneamente) o de manera secuencial muy rápida, dando la impresión de que se están ejecutando al mismo tiempo.

GNU/Linux utiliza multitarea preventiva para gestionar la ejecución de procesos, asegurando una asignación justa y eficiente del tiempo de CPU. Esta capacidad permite que GNU/Linux maneje múltiples aplicaciones y tareas al mismo tiempo, mejorando el rendimiento y la capacidad de respuesta del sistema.

**(f)** **POSIX** (Portable Operating System Interface) es un conjunto de estándares definidos para mantener la compatibilidad y portabilidad entre sistemas operativos. Estos estándares están diseñados para permitir que el software escrito para un sistema POSIX pueda ser ejecutado en otros sistemas POSIX sin modificaciones significativas.

</details>

## 🔵 2. Distribuciones de GNU/Linux:

(a)¿Qué es una distribución de GNU/Linux? Nombre al menos 4 distribuciones de GNU / Linux y cite diferencias básicas entre ellas.

(b) ¿En qué se diferencia una distribución de otra?

(c) ¿Qué es Debian? Acceda al [sitio](https://www.debian.org/intro/about) e indique cuáles son los objetivos del proyecto y una breve cronología del mismo.

<details><summary> <code> Respuesta 🖱 </code></summary><br>

**(a)** Una distribución de **GNU/Linux** es un sistema operativo que utiliza el núcleo Linux junto con una variedad de software de libre y código abierto, además de herramientas y aplicaciones. Cada distribución combina el núcleo Linux con una selección particular de software y herramientas, ofreciendo diferentes enfoques y características según sus objetivos.

Distribuciones populares de GNU/Linux:

* **Ubuntu:**

Orientación: General, amigable para principiantes.

Entorno de escritorio: GNOME (anteriormente usaba Unity).

Gestor de paquetes: APT (Advanced Package Tool).

Ciclo de lanzamiento: Regular (LTS cada dos años).

* **Debian:**

Orientación: Estable, enfocado en la libertad del software y la estabilidad.

Entorno de escritorio: No se especifica un entorno por defecto, pero GNOME es el más común.

Gestor de paquetes: APT.

Ciclo de lanzamiento: Menos frecuente, con versiones estables que se liberan cuando están listas.

* **Fedora:**

Orientación: Innovadora, con tecnologías y software de vanguardia.

Entorno de escritorio: GNOME.

Gestor de paquetes: DNF (Dandified YUM).

Ciclo de lanzamiento: Regular, con nuevas versiones cada 6 meses.

* **Arch Linux:**

Orientación: Minimalista, para usuarios avanzados que desean controlar cada aspecto del sistema.

Entorno de escritorio: No incluye un entorno de escritorio por defecto; se instala manualmente.

Gestor de paquetes: Pacman.

Ciclo de lanzamiento: Rolling release (actualizaciones continuas sin versiones específicas).

**(b)** Las diferencias entre distribuciones de GNU/Linux pueden abarcar varios aspectos:

* Gestor de paquetes: Cada distribución utiliza un sistema diferente para la instalación y gestión de software. Por ejemplo, Debian y Ubuntu usan APT, mientras que Fedora usa DNF y Arch usa Pacman.

* Entorno de escritorio: Las distribuciones pueden incluir diferentes entornos de escritorio por defecto, como GNOME, KDE Plasma, XFCE, etc.

* Ciclo de lanzamiento: Algunas distribuciones, como Ubuntu LTS, siguen un ciclo de lanzamientos regulares con versiones de soporte a largo plazo, mientras que otras, como Arch Linux, utilizan un modelo de lanzamiento continuo (rolling release).

* Filosofía y objetivos: Cada distribución puede tener una orientación diferente, como ser amigable para principiantes (Ubuntu), ofrecer software más actualizado y experimental (Fedora), o proporcionar una base mínima para usuarios avanzados (Arch Linux).

* Compatibilidad y soporte de hardware: Algunas distribuciones están optimizadas para ciertos tipos de hardware o configuraciones, mientras que otras buscan ser lo más universales posible.

**(c)** Debian es una de las distribuciones de GNU/Linux más antiguas y respetadas. Es conocida por su estabilidad, robustez y enfoque en el software libre.

Objetivos del proyecto:

Estabilidad: Proporcionar una base sólida y confiable para los usuarios y desarrolladores.

Software libre: Promover el uso del software libre y mantener un compromiso con la libertad del software.

Universalidad: Ser una distribución universal que pueda funcionar en una variedad de arquitecturas y entornos.

</details>
