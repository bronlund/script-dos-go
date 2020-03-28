@echo off
:: Usage: go [shortcut]
::
:: Shortcuts to directories I use a lot.
::
:: To add a new shortcut, make a new if statement under :init and
:: make a new block using the label and end it with 'goto end'.
::
:: I'm using this to run cd commands, but any DOS command will do.
:: Just remember to have this file somewhere in the default paths.

:init
if "%1"=="sass" goto sass
if "%1"=="img" goto img
if "%1"=="s4" goto s4
if "%1"=="scripts" goto scripts

if "%1"=="" goto usage
goto error

:sass
cd c:\workspace\s4\s4\sass
goto end

:img
cd c:\workspace\s4\img\htdocs\clients
goto end

:s4
cd c:\workspace\s4
goto end

:scripts
cd c:\workspace\dev\scripts
goto end

:usage
echo Usage: go [shortcut]
goto end

:error
echo Whaaaaa?
goto end

:end