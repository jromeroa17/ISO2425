#!/bin/bash
#Script para crear copias de seguridad con tar
#Autor: Javier Romero Alonso
#Fecha: 3-02-2025


ano=$(date +%Y)
mes=$(date +%m)
dia=$(date +%d)


while true; do

	echo "------------------------------------------"
	echo "Copias de seguridad"
	echo "1- Listar Copias de Seguridad"
	echo "2- Hacer Copia de Seguridad"
	echo "3- Restaurar Copia de Seguridad"
	echo "0- Salir"

	read -p "Dime la opción que quieres hacer: " opt

	case $opt in

		1)

			echo "Estas son las copias de seguridad creadas en el equipo"
			ls /home/$USER/BAK

		;;

		2)


			echo "Creando Copia de Seguridad"

			tar  -c -f  /home/$USER/BAK/$ano$mes$dia.tgz /home/$USER/Documentos

		;;

		3)




		;;

		0)
			echo "Saliendo del programa..."

			break

		;;

		*)

			echo "Introduce una opción válida"

		;;
	esac
done
