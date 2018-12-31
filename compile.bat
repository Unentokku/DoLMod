@echo off
:: Free Cities Basic Compiler - Windows

:: Set working directory
pushd %~dp0

:: Run the appropriate compiler for the user's CPU architecture.
if %PROCESSOR_ARCHITECTURE% == AMD64 (
    CALL "%~dp0devTools\tweeGo\tweego_win64.exe" -s "Init" -o "%~dp0Degrees_of_Lewdity_mod.html" "%~dp0src"
) else (
    CALL "%~dp0devTools\tweeGo\tweego_win86.exe" -s "Init" -o "%~dp0Degrees_of_Lewdity_mod.html" "%~dp0src"
)

popd
ECHO Done
