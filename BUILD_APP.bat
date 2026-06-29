@echo off
cd /d "%~dp0"
echo Building Android App...
echo Current Directory: %cd%
call gradlew.bat assembleDebug
pause
