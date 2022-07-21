
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                        ::
::     This Batch Shell was made by MarioS271.            ::
::     You aren't allowed to change this code unless      ::
::     you've got permissions from me.                    ::
::                                                        ::
::     The shell works quite well, but a few things       ::
::     don't work yet.                                    ::
::                                                        ::
::     You can start the shell with a different           ::
::     title by passing in one argument. The              ::
::     string doesn't need "".                            ::
::                                                        ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::::: SCRIPT :::::::::::::::::::::::::::::::::::::::

:init    rem Initializes the shell
@echo off & setlocal
if "%~1"=="" (title 271-Shell) else (title %~1)
cd %homepath%
set path=~
echo 271-Shell v1.0
echo Made by MarioS271
ver
echo.
goto commandln

:commandln    rem The commandline
if "%cd%"=="%userprofile%" (set path=~) else (set path= %cd%)
echo.
set /p cmd=(%username%@%computername%) $%path% ^> 
::::::::::::::
rem Checks for special commands
if "%cmd%"=="cmd" pushd %userprofile%&&start cmd.exe&&popd&&goto commandln
if "%cmd%"=="powershell" pushd %userprofile%&&start powershell.exe&&popd&&goto commandln
if "%cmd%"=="cd ~" cd %homepath%&&goto commandln
if "%cmd%"=="winver" start winver.exe&&goto commandln
if "%cmd%"=="shellinfo" goto shellinfo
::::::::::::::
%cmd%
goto commandln


:shellinfo    rem Information about the shell
echo.
echo 271-Shell
echo Version 1.0
echo.
echo Type 'help' for help.
echo You can use any cmd command in this Shell.
echo.
echo.
echo Designed by MarioS271
goto commandln