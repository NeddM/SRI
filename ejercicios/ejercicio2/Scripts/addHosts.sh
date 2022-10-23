#!/bin/bash

# Crea un script que añada un nombre de dominio y una IP al fichero hosts.
# Debemos comprobar si no existe dicho dominio.

ficheroHosts="/etc/hosts"

comprobarExiste(){
	clear
	if grep -Fxq "$cadenaDatos" "$ficheroHosts" ; then
		echo "Ese dominio e IP ya existen."
		echo "Volviendo al menú de introducir los datos..."
		sleep 3
		preguntaDominioeIP
	else
		introducirDatos
	fi

}

introducirDatos(){
	clear
	echo "$cadenaDatos" >> $ficheroHosts
	echo "Se han añadido los datos exitosamente."
	sleep 3
	exit
}

preguntaDominioeIP(){
	clear

	echo "Introduce el nombre del dominio que quieres añadir: "
	read dominio

	echo "Introduce la IP para el dominio anterior: "
	read ip

	clear

	echo "Dominio: $dominio"
	echo "IP: $ip"


	echo "¿Son correctos estos datos? Y(Sí) / N(No) / S(Salir): "
	read confirmacion

	if [ $confirmacion == "N" ] || [ $confirmacion == "n" ] ; then
		preguntaDominioeIP
	elif [ $confirmacion == "Y" ] || [ $confirmacion == "y" ] ; then
		cadenaDatos="$ip	$dominio"
		comprobarExiste
	elif [ $confirmacion == "S" ] || [ $confirmacion == "s" ] ; then
		echo "Saliendo del programa..."
		sleep 3
		clear
		exit
	else
		echo "Ingresa una respuesta válida"
		sleep 3
		preguntaDominioeIP
	fi
}

preguntaDominioeIP
