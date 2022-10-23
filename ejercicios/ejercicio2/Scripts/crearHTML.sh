#!/bin/bash

# Crea un script que nos permita crer una página web con título, una cabecera y un mensaje.

directorioArchivo="$HOME/Escritorio/HTML/"

RecogidaDatos(){
	clear
	echo 'AVISO: La ruta se creará en la carpeta "HTML" en el escritorio.'
	# echo "Introduce la ruta donde se guardará el archivo: "
	# read directorioArchivo
	echo "Introduce el nombre de tu archivo HTML: "
	read nombreArchivo
	echo "Introduce un título: "
	read tituloArchivo
	echo "Introduce un mensaje para el archivo: "
	read mensajeArchivo
}

ComprobarDatos(){
	clear

	echo "- - - - - - - - - - - - - - - - - - - "
	echo "Nombre del archivo: $nombreArchivo"
	echo "Ruta del archivo: $directorioArchivo$nombreArchivo.html"
	echo "Título del archivo: $tituloArchivo"
	echo "Mensaje del archivo: $mensajeArchivo"
	echo "- - - - - - - - - - - - - - - - - - - "

	echo "¿Son correctos los datos? Y(Sí) / N(No) / S(Salir)"
	read confirmacionDatos

	if [ $confirmacionDatos = "Y" ] || [ $confirmacionDatos = "y" ] ; then
		rutaArchivo="$directorioArchivo$nombreArchivo.html"
	elif [ $confirmacionDatos = "N" ] || [ $confirmacionDatos = "n" ] ; then
		clear
		echo "Reiniciando..."
		sleep 1
		FuncionPrincipal
	else
		clear
		echo "Saliendo del programa..."
		sleep 1
		clear
		exit
	fi
}

ComprobarSiExiste(){
	clear
	if [ -f "$rutaArchivo" ] ; then
		echo "¡Ese archivo ya existe!"
		sleep 2
		FuncionPrincipal
	fi
}

CrearDirectorioHTML(){
	clear
	if [ ! -d $directorioArchivo ] ; then
		mkdir $directorioArchivo
	fi
}

CrearHTML(){
	clear
	touch $rutaArchivo
}

CrearContenido(){
	clear
	echo "<!DOCTYPE html>" >> "$rutaArchivo"
	echo "<html lang=\"es\"" >> "$rutaArchivo"
	echo "<head>" >> "$rutaArchivo"
	echo -e "\t<meta charset=\"UTF-8\">" >> "$rutaArchivo"
	echo -e "\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">" >> "$rutaArchivo"
	echo -e "\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> "$rutaArchivo"
	echo -e "\t<title>$tituloArchivo</title>" >> "$rutaArchivo"
	echo "</head>" >> "$rutaArchivo"
	echo "<body>" >> "$rutaArchivo"
	echo -e "\t<p>$mensajeArchivo</p>" >> "$rutaArchivo"
	echo "</body>" >> "$rutaArchivo"
	echo "</html>" >> "$rutaArchivo"
}

MensajeExito(){
	clear
	echo "¡El archivo se ha creado exitosamente!"
	sleep 3
	clear
	echo "Cerrando el programa..."
	clear
	exit
}


FuncionPrincipal(){
	RecogidaDatos
	ComprobarDatos
	ComprobarSiExiste
	CrearDirectorioHTML
	CrearHTML
	CrearContenido
	MensajeExito
}

FuncionPrincipal
