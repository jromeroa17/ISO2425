#/bin/bash
#Ejercicio 3 Script 1 Examen ISO Segunda Evaluación
#Autor: Javier Romero
#Fecha 19-02-2025

clear

read -p "Dime el nombre de un fichero: " nfich

if [ -f $nfich ]; then

	read -p "El fichero ya existe, quieres sobreescribirlo (Y/N): " sobre

		if [ $sobre == "N" ]; then

			echo "Saliendo del programa"
			exit
		fi
fi

while true; do

	read -p "Quieres añadir un alumno (Y/N): " ana

	case $ana in

		"N")
			echo "Saliendo del programa"
			break #No va a haber nada debajo así que da igual si es break o exit

		;;

		"Y")
			read -p "Dime el nombre del alumno: " nombre
			read -p "Dime el apellido del alumno: " ape
			read -p "Dime la nota del alumno: " nota
			echo "Añadiendo a $nombre $ape con una nota de $nota a $nfich"
			echo "$nombre $ape: $nota" >> $nfich
		;;

		*)
			echo "Opcion no encontrada"

		;;

	esac

done


