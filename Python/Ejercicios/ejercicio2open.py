#Escribir Ciudad
#Autor: Javier Romero
#Fecha:12-03-2025
import sys

filename=input("Dime el nombre del fichero: ")

ciudades=[]
ciudad=""
while ciudad!="0":
    ciudad=input("Dime el nombre de una ciudad: ")
    ciudades.append(ciudad)

ciudades.pop(-1)

sys.stdout=open(f'{filename}.txt','w')
for ciudad in ciudades:
    print(ciudad)
