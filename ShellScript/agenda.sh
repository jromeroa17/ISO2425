#!/bin/bash
#Ejercicio 15
#Autor: Javier Romero Alonso
#Fecha: 28-01-2025

if [ ! -f Agenda.txt ]; then

	echo "Agenda.txt No existe, creando fichero"
	touch Agenda.txt

fi


while true; do
	echo ""
	echo "-----------------------------------------------------------------"
	echo "Bienvenido a Agenda.txt"
	echo "Lista de Opciones: "
	echo "a-Añadir Entrada"
	echo "b-Buscar Usuario por DNI"
	echo "c-Ver Agenda Completa"
	echo "d-Eliminar Agenda Completa"
	echo "e-Salir"

	read -p "Introduce la opción: " opc

	case $opc in

		"a")

			echo "Has decidido añadir una nueva entrada a la agenda"

			read -p "Introduce su DNI: " dni

			echo ""

			if  grep $dni Agenda.txt; then

				echo "Usuario ya se encuentra en Agenda.txt"
			else

				read -p "Introduce el Nombre: " Nombre
				read -p "Introduce los Apellidos: " Apellidos
				read -p "Introduce su Localidad: " Localidad

				echo "$dni:$Nombre:$Apellidos:Localidad" >> Agenda.txt
				echo ""
				echo "Usuario Añadido"
				echo ""
			fi
		;;

		"b")
			echo "Has Decidido buscar un usuario"
			read -p "Introduce un DNI para buscar: " dni

			if  grep $dni Agenda.txt; then

				Nombre=$(grep "$dni:" Agenda.txt | cut -f 2 -d ":")
				Apellidos=$(grep "$dni:" Agenda.txt | cut -f 3 -d ":")
				Localidad=$(grep "$dni:" Agenda.txt | cut -f 4 -d ":")
				echo ""
				echo "Usuario Encontrado"
				echo ""
				echo "La persona con DNI número $dni es: $Nombre $Apellidos, y vive en $Localidad"

			else

				echo "Usuario no está en Agenda.txt"
			fi
		;;

		"c")

			echo "Has decidido Mostrar la Agenda"
			if [ -s Agenda.txt ]; then

				cat Agenda.txt

			else

				echo "Agenda.txt está vacía"
			fi
		;;

		"d")

			read -p "Estás seguro de que quieres borrar la Agenda [y/n]: " seguro

			if [ $seguro == "y" ]; then

				> Agenda.txt
				echo "Agenda Borrada"
			else

				echo "Has decidido no borrar"

			fi

		;;

		"e")

			echo "Has decidido salir del bucle"
			break
		;;


		*)

			echo "Opción incorrecta"
	esac
done

