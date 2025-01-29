#!/bin/bash
#Ejercicio 3
#Autor: Javier Romero Alonso
#Fecha: 20-01-2025
clear
read -p "Introduce el primer número: " a
read -p "Introduce el segundo número: " b

suma=$(($a+$b))
resta=$(($a-$b))
mult=$(($a*$b))
divi=$(($a/$b))
modulo=$(($a%$b))
declare -a resultados=($suma $resta $mult $divi $modulo)
declare -a operaciones=("suma" "resta" "multiplicación" "división" "módulo" )

for i in 0 1 2 3 4; do
	echo "La ${operaciones[$i]} entre $a y $b es ${resultados[$i]}"
done



#echo "La suma de $a y $b es $suma"
#echo "La resta de $a y $b es $resta"
#echo "La multiplicacion de $a y $b es $mult"
#echo "La division de $a y $b es $divi"
#echo "El modulo de $a y $b es $modulo"

