# 2. Scripts con Bash y Python
En este ejercicio he creado tres scripts distintos, y he realizado esos scripts en Bash scripting y en Python.

### Script 1. Crear puertos de escucha en Apache2.

La función del primer script es simple; mediante su ejecución vamos a insertar por teclado nuevos puertos de escucha en nuestro servidor Apache2, modificando el archivo *ports.conf*.

En el caso de que el puerto ya se encuentre a la escucha; este no se añadirá.

---
### Script 2. Crear nuevos nombres de dominio locales en Linux.
En este segundo script insertaremos una IP y un nombre de dominio para crear nuevos dominios DNS locales.

Por ejemplo, si insertamos en el archivo */etc/hosts* la IP *127.0.0.254*; y le establecemos el nombre *hostlocal*. Cuando en nuestro navegador escribamos *hostlocal*, nos dirigiremos a la ip *127.0.0.254*.

Es una manera más rápida y más fácil de recordar para nuestras IP.

---
### Script 3. Crear archivos HTML básicos.
Por último, en este script introduciremos como teclado los siguientes datos:
* Nombre del archivo.
* Título del archivo HTML.
* Texto para insertar como párrafo.

Y una vez insertados los datos, se creará un archivo HTML con los datos introducidos.

---

### Enlaces a todos los scripts:
* Script para crear puertos de escucha en Apache2.
	* [Bash](/ejercicios/ejercicio2/Scripts/addPort.sh).
	* [Python](/ejercicios/ejercicio2/Scripts/addPort.py).
* Script para crear nuevos nombres de dominio locales en Linux (archivo "Hosts").
	* [Bash](/ejercicios/ejercicio2/Scripts/addHosts.sh).
	* [Python](/ejercicios/ejercicio2/Scripts/addHosts.py).
* Script para crear archivos HTML básicos.
	* [Bash](/ejercicios/ejercicio2/Scripts/crearHTML.sh).
	* [Python](/ejercicios/ejercicio2/Scripts/crearHTML.py).
