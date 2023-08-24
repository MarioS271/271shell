@set _shellstart=true
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                        ::
::     Diese Shell wurde von MarioS271 entwickelt         ::
::     und ist under "license.marios271.net/open-source"  ::
::     lizensiert.                                        ::
::                                                        ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::::::::: SCRIPT :::::::::::::::::::::::::::::::::::::::
:init
@echo off & setlocal EnableDelayedExpansion
cls
title 271-Shell
if "%_shellstart%"=="true" (set _shellstart=false&&if "%~1"=="" (pushd %homepath%&&set _path=~&&set _originalpath=~) else (pushd %~1&&set _path= %cd%&&set _originalpath=%~1)&&call :_skippathcheck)
if "%_originalpath%"=="~" (pushd %homepath%&&set _path=~) else (pushd %_originalpath%&&set _path= %cd%)
:_skippathcheck
set _ver=2.4
set sessionID=%random%%random%%random%%random%%random%
echo 271-Shell v%_ver%
echo Made by MarioS271
ver
echo.
goto commandln

:commandln
if "%cd%"=="%userprofile%" (set _path=~) else (set _path= %cd%)
echo.
set /p cmd=([92m%username%@%computername%[0m) $[94m%_path%[0m ^> 
::::::::::::::
if "%cmd%"=="cmd" pushd %userprofile%&&start cmd.exe&&popd&&goto commandln
if "%cmd%"=="powershell" pushd %userprofile%&&start powershell.exe&&popd&&goto commandln
if "%cmd%"=="cmd.exe" pushd %userprofile%&&start cmd.exe&&popd&&goto commandln
if "%cmd%"=="powershell.exe" pushd %userprofile%&&start powershell.exe&&popd&&goto commandln
if "%cmd%"=="ls" dir&&goto commandln
if "%cmd%"=="cd ~" cd %homepath%&&goto commandln
if "%cmd%"=="winver" start %windir%\System32\winver.exe&&goto commandln
if "%cmd%"=="whoami" %windir%\System32\whoami.exe&&goto commandln
if "%cmd%"=="color" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color /?" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color -?" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="help color" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color help" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color /h" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color -h" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color /help" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color -help" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="color h" %windir%\System32\msg.exe %username% This command isn't available in this shell.&&goto commandln
if "%cmd%"=="help" echo BUILT-IN:&&echo SESSION        Manages the 271shell session, type 'session help' for more help.&&echo.
if "%cmd%"=="session" call :session help&&goto commandln
if "%cmd%"=="session help" call :session help&&goto commandln
if "%cmd%"=="help session" call :session help&&goto commandln
if "%cmd%"=="session new" call :session new
if "%cmd%"=="session info" call :session info&&goto commandln
if "%cmd%"=="session shellinfo" call :session shellinfo&&goto commandln
if "%cmd%"=="session version" call :session version&&goto commandln
if "%cmd%"=="session ver" call :session version&&goto commandln
if "%cmd%"=="session shellver" call :session version&&goto commandln
if "%cmd%"=="session shellversion" call :session version&&goto commandln
if "%cmd%"=="session leave" call :session exit&&goto :eof
if "%cmd%"=="session exit" call :session exit&&goto :eof
if "%cmd%"=="exit" call :session exit&&goto :eof
::::::::::::::
%cmd%
color 0f
goto commandln

:session
if "%~1"=="help" (
    echo.
    echo Manages the 271shell session.
    echo.
    echo Possible Parameters:
    echo   - help           Shows this.
    echo   - new            Creates a new session.
    echo   - info           Displays information about the session.
    echo   - shellinfo      Displays information about the shell.
    echo   - ver            Displays the shell version.
    echo   - version        Displays the shell version.
    echo   - shellver       Displays the shell version.
    echo   - shellversion   Displays the shell version.
    echo   - leave          Exits the shell/session.
    echo   - exit           Exits the shell/session.
    goto :eof
) else if "%~1"=="new" (
    cls
    popd
    endlocal
    call :init
) else if "%~1"=="info" (
    echo USERNAME: %username%
    echo COMPUTERNAME: %computername%
    echo SESSION ID: %sessionID%
    goto :eof
) else if "%~1"=="shellinfo" (
    echo.
    echo 271-Shell
    echo Version %_ver%
    echo.
    echo Type 'help' for help.
    echo You can use almost any CMD command in this Shell.
    echo.
    echo.
    echo Designed by MarioS271  
    goto :eof
) else if "%~1"=="version" (
    echo 271shell v%_ver%
    goto :eof
) else if "%~1"=="exit" (
    cls
    popd
    endlocal
    goto :eof
)
goto :eof