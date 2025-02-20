#/bin/bash
#Ejercio 4 Examen ISO Segunda Evaluación
#Autor: Javier Romero
#Fecha: 19-02-2025

clear

if [ $# -ne 1 ]; then

	echo "Demasiadas órdenes"
	exit

fi


case $1 in

	"crear")

		echo "Creando Carpeta"
		mkdir $HOME/BAK 2>/dev/null

	;;


	"borrar")

		if [ -d $HOME/BAK ]; then

			echo "Borrando contenidos"
			rm -rf $HOME/BAK/*


		else

			echo "Carpeta no existe"

		fi

	;;


	*)

		echo "Error, orden no encontrada"

	;;





esac
