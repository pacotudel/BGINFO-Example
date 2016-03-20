@SETLOCAL
@SET LINEA=----------------------------
@echo off
@c:\bin\bginfo\cal.exe -m > c:\bin\bginfo\mes.txt
@set SITIO=DISCOS
@echo --%SITIO%%LINEA% > c:\bin\bginfo\Notas_Del_dia.txt
:: @type c:\bin\bginfo\mes.txt   >  c:\bin\bginfo\Notas_Del_dia.txt
:: @echo %LINEA% >> c:\bin\bginfo\Notas_Del_dia.txt
FOR /F "usebackq tokens=1,2" %%f IN (`PowerShell -NoProfile -EncodedCommand "CgBnAHcAbQBpACAAVwBpAG4AMwAyAF8ATABvAGcAaQBjAGEAbABEAGkAcwBrACAALQBGAGkAbAB0AGUAcgAgACIAQwBhAHAAdABpAG8AbgA9ACcAQwA6ACcAIgB8ACUAewAkAGcAPQAxADAANwAzADcANAAxADgAMgA0ADsAWwBpAG4AdABdACQAZgA9ACgAJABfAC4ARgByAGUAZQBTAHAAYQBjAGUALwAkAGcAKQA7AFsAaQBuAHQAXQAkAHQAPQAoACQAXwAuAFMAaQB6AGUALwAkAGcAKQA7AFcAcgBpAHQAZQAtAEgAbwBzAHQAIAAoACQAdAAtACQAZgApACwAJABmAH0ACgA="`) DO ((SET U=%%f)&(SET F=%%g))
SET /A Total = %U% + %F%
:: @ECHO Used : %U%
:: @ECHO Free : %F%
:: @ECHO Total: %Total%
:: Espacio libre en C
@echo %F% Gb Disponib de %Total% Gb (C:) >> c:\bin\bginfo\Notas_Del_dia.txt
::@set SITIO=EXTENS
::@echo --%SITIO%%LINEA% >> c:\bin\bginfo\Notas_Del_dia.txt
:: Extensiones
::@echo Paco 184 - Pepe 185 - Pili 200 >> c:\bin\bginfo\Notas_Del_dia.txt
::@echo Anto 186 - Jose 187 - Lola 206 >> c:\bin\bginfo\Notas_Del_dia.txt
@set SITIO=NOTAS-
@echo --%SITIO%%LINEA% >> c:\bin\bginfo\Notas_Del_dia.txt
@type c:\bin\bginfo\notas.txt >> c:\bin\bginfo\Notas_Del_dia.txt
@echo --------%LINEA% >> c:\bin\bginfo\Notas_Del_dia.txt
::@echo --------%LINEA% >> c:\bin\bginfo\Notas_Del_dia.txt
@echo ------ %DATE% %TIME% ------ >> c:\bin\bginfo\Notas_Del_dia.txt
@c:\bin\bginfo\Bginfo.exe c:\bin\bginfo\bginfo.bgi /timer:0