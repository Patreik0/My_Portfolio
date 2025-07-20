@echo off
echo ================================
echo Git: commit & push start
echo ================================

cd /d %~dp0

REM Dodanie zmian
git add .

REM Commit z domyślnym komunikatem (możesz zmienić poniżej)
set /p MSG=Podaj opis zmian: 
git commit -m "%MSG%"


REM Wysyłanie zmian
git push origin main

echo ================================
echo Wyslano na GitHuba!
pause
