@echo off
echo.DragOP song translater.
echo.Put all text into Translate.txt
echo.Output of translated text will be in Translated.txt
echo.
echo.When done adding your song lyrics, press any key to continue
pause <nul
@echo off
setLocal EnableDelayedExpansion
for /f "tokens=* delims= " %%a in (translate.txt) do (
set /a N+=1
echo %%a\n>>Part-1-Translate.txt
)

for /f "delims=" %%a in (Part-1-Translate.txt) do cmd /c  (>>"Part-2-Translate.txt" echo %%a)


for /f "delims=" %%a in (Part-1-Translate.txt) do (
echo/|set /p ="%%a%"
)>>Part-3-translate.txt

set /p Convert3=<Part-3-translate.txt
set Convereted4=["%songname%", "%Convert3%".split("\n")],
echo %Convereted4%>Part-4-Translate.txt
)
::["Cast is Life", "I AM SO FUCKING MAD RIGHT NOW!! MAD MAD!!\nYOU HAVE NO IDEA HOW MAD I AM\n".split("\n")],