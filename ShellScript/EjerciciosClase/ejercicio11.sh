#!/bin/bash
#Ejercicio 11
#Autor: Javier Romero Alonso
#Fecha: 21-01-2025

clear


read -p "Dime una dirección IP: " direIP



octeto1=$(echo $direIP | cut -d "." -f 1 )
octeto2=$(echo $direIP | cut -d "." -f 2 )

if [ $octeto1 == 127 ]; then

	echo "Es una IP LocalHost"

elif [ $octeto1 == 10 ] || ( [ $octeto1 == 172  ] && [ $octeto2 -ge 16 ] && [ $octeto2 -le 31 ] ); then

	echo "Es una IP Privada"

elif ( [ $octeto1 == 192 ] && [ $octeto2 == 168 ] ) || ( [ $octeto1 == 169 ] && [ $octeto2 == 254 ] ); then

	echo "Es una IP Privada"

else

	echo "Es una IP pública"

fi





































