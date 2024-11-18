@echo off
::Nombre: Media de 3 Números
::Autor: Javier Romero
::Fecha: 18/11/24 10:09

set /a total=%1 + %2 + %3
set /a media=%total%/3
echo La media de %1, %2 y %3 es %media%