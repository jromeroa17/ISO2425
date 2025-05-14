#Crear fichero con los grupos
#Autor: Javier Romero Alonso
#Fecha: 14-05-2025
import os
import sys
nfich = input("Dime el nombre del fichero: ")

if os.path.exists(nfich):
    print("Fichero ya existe")
else:
    grupos = []
    while True:
        print("Dime el nombre de un grupo (Para con 'NO'): ")
        ngroup = input("nombre del grupo: ")
        if ngroup == "NO":
            print("Saliendo del programa")
            sys.stdout = open(f'{nfich}','w')
            for group in grupos:
                print(group)
            break
        else:
            grupos.append(ngroup)


