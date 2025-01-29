#!/bin/bash
#Ejercicio 14
#Autor: Javier Romero Alonso
#Fecha: 22-01-2025

clear

read -n 1 -p "Introduce una letra: " letra

echo ""


case $letra in

	"a" | "e" | "i" | "o" | "u" )

		echo "Es una vocal"

	;;


	*)

		echo "Es consonante"

	;;

esac
