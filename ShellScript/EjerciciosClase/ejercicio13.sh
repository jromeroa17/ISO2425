#!/bin/bash
#Ejercicio 12
#Autor: Javier Romero Alonso
#Fecha: 27-01-2025

clear

echo "Opciones:"
echo "1: Ver ruta actual" 
echo "2: hacer ls de una carpeta"
echo "3: crear fichero con fecha y hora"
echo "4: Salir"

read -p "Introduce orden: " orden

case $orden in

	1)
		pwd

	;;

	2)
		read -p "Introduce el nombre de una carpeta: " nomcarpeta
		if [ -d $nomcarpeta ]; then

			ls $nomcarpeta

		else

			echo "Error Carpeta no existe"

		fi

	;;

	3)

		read -p "Introduce Nombre Fichero: " nomfichero
		if [ -f $nomfichero ]; then

			echo "Error, Archivo ya existe"

		else

			date > $nomfichero.txt

		fi
	;;

	4)
		exit

	;;

	*)

		echo "Introduce orden valida"

	;;

esac
