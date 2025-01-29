#!/bin/bash
#Ejercicio 10
#Autor: Javier Romero Alonso
#Fecha: 21-01-2025

read -p "Dime tu nombre de usuario: " usrname

read -s -p "Pon la contraseña: " contisena

fecha=$(date +%D)

if  [ $usrname == "pepe" ]; then

	if [ $contisena == "qwerty" ]; then

		echo ""
		echo "Hola hoy es $fecha"

	else
		echo ""
		echo "Error no eres Pepe"

	fi
else

	echo ""
	echo "No eres Pepe"
	exit

fi
