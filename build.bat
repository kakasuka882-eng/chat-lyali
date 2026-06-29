@echo off
REM Build Script for Chat Liyali Zaman

setlocal enabledelayedexpansion

echo ================================================
echo    Chat Liyali Zaman - Build Script
echo ================================================
echo.

REM Check if gradlew exists
if not exist "gradlew.bat" (
    echo Error: gradlew.bat not found!
    exit /b 1
)

REM Clean build
echo Cleaning old builds...
call gradlew.bat clean

if errorlevel 1 (
    echo Build failed during clean!
    exit /b 1
)

REM Build Release AAB
echo.
echo Building Release AAB...
call gradlew.bat bundleRelease

if errorlevel 1 (
    echo Build failed!
    exit /b 1
)

echo.
echo ================================================
echo Your AAB file is ready!
echo Output: app\build\outputs\bundle\release\app-release.aab
echo ================================================
echo.

REM Optional: Build Debug APK
set /p response="Do you want to build debug APK? (y/n): "
if /i "%response%"=="y" (
    echo Building Debug APK...
    call gradlew.bat assembleDebug
    echo Debug APK built: app\build\outputs\apk\debug\app-debug.apk
)

endlocal
