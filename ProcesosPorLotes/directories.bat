@echo off
::nombre: Menú de creación de directorios 
::Autor:Javier Romero
::Fecha: 20/11/24

echo Pulse 1 para crear un fichero
echo Pulse 2 para mostrar tu arbol de directorios
echo Pulse 3 Para mostrar todos los archivos con .txt
echo Pulse 4 para crear varios directorios
echo Pulse 5 para copiar tu carpeta de usuario a Desktop (metete como admin)

set /p opcion=

if %opcion% == 1 goto 1
if %opcion% == 2 goto 2
if %opcion% == 3 goto 3
if %opcion% == 4 goto 4 
if %opcion% == 5 goto 5

:1
set /p nombrefichero=Introduce el nombre del fichero: 
echo fichero > %nombrefichero%.txt
echo Fichero Creado :3
pause
exit

:2 
echo Este es el arbol de directorios de tu usuario
tree %USERPROFILE%
pause
exit

:3
echo Aqui tienes todos los archivos .txt
dir *.txt
pause
exit

:4
echo Creamos Directorios 
mkdir alfredoff marinapg ramonam
dir 
pause 
exit 

:5
echo Copiando Carpeta...
mkdir C:\Copia
xcopy %USERPROFILE% C:\Copia /e
echo directorio copiado
pause
exit