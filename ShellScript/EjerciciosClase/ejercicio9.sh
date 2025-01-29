#!/bin/bash
#Ejercicio 9
#Autor: Javier Romero Alonso
#Fecha: 22-01-2025


direc=$1

if [ $# == 0  ]; then

	read -p "Dime una carpeta que no pasaste parámetro puto: " direc

fi

if [ -d $direc ] && [ -w $direc ]; then

	echo "Bienvenido" >  $direc/hola.txt
	echo "Fichrero creado"

else

	echo "$direc no esite o no puedo escribir"

fi








