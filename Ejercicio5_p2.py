#Crear fichero con los grupos
#Autor: Javier Romero Alonso
#Fecha: 14-05-2025
import os
import sys
import subprocess


def get_group():
    my_file = open("ejemplo2", 'r')
    lineas = my_file.readlines()
    groups = []
    for group in lineas:
        groups.append(group.strip("\n"))
    return groups

def get_etc_group():
    my_file = open("/etc/group", 'r')
    lineas = my_file.readlines()
    grupos = []
    nombres = []
    for group in lineas:
        sin_byte = group.strip("\n")
        grupos.append(sin_byte.split(":"))
    for nombre in grupos:
        nombres.append(nombre[0])
    print(nombres)
    return grupos,nombres

def create_groups(groups: list):
    for group in groups:
        subprocess.run(['sudo','groupadd',f'{group}'])

def del_group(grupo: str):
    if grupo in get_etc_group()[1]:
        subprocess.run(['sudo', 'groupdel', f'{grupo}'])
    else:
        print("Grupo no existe")


if os.getuid() == 0:
    while True:
        print("1. Crear grupos")
        print("2. Info Grupo")
        print("3. Eliminar grupo")
        print("4. Salir del Programa")
        etc_grupos = get_etc_group()[0]
        etc_nombres = get_etc_group()[1]

        opt = input("Dime la opción: ")
        match opt:
            case "1":
                create_groups(get_group())
            case "2":
                pass
            case "3":
                ngrupo = input("Dime el nombre del grupo: ")
                del_group(ngrupo)
            case "4":
                print("Saliendo del programa...")
            case _:
                print("Opción no encotrada")