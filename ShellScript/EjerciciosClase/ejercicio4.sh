#!/bin/bash
#Script de prueba
#Autor: Javier Romero Alonso
#Fecha: 21-01-2025

clear

if [ $UID == 0 ] && [ $USER == "root" ]; then

	echo "Eres el root :D"

else

	echo "no eres el root >:("

fi
