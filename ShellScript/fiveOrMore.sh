#!/bin/bash
#Five or more
#Autor: Javier Romero Alonso
#Fecha: 05-02-2025


#Control de Errores

clear

if [ $# != 2 ]; then

	echo "Número de ficheros equivocado"
	exit

fi

if [ -f $1 ]; then

	echo "Fichero ya existe"
	exit

fi

if [ ! -d $2 ]; then

	echo "Directorio $2 no existe"
	exit

fi

vacio=0

for fich in `ls $2`; do

	if [ ! -d $fich ]; then
		vacio=$((vacio+1))
		echo "El directorio $2 tiene $vacio ficheros"
	fi

done

if [ $vacio == 0 ]; then

	echo "Directorio vacío"
	exit

fi

#Lo demás


for fich in $2/*; do



	if [  ! -d $fich ]; then
		echo "Cuantas palabras tiene $fich"
		lineas=$(wc -l $fich | cut -f 1 -d " ")
		palabras=$(wc -w $fich | cut -f 1 -d " ")

		if [ $lineas -gt 5 ]; then
			touch $1
			echo "$fich tiene 5 o más líneas"
			echo $fich >> $1

			echo "Este fichero tiene $palabras palabras" > $fich.q
			cat $fich >> $fich.q

		fi

	fi
done
