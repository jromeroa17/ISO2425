#!/bin/bash
#Ejercicio 9
#Autor: Javier Romero Alonso
#Fecha: 22-01-2025

clear

echo "Opciones: "
echo "Crear crea carpeta"
echo "Borrar borra carpeta"

read -p "Introduce orden: " orden

case $orden in 

	"Crear" | "crear")

		sudo mkdir /home/BAK
		echo "Carpeta creada"

	;;

	"Borrar" | "borrar")

		if [ -d /home/BAK ]; then
			sudo rm -rf /home/BAK
			echo "Carpeta Borrada"
		else
			echo "No existe carpeta"

		fi
	;;

	*)

		echo "Error, introduce una orden válida"

	;;

esac

echo "---------------------------------------------------------------------"

ls /home

