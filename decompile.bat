@echo off
:: Free Cities Basic Compiler - Windows

:: Set working directory
pushd %~dp0

:: Run the appropriate compiler for the user's CPU architecture.
if %PROCESSOR_ARCHITECTURE% == AMD64 (
    CALL "%~dp0devTools\tweeGo\tweego_win64.exe" -d "%~dp0Degrees_of_Lewdity.html" -o "%~dp0output/output.tw"
) else (
    CALL "%~dp0devTools\tweeGo\tweego_win86.exe" -d "%~dp0Degrees_of_Lewdity.html" -o "%~dp0output/output.tw"
)

popd
ECHO Done
PAUSE