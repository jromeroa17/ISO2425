#!/bin/bash
#Ejercicio 8
#Autor: Javier Romero Alonso
#Fecha: 21-01-2025

if [ -d /home/$USER/MisCosas ]; then

	echo "Existe :D"

else

	echo "No Existe"
	mkdir /home/$USER/MisCosas
	echo "Carpeta Creada"

fi
