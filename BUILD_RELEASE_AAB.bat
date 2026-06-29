@echo off
cd /d "%~dp0"
echo.
echo ╔════════════════════════════════════════════════════════════╗
echo ║        Building Chat Liyali Zaman - Release AAB            ║
echo ╚════════════════════════════════════════════════════════════╝
echo.
echo Current Directory: %cd%
echo.
echo Starting build process...
echo.

call gradlew.bat bundleRelease -x test

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ╔════════════════════════════════════════════════════════════╗
    echo ║           BUILD SUCCESSFUL! ✓                             ║
    echo ║                                                            ║
    echo ║  Output file location:                                     ║
    echo ║  app/build/outputs/bundle/release/app-release.aab          ║
    echo ║                                                            ║
    echo ║  This file is ready to upload to Google Play Console      ║
    echo ╚════════════════════════════════════════════════════════════╝
) else (
    echo.
    echo ╔════════════════════════════════════════════════════════════╗
    echo ║           BUILD FAILED! ✗                                 ║
    echo ║  Please check the error messages above                    ║
    echo ╚════════════════════════════════════════════════════════════╝
)

echo.
pause
