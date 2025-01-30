#!/bin/bash
#Script Borra Usuarios
#Autor: Javier Romero Alonso
#Fecha: 30-01-2025
#Me daba pereza borrar todo uno a uno así que hice esto para borrar todo de golpe
#Es literalmente el mismo script cambiando cuatro cosas pero lo subo igualmente


clear

if [ $# != 2 ]; then

	echo "Número de argumentos equivocado"
	exit

fi


if [ $UID != 0 ]; then

	echo "No eres root"
	exit

fi




for ((i=1; i<=$2; i++)); do

	if grep "$1$i" /etc/passwd 2> /dev/null;then

		userdel $1$i
		echo "Usuario $1$i borrado"
	else

		echo "Usuario no existente"

	fi
done

