#!/bin/bash
#Ejercicio 6
#Autor: Javier Romero Alonso
#Fecha: 21-01-2025

clear

hora=$(date +%H)

if  [ $hora -ge 14 ] && [ $hora -lt 16 ]; then

	echo "Hora de comer"

else

	echo "Te esperas 4 horas más puto"

fi
