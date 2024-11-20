@echo off
::nombre: Menú básico para crear archivos
::Autor:Javier Romero
::Fecha: 20/11/24

:inicio
echo Pulse 1 para crear un archivo .txt
echo Pulse 2 para crear un archivo .bat

set /p opcion=
 
if %opcion% == 1 (goto txt)
if %opcion% == 2 (goto bat) else (goto error)


:txt
set /p filename=Ahora dime el nombre del archivo:
echo Hola soy el archivo .txt > %filename%.txt
pause
exit

:bat
set /p filename=Ahora dime el nombre del archivo:
echo echo hola mundo > %filename%.bat
pause
exit 

:error
echo entra el comando que es god dammit
pause
goto inicio