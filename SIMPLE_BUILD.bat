@echo off
cd /d "%~dp0"
echo.
echo Building... (This may take several minutes)
echo.

REM Try simple clean build first
gradlew.bat clean build -x test -x lint --no-daemon --info > build.log 2>&1

if %ERRORLEVEL% EQU 0 (
    echo SUCCESS!
    type build.log | find "BUILD"
) else (
    echo Build failed. Showing last 50 lines of log:
    echo.
    powershell -Command "Get-Content build.log | Select-Object -Last 50"
)

pause
