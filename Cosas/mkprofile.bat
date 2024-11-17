echo off

set /p dirname=¿Nombre de la Carpeta?

mkdir C:\Users\%dirname%

set currentpath= C:\Users\%dirname%

mkdir %currentpath%\dam %currentpath%\daw %currentpath%\asir %currentpath%\smr %currentpath%\ceti

set patharray=%currentpath%\dam;%currentpath%\daw;%currentpath%\asir;%currentpath%\smr;%currentpath%\ceti

(for %%a in (%patharray%) do (
	mkdir %%a\docs %%a\pract %%a\exam
))
