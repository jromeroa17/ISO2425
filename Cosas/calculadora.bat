@echo off
::nombre: Calculadora con bucles
::Autor:Javier Romero
::Fecha: 18/11/24
::Si no declaras el array uno a uno no funciona, al final se escribe menos haciendolo a lo bruto que con el for loop
set x[0]=suma
set x[1]=resta
set x[2]=multiplicacion
set x[3]=division
set /p a=Introduce un numero: 
set /p b=Introduce otro numero: 
set /a suma=a + b
set /a resta=a - b
set /a mult=a * b
set /a div=a / b
set z[0]=%suma%
set z[1]=%resta%
set z[2]=%mult%
set z[3]=%div%

for /l %%g in (0,1,3) do (
	call echo La %%x[%%g]%% de %a% y %b% es %%z[%%g]%%
)