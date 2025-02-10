#!/bin/bash
#Entregable 4 Users.sh
#Autor: Javier Romero Alonso
#Fecha: 10-02-2025

clear



if [ -f /tmp/logeventos   ]; then

	echo "Comenzando Script"


else

	echo "Creando registro de usuarios"
	touch /tmp/logeventos

fi

if [ $# == 0 ]; then

	echo "No hay parámetros, usando 1000 como valor por defecto"
	pdefecto=1000

else

	pdefecto=$1

fi

if [ $# -gt 1 ]; then

	echo "Número de parámetros equivocado"
	exit
fi

if grep ":$pdefecto:" /etc/passwd> /dev/null; then

	echo "UID existe"

else

	echo "UID no existe"
	exit

fi



fecha=$(date +%d-%m-%Y)
hora=$(date +%H-%M)
nUsers=$(wc -l /etc/passwd | cut -f 1 -d " ")
echo "Hay $nUsers usuarios"


echo "======================================================"

echo "Informe de Usuarios del día $fecha a las $hora"

IFS=:

while read us x uid gid d h shell; do


	if [ $uid -ge $pdefecto ]; then

		echo "$us - $uid"
		counter=$((counter+1))

	fi

done < /etc/passwd


echo "Total: $counter usuarios"
echo "======================================================="

echo "$fecha - $hora - El usuario $USERNAME ha solicitado un informe de usuarios" >> /tmp/logeventos
