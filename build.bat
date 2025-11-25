@echo off
REM ========================================
REM Donkey Kong - Build Script
REM ========================================

echo.
echo ========================================
echo    Donkey Kong C++ - Build Script
echo ========================================
echo.

REM Check if MSBuild is available
where msbuild >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] MSBuild not found!
    echo Please install Visual Studio with C++ Desktop Development workload.
    echo.
    echo Alternative: Use g++ or clang++ to build manually.
    echo.
    pause
    exit /b 1
)

echo [INFO] MSBuild found! Building project...
echo.

REM Build the solution in Release mode
msbuild DonkeyKongOG.sln /p:Configuration=Release /p:Platform=x64 /m /nologo

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo    BUILD SUCCESS!
    echo ========================================
    echo.
    echo Executable location: x64\Release\DonkeyKongOG.exe
    echo.
    echo Run the game? (Y/N)
    choice /C YN /N /M "Press Y to run, N to exit: "
    if %ERRORLEVEL% EQU 1 (
        echo.
        echo Starting game...
        start x64\Release\DonkeyKongOG.exe
    )
) else (
    echo.
    echo ========================================
    echo    BUILD FAILED!
    echo ========================================
    echo.
    echo Please check the error messages above.
    pause
    exit /b 1
)

echo.
echo Build completed successfully!
pause
