#!/usr/bin/python
#Script de entrega infoUsers
#Autor: Javier Romero
#Fecha:12-03-2025
import os
import subprocess

def get_user():
    files = open('/etc/passwd', 'r')

    passwd = files.readlines()

    lines = []
    for user in passwd:
        line = user.split(":")
        lines.append(line)

    userNames = []
    for line in lines:
        userNames.append(line[0])

    name = input("Dime un usuario: ")

    if name in userNames:
        print("Usuario Econtrado")
        ind = userNames.index(name)
        print(passwd[ind])
    else:
        subprocess.run(['sudo','useradd',f'{name}'])
        subprocess.run(['tail','-n','1','/etc/passwd'])

def get_dir():
    ndirec=input("Dime un directorio: ")

    if os.path.isdir(ndirec) and os.path.exists(ndirec):
        print("Es un directorio")

    else:
        print("No es un directorio")
        print(f"Creando {ndirec}")
        os.makedirs(ndirec)


if os.getuid() == 0:
    print("Esto es un menú")
    print("Opción 1- Mostrar información SSOO y CPU")
    print("Opción 2- Dime un usuario")
    print("Opción 3- Dime un directorio")
    print("Opción 4- Salir")
    while True:
        opt=int(input("¿Qué opción quieres? "))
        match opt:
            case 1:
                print(f'Tu sistema operativo es {os.uname().sysname}')
                print(f'Tu CPU tiene una arquitectura {os.uname().machine}')
            case 2:
                get_user()
            case 3:
                get_dir()
            case 4:
                print("Saliendo del programa")
                break
            case _:
                print("Opción no existe")

else:
    print("Ejecuta con sudo")