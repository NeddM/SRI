#!/bin/bash

archivoPorts="/etc/apache2/ports.conf"

echo "Introduce el puerto para añadir a la escucha: "
read port
stringPort="Listen $port"

	if grep -Fxq "$stringPort" "$archivoPorts"
	then
		echo "Ese puerto ya está en escucha."
	else
		echo "$stringPort" >> "$archivoPorts"
		echo "Se ha añadido el puerto $port a la escucha."
	fi
