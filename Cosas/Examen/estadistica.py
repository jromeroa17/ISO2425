import pathlib
import sys

if len(sys.argv) != 2:
    print("Numero de parámetros equivocado")
    sys.exit()

nfile=pathlib.Path(sys.argv[1])

if not nfile.is_file():
    print(f"{sys.argv[1]} no existe")
    sys.exit()

read=open(f'{nfile}', 'r')

notas=[]
for i in read:
    sepa=i.split(":")
    notas.append(sepa)

for i in range(11):
    print(" ")
    print(f'alumnos con un {i}')
    for alumno in notas:
        if int(alumno[1]) == i:

            print(f'{alumno[0]}')

