@echo off
echo ===============================
echo Git: commit, pull --rebase & push
echo ===============================

cd /d %~dp0

REM Dodanie zmian
git add .

REM Commit z komunikatem użytkownika
set /p MSG=Podaj opis zmian: 
git commit -m "%MSG%"

REM Pobranie zmian ze zdalnego repozytorium
git pull --rebase origin main

REM Wysłanie zmian
git push origin main

echo ===============================
echo Wysłano na GitHuba!
echo ===============================
pause
