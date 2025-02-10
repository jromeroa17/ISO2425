#!/bin/bash
#Entregable 4 Users.sh
#Autor: Javier Romero Alonso
#Fecha: 10-02-2025
#Este Script no cuenta cuando es mayor, sino las líneas que van después en /etc/passwd

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

if grep ":$pdefecto:" /etc/passwd; then

	echo "UID existe"

else

	echo "UID no existe"
	exit

fi



fecha=$(date +%d-%m-%Y)
hora=$(date +%H-%M)
nUsers=$(wc -l /etc/passwd | cut -f 1 -d " ")
echo "Hay $nUsers usuarios"

for ((i=1; i<=$nUsers; i++)); do

	getid=$(tail -n $i /etc/passwd | head -n 1 | cut -f 3 -d ":")

	if [ $getid == $pdefecto ]; then

		nSacar=$i
		echo "Hay que sacar $nSacar usuarios"
		break
	fi

done



echo "======================================================"

echo "Informe de Usuarios del día $fecha a las $hora"


for ((i=0; i<=$nSacar; i++)); do

	nowline=$(($nSacar-$i))
	nUsuario=$(tail -n $nowline /etc/passwd | head -n 1 | cut -f 1 -d ":")
	userid=$(tail -n $nowline /etc/passwd | head -n 1 | cut -f 3 -d ":")
	echo "$nUsuario - $userid"


done

echo "Total: $nSacar usuarios"
echo "======================================================="

echo "$fecha - $hora - El usuario $USERNAME ha solicitado un informe de usuarios" >> /tmp/logeventos
