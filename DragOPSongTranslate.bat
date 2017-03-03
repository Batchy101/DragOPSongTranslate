@echo off
::Create file for input.txt if not already made.
IF NOT EXIST input.txt type NUL > input.txt
echo.Change regular song lyrics into code for SingSong, for DragOP.js. 
echo.Put all text into Input.txt
echo.Output of translated text will be in Output.txt
echo.
echo.When done adding your song lyrics, press any key to continue
pause >nul
set /p Songname=Songname:
 
:: Add /n(Splitter) on each and every line.

setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (input.txt) do (
set /a N+=1
echo %%a\n>>Part-1-Translate.txt
)

::Move all text onto one line

for /f "delims=" %%a in (Part-1-Translate.txt) do (
echo/|set /p ="%%a%"
)>>Part-2-translate.txt

::Add DragOP/ModPE formated code.

set /p Convert2=<Part-3-translate.txt
set Convereted3=["%songname%", "%Convert2%".split("\n")],
echo %Convereted3%>output.txt
)

::Remove no longer needed files.

del part-1-translate.txt
del part-2-translate.txt
type output.txt
echo.
echo.Above is also in output.txt
