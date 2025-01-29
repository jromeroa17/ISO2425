#!/bin/bash
#Script Entrega CreaUsuarios
#Autor: Javier Romero Alonso
#Fecha: 29-01-2025

clear

if [ $# != 4 ];then

	echo "Numero de Parámetros equivocado"
	exit

fi

if [ $UID != 0 ];then

	echo "Error, no eres Root, no se puede ejecutar"
	exit

fi

#encriptado=$((openssl passwd $2 -6 | head -1 | cut -c 4-))

groupadd $3 2> /dev/null

for ((i=1; i<=$4; i++)) do

	if grep "$1$i:" /etc/passwd > /dev/null; then

		echo "Usuario ya existente"

	else

		useradd $1$i -G $3 -p $2
		echo "Usuario $1$i ha sido creado y añadido al grupo $3 y con contraseña encriptada"

	fi
done
