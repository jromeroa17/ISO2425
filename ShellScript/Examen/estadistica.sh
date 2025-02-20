#/bin/bash
#Script 2 del ejercicio 3 Examen ISO segunda evaluacion
#Autor: Javier Romero
#Fecha: 19-02-2025

clear

if [ $# -ne 1 ]; then

	echo "Demasiados parámetros"
	exit

fi

if [ ! -s $1 ]; then

	echo "fichero no existe o está vacío"
	exit

fi

total=$(wc -l $1 | cut -f 1 -d " ")

echo "Total de alumnos: $total"


IFS=":"

counter=10


while [ $counter -ge 0 ]; do

	echo " "
	echo "Alumnos con un $counter"
	echo " "
	while read nombre nota; do

		if [ $nota -eq $counter ]; then

			echo "$nombre" #Cuidado que en notas.txt hay alguien que se llama nombre apellidos

		fi

	done<$1

	echo " "
	counter=$((counter-1))

done
