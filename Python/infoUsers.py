#!/usr/bin/python
#Script de entrega infoUsers
#Autor: Javier Romero
#Fecha:12-03-2025
import os
import subprocess
import cpuinfo

def get_user(name):
    if name in userNames:
        print("Usuario Encontrado")
        ind = userNames.index(name)
        print(passwd[ind])
    else:
        subprocess.run(['sudo','useradd',f'{name}'])
        subprocess.run(['tail','-n','1','/etc/passwd'])

#Hay que optimizarlo pero al menos no saca líneas repetidas (Busca solo los nombres de los usuarios, no que haya algún root por ahí suelto)
#Me pasa por hacerlo dos semanas antes

def get_dir(ndirec):
    if os.path.isdir(ndirec) and os.path.exists(ndirec):
        print("Es un directorio")

    elif not os.path.exists(ndirec):
        print("No existe")
        print(f"Creando {ndirec}")
        os.makedirs(ndirec)
    else:
        print("Es un fichero")

# Sacando los nombres de usuario de /etc/passwd
files = open('/etc/passwd', 'r')

passwd = files.readlines()

lines = []
for user in passwd:
    line = user.split(":")
    lines.append(line)

userNames = []
for line in lines:
    userNames.append(line[0])

# El menú
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
                print(cpuinfo.get_cpu_info()['brand_raw'])
            case 2:
                name = input("Dime un usuario: ")
                get_user(name)
            case 3:
                ndirec = input("Dime un directorio: ")
                get_dir(ndirec)
            case 4:
                print("Saliendo del programa")
                break
            case _:
                print("Opción no existe")

else:
    print("Ejecuta con sudo")