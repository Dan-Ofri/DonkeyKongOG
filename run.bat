@echo off
REM ========================================
REM Donkey Kong - Run Script
REM ========================================

echo.
echo ========================================
echo    Donkey Kong C++ - Run Game
echo ========================================
echo.

REM Check for Release build first
if exist "x64\Release\DonkeyKongOG.exe" (
    echo [INFO] Found Release build. Starting game...
    echo.
    start x64\Release\DonkeyKongOG.exe
    exit /b 0
)

REM If no Release, try Debug
if exist "x64\Debug\DonkeyKongOG.exe" (
    echo [INFO] Found Debug build. Starting game...
    echo.
    start x64\Debug\DonkeyKongOG.exe
    exit /b 0
)

REM No executable found
echo [ERROR] Game executable not found!
echo.
echo Please build the project first:
echo   1. Run build.bat
echo   2. Or open DonkeyKongOG.sln in Visual Studio and build
echo.
pause
exit /b 1
