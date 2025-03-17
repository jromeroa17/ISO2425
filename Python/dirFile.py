#!/usr/bin/python
#Script de entrega dirFile
#Autor: Javier Romero
#Fecha:17-03-2025
import os
import subprocess
import shutil


def separa_rutas(fichero):
    file=open(fichero,'r')
    lineas= file.readlines()
    lineasstr = []
    dires = []
    fichs = []
    for i in lineas:  #Readlines te lo devuelve en bytes osea con el '\n' al final de cada línea.
        lineasstr.append(i[:-1])
    for path in lineasstr:
        if os.path.isdir(path):
            dires.append(path)
        elif os.path.isfile(path):
            fichs.append(path)
        else:
            print(f"{path} no existe")

    return dires,fichs #Te devuelve una tupla con las dos lista

def borra_fich(fich):
    if fich in ficheros:
        print(f'Eliminando {fich}')
        os.remove(fich)
    else:
        print('Fichero no existe o no está en la lista')

def my_ls(ndir):
    if ndir in directorios:
        infor = subprocess.run(['ls', '-l', f'{ndir}'], text=True, capture_output=True)
        print(infor.stdout)
    else:
        print(f"{ndir} o no existe o no es un directorio")

def my_copy(src,dest):
    if src in ficheros and os.path.exists(dest) and os.path.isdir(dest):
        shutil.copy(src, dest)
    else:
        print("Error con los parámetros")


if __name__ == '__main__':
    rutas = separa_rutas('rutas.txt')
    ficheros = rutas[1]
    directorios = rutas[0]

    while True:
        print("")
        print("Menú de opciones")
        print("A - Decir nombre fichero y eliminarlo")
        print("B - Decir nombre directorio y mostrar su información")
        print("C - Decir nombre de fichero y destino y moverlo a dicho destino")
        print("D - Mostrar lista (Ficheros/Directorios)")
        print("E - Salir")

        opt=input("Dime la opción: ")

        match opt:
            case 'A':
                nfich=input("Dime el nombre de un fichero: ")
                borra_fich(nfich)
            case 'B':
                ndir=input("Dime el nombre de un directorio (ruta completa):")
                my_ls(ndir)

            case 'C':
                nfich=input("Dime el nombre de un fichero: ")
                destpath=input("Dime ruta de destino: ")
                my_copy(nfich,destpath)

            case 'D':
                opt2=input("Dime que lista mostrar(Ficheros/Directorios): ")
                match opt2:
                    case "Ficheros":
                        print(ficheros)
                    case "Directorios":
                        print(directorios)
                    case _:
                        print(f"Opción {opt2} no encontrada")
            case 'E':
                print("Saliendo del programa")
                break