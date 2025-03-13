#Script de entrega infoUsers
#Autor: Javier Romero
#Fecha:12-03-2025
import os
import subprocess

print("Esto es un menú")
print("Opción 1- Mostrar información SSOO y CPU")
print("Opción 2- Dime un usuario")
print("Opción 3- Dime un directorio")
print("Opción 4- Salir")
while True:
    opt=int(input("¿Qué opción quieres? "))
    match opt:
        case 1:
            pass
        case 2:
            pass
        case 3:
            pass
        case 4:
            print("Saliendo del programa")
            break
        case _:
            print("Opción no existe")

