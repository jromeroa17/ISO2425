import pathlib
import sys


def redirect_stdout():
    sys.stdout = open(f'{nfich}', 'w')
    for key in notas:
        print(f'{key}: {notas[key]}')


if __name__ == "__main__" :
    print("Recrear Examen en Python Enredo supremo")

    nfich=pathlib.Path(input("Dime el nombre del fichero (ruta absoluta): "))

    if nfich.is_file():
        print("Existe")
        opt=input("Desea sobreescribirlo (Y/N): ")
        if opt == "N":
            print("Saliendo del programa")
            sys.exit()


    notas={}
    while True:
        ana=input("Quieres añadir un alumno (Y/N): ")
        if ana == "Y":
            nombre=input("Escribe el nombre y apellido: ")
            nota=int(input("Dime su nota: "))
            notas[nombre]=nota
        elif ana == "N":
            redir=[]
            counter=0
            for key in notas:
                redir.append(f"{key}: {notas[key]}")
            redirect_stdout()
            sys.exit()
        else:
            print("Orden no encontrada")
