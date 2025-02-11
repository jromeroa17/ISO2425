#!/bin/bash
#Ejercicio Extra Script Usuarios y grupos
#Autor: Javier Romero Alonso
#Fecha: 11-02-2025

clear

#Comprobación de Errores

if [ $UID -ne 0 ]; then

	echo "No eres Root"
	exit

fi

if [ $# -lt 2 ]; then

	echo "Número de parámetros equivocado"
	exit
fi


#Ejecución

if grep "$1:" /etc/passwd>/dev/null; then

	echo "Usuario Existe"

else

	echo "Usuario no existe, creando usuario"
	useradd $1


fi

switch=0

for i in $@; do

	if [ $switch == 0 ]; then

		switch=1
		echo "Del Primero Paso"
		continue

	else

		if grep "$i:" /etc/group>/dev/null; then

			echo "Grupo Existe"

		else

			echo "Grupo No Existe, Creado Grupo"
			groupadd $i


		fi
	fi

	gpasswd -a $1 $i
	echo "$1 añadido a $i"
	echo ""
done
