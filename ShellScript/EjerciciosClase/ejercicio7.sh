#!/bin/bash
#Script de prueba
#Autor: Javier Romero Alonso
#Fecha: 21-01-2025

read -p "Introduce un número a: " a

read -p "Introduce un número b: " b

if [ $a -gt $b ]; then

	if [ $a == $b ]; then

		echo "Son Iguales"

	else

		echo "$a es mayor que $b"
	fi

else

	echo "$b es mayor que $a"

fi



