@echo off
if "%3"=="--JP" goto :jp

pandoc %1 -o %2
goto :end

:jp
pandoc %1 -o %2 --pdf-engine=xelatex -V mainfont="MS Gothic"

:end
