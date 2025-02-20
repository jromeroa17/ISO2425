#/bin/bash
#Script Ejercicio 5 Examen ISO segunda evaluación
#Autor: Javier Romero
#Fecha: 19-02-2025
#Si no se tiene permisos en los homes de otros usuarios, hay que ejecutar el script con sudo


clear

if [ $# -ne 1 ]; then

	echo "Numero de parámetros equivocado"
	exit

fi

if [ ! -f $1 ]; then

	echo "$1 no existe"
	exit

fi


for dir in /home/*; do

	cp $1 $dir 2>/dev/null

done


