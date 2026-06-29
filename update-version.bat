@echo off
REM Update Version Script for Windows

setlocal enabledelayedexpansion

set CURRENT_VERSION=1.0.0
set CURRENT_CODE=1

echo ================================
echo   Chat Liyali Zaman - Versioning
echo ================================
echo.
echo Current Version: %CURRENT_VERSION%
echo Current Code: %CURRENT_CODE%
echo.

set /p new_version="Enter new version (e.g. 1.0.1): "

if "%new_version%"=="" (
    echo Cancelled.
    exit /b 1
)

set /a new_code=%CURRENT_CODE%+1

REM PowerShell command to update version
powershell -Command "(Get-Content 'app\build.gradle.kts') -replace 'versionName = \"%CURRENT_VERSION%\"', 'versionName = \"%new_version%\"' | Set-Content 'app\build.gradle.kts'"
powershell -Command "(Get-Content 'app\build.gradle.kts') -replace 'versionCode = %CURRENT_CODE%', 'versionCode = %new_code%' | Set-Content 'app\build.gradle.kts'"

echo.
echo Version updated successfully!
echo   Version: %new_version%
echo   Code: %new_code%
echo.
echo Files updated:
echo   - app/build.gradle.kts

endlocal
