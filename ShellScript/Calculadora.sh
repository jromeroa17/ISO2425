#!/bin/bash
#Script Entrega Calculadora
#Autor: Javier Romero Alonso
#Fecha: 03-02-2025


clear

if [ $# != 2 ]; then

	echo "Número de parámetros no válido"
	exit

fi

if [ -f $1 ]; then

	echo "fichero ya existe"
	exit

fi

counter=0

touch $1


while [ $counter -lt $2 ]; do

	echo "-----------------------------------"
	echo "Calculadora"
	echo "S para suma"
	echo "R para resta"
	echo "M para multiplicación"
	echo "D para división"
	echo "X para salir"
	echo ""
	echo "Dime la operación y los dos números"
	read -p "Dime la operación: " operacion
	read -p "Dime un número: " op1
	read -p "Dime otro número: " op2


	case $operacion in

		"S")

			res=$((op1+op2))
			echo "La suma de $op1 y $op2 es $res"
			echo "$operacion $op1 $op2" >> $1
			counter=$((counter+1))

		;;


		"R")

			res=$((op1-op2))
			echo "La resta de $op1 y $op2 es $res"
			echo "$operacion $op1 $op2" >> $1
			counter=$((counter+1))

		;;

		"M")
			res=$((op1*op2))
			echo "La multiplicación de $op1 y $op2 es $res"
			echo "$operacion $op1 $op2" >> $1
			counter=$((counter+1))

		;;

		"D")

			res=$((op1/op2))
			echo "La división de $op1 entre $op2 es $res"
			echo "$operacion $op1 $op2" >> $1
			counter=$((counter+1))


		;;


		"X")
			echo "Saliendo de la calculadora"
			break

		;;

		*)

			echo "Operación no encontrada, escriba una de la lista"

		;;

	esac

done


echo "Ruta del Archivo de Salida"

realpath  $1

echo ""

echo "Contenidos del archivo"

cat $1
