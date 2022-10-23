# Nedd Chairi Muñoz

import sys, os, time

os.system('clear')

try:
    directorioPortsLectura = open('/etc/apache2/ports.conf', 'r')
except IOError as e:
    print(" - ERROR - ")
    print("No se ha encontrado el archivo " + directorioPorts)

puerto = input('Introduce el puerto de escucha: ')
lineaListen = "Listen " + str(puerto)

if lineaListen in directorioPortsLectura:
    print('El puerto ' + lineaListen + ' ya está en escucha.')
    directorioPortsLectura.close()
else:
    try:
        directorioPortsEscritura = open('/etc/apache2/ports.conf', 'a')
        directorioPortsEscritura.write("\n" + lineaListen + "\n") 
        directorioPortsEscritura.close()
        os.system('clear')
        print("Se ha añadido el puerto " + puerto + " al archivo ports.")
        time.sleep(2)
        os.system('clear')
       
    except IOError as e:
        print("No se ha podido añadir el puerto " + puerto + ' en el archivo \"ports.conf\"')

