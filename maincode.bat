@echo off
title SteamPoints
color 0f

:START
cls
echo Do you want to convert to $ OR Steam Points: 
set /p choicex=
IF '%choicex%' == 'money' GOTO MONEY
IF '%choicex%' == '$' GOTO MONEY
IF '%choicex%' == 'dollar' GOTO MONEY
IF '%choicex%' == 'dollars' GOTO MONEY
IF '%choicex%' == 'Dollar' GOTO MONEY
IF '%choicex%' == 'Dollars' GOTO MONEY
IF '%choicex%' == 'points' GOTO CURRENCY
IF '%choicex%' == 'real money' GOTO MONEY
IF '%choicex%' == 'steam points' GOTO CURRENCY

:CURRENCY
cls
GOTO NUMBERSDOLLAR
Exit

:MONEY
cls
title Converting to money.
echo Points to achive: 
set /p number1=
cls
GOTO POINTS2
exit

:NUMBERSDOLLAR
title Converting to points.
echo Money to spent: 
set /p number1=
echo.
cls
GOTO DOLLAR2
exit

:DOLLAR2
Set /A result = %number1% * 100,00
echo Steam points: %result%
echo.
pause
GOTO START
exit

:POINTS2
Set /A result = %number1% / 100,00
echo Money to spent: %result%$
echo.
pause
GOTO START
exit