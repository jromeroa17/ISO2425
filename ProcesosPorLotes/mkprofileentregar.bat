echo off
::Nombre: Crear Carpetas dentro de carpetas
::Autor: Javier Romero
::Fecha: 17/11/24 11:39
:: Si el directorio de %USERPROFILE% tiene un espacio en el nombre, el programa peta
mkdir %USERPROFILE%\dam %USERPROFILE%\daw %USERPROFILE%\asir %USERPROFILE%\smr %USERPROFILE%\ceti
set patharray=%USERPROFILE%\dam;%USERPROFILE%\daw;%USERPROFILE%\asir;%USERPROFILE%\smr;%USERPROFILE%\ceti
(for %%a in (%patharray%) do (
	mkdir %%a\docs %%a\pract %%a\exam
))
