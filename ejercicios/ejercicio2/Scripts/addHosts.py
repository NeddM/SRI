import sys, os, time

def addLinea(lineaNueva, rutaArchivo):
    os.system('clear')

    appendLinea = open(rutaArchivo, "a")
    appendLinea.write(lineaNueva + "\n")
    print("Se han añadido los nuevos datos")
    print(lineaNueva)
    time.sleep(2)
    os.system('clear')

def main():
    os.system('clear')

    rutaArchivo = "/etc/hosts"
    ip = input("Introduce la ip que quieres añadir: ")
    domainName = input("Introduce el nombre para la IP anterior: ")
    lineaNueva = ip + " " + domainName
    print(lineaNueva)

    with open(rutaArchivo) as archivo:
        os.system('clear')
        if lineaNueva in archivo.readline():
            print("La linea que intenta añadir ya se encuentra en el archivo")
            print(lineaNueva)
            time.sleep(2)
            os.system('clear')
        else:
            addLinea(lineaNueva, rutaArchivo)

if __name__ == "__main__":
    main()