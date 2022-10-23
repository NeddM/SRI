import os, sys, time

def main():
    os.system("clear")
    nombre = input("Introduce un nombre para el archivo: ")
    nombre = nombre + ".html"
    rutaArchivo = "~/" + nombre
    titulo = input("Introduce el título del HTML: ")
    texto = input("Introduce el texto para el HTML: ")

    informacionHTML = f"""
    <!DOCTYPE html>
    <html lang=\"es\">
    <head>
    \t<meta charset=\"UTF-8\">
    \t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
    \t<meta name=\"viewport\" content=\"wifth=device-width, initial-scale=1.0\">
    \t<title>{titulo}</title>
    </head>
    <body>
    \t<p>{texto}</p>
    </body>
    </html>
    """

    os.system("clear")

    if os.path.isfile(nombre):
        print('El archivo ' +  nombre + " ya existe.")
        confirmacion = input("¿Desea sobreescribirlo? Y/N: ")

        if confirmacion == "y" or confirmacion == "Y":
            archivo = open(nombre, "w")
            archivo.write(informacionHTML)
            os.system("clear")
            print("Creando " + nombre + "...")
            time.sleep(1)
            os.system("clear")
            print("¡" + nombre + " creado!")
            archivo.close()
        else:
            os.system("clear")
            print("Saliendo del programa...")
            time.sleep(1)
            os.system("clear")
            sys.exit()
    else:
        archivo = open(nombre, "w")
        archivo.write(informacionHTML)
        os.system("clear")
        print("Creando " + nombre + "...")
        time.sleep(1)
        os.system("clear")
        print("¡" + nombre + " creado!")
        archivo.close()

if __name__ == "__main__":
    main()