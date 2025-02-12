#!/bin/bash
#Ejercicio Extra Get the Biggest
#Autor: Javier Romero Alonso
#Fecha: 12-02-2025

clear

#Control de Errores

if [ $# -ne 2 ]; then

	echo "Númerod de parámetros equivocado"
	exit

fi

if [ ! -d $2 ]; then

	echo "Directorio no existe"
	exit

fi

if [ -f $1 ]; then

	echo "El fichero primer parámetro ya existe"
	exit

fi

nficheros=0

for i in `ls $2`; do

	if [ ! -d $i ]; then

		nficheros=$(($nficheros+1))

	fi

done


if [ $nficheros -eq 0 ]; then

	echo "Directorio vacio"
	exit

else

	echo "EL directorio $2 tiene $nficheros ficheros"

fi

#Ejecución


declare -A nlineas=()

for fich in $2/*; do

	if [ ! -d $fich ]; then

		numlineas=$(wc -l $fich | cut -f 1 -d " ")
		nlineas[$fich]="$numlineas"
		echo "$fich tiene $numlineas"
	fi

done


for key in ${!nlineas[@]}; do

	echo "El fichero {$key} tiene ${nlineas[$key]} lineas"

done










