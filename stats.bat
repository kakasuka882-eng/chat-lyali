@echo off
REM Project Statistics Generator for Windows

setlocal enabledelayedexpansion

echo ================================================
echo   Chat Liyali Zaman - Project Statistics
echo ================================================
echo.

REM Count file types
for /f %%A in ('dir /s /b *.kt 2^>nul ^| find /c /v ""') do set kt_files=%%A
for /f %%A in ('dir /s /b *.xml 2^>nul ^| find /c /v ""') do set xml_files=%%A
for /f %%A in ('dir /s /b *.gradle 2^>nul ^| find /c /v ""') do set gradle_files=%%A
for /f %%A in ('dir /s /b *.md 2^>nul ^| find /c /v ""') do set md_files=%%A

if not defined kt_files set kt_files=0
if not defined xml_files set xml_files=0
if not defined gradle_files set gradle_files=0
if not defined md_files set md_files=0

echo File Statistics:
echo   Kotlin Files    : %kt_files%
echo   XML Files       : %xml_files%
echo   Gradle Files    : %gradle_files%
echo   Markdown Files  : %md_files%
echo.

echo Project Information:
echo   Version         : 1.0.0
echo   Min SDK         : 24 (Android 7.0)
echo   Target SDK      : 34 (Android 14+)
echo   Package         : com.chatliyali.chatapp
echo   App Name        : شات ليالى زمان
echo.

echo ================================================

endlocal
