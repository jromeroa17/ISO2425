#!/bin/bash
#Ejercicio 15
#Autor: Javier Romero Alonso
#Fecha: 27-01-2025
#
clear

echo "1 - Círculo"
echo "2 - Cuadrado"
echo "3 - Triángulo"

read -p "Introduce una figura geométrica: " fig


case $fig in

	1)

		read -p "Dime el radio: " radio

		area=$(scale=5; expr 3.1415*$radio*$radio | bc)
		echo "El área del círculo es $area"

	;;

	2)

		read -p "Dime el lado: " lado
		area=$((lado*lado))
		echo "El área del cuadrado es $area"

	;;

	3)

		read -p "Dime la base: " base
		read -p "Dime la altura: " altura
		area=$(scale=5; expr $base*$altura*0.5 | bc)
		echo "El área del triángulo es $area"

	;;

	*)

		echo "Introduce una figura válida"
	;;

esac


