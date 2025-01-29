#!/bin/bash
#Ejercicio 16
#Autor: Javier Romero Alonso
#Fecha: 28-01-2025


clear

lineas=$(wc -l $2 | cut -f 1 -d " ")

if [ $# == 2 ] && [ -f $2 ] && [ $1 -le $lineas ]; then

	head -n $1 $2 | tail -n 1

elif [ $# -ne 2 ]; then

	echo "Número de parámetros incorrecto"
	exit

elif  [ ! -f $2 ];then

	echo "Fichero no existente"
	exit

fi
