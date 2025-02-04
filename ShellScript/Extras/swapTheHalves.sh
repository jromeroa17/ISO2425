#!/bin/bash
#Script Swap The Halves
#Autor: Javier Romero Alonso
#Fecha: 04-02-2025

clear

if [ $# != 1 ]; then

	echo "Número de parámetros equivocado"
	exit

fi

if [ ! -d $1 ]; then

	echo "Directorio no existe"
	exit

fi

#ConArraysEstoNoPasaba


if find $1 -name "[[:upper:]]*" >/dev/null; then


	for fich in `find $1 -name "[[:upper:]]*"`; do

		lineas=$(wc -l $fich | cut -f 1 -d " ")
		nmitad=$(($lineas/2))
		copylines=()
		segmitad=$((nmitad+1))
		for ((i=$segmitad; i<=$lineas; i++));do

			posicion=$(($i-$nmitad))
			line=$(head -n $i $fich | tail -n 1)
			copylines[$posicion]="$line"

		done
		for ((i=1; i<$segmitad; i++)); do

			posicion=$(($i+$nmitad))
			line=$(head -n $i $fich | tail -n 1)
			copylines[$posicion]="$line"

		done


		for line in "${copylines[@]}"; do
			touch $fich.swap
			echo $line >> $fich.swap
		done

		echo "Autor: Javier Romero"
		cat $fich.swap

	done

fi
