@echo off
::Create file for input.txt if not already made.
title DragOPSongTranslate
IF NOT EXIST input.txt type NUL > input.txt
echo.Change regular lyrics into code for SingSong, for DragOP.js. 
echo.Put all text into Input.txt - Linebreaks represent a new chat message.
echo.Code Output will be in Output.txt
pause >nul
set /p Songname=Songname:

:: Add /n(Splitter) on each and every line.
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (input.txt) do (
set /a N+=1
echo %%a\n>>Part-1-Translate.txt )

::Move all text onto one line
for /f "delims=" %%a in (Part-1-Translate.txt) do (
echo/|set /p ="%%a%" )>>Part-2-translate.txt

::Add DragOP/ModPE formated code.
set /p Convert2=<Part-2-translate.txt
set Convereted3=["%songname%", "%Convert2%".split("\n")],
echo %Convereted3%>output.txt )

::Remove no longer needed files.
del part-1-translate.txt
del part-2-translate.txt
cls & type output.txt
echo.
echo.Above is also in output.txt
echo.
echo.Press any key to exit.
pause >nul
