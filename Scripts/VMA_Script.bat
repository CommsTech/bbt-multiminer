rem Quick method of adjusting Virtual memory allocation
rem (no longer used) REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 0 0" /f
rem (no longer used) BCDEDIT /set increaseuserva 16384

ECHO **********************************************************************************************************************
ECHO *                                            USE AT YOUR OWN RISK                                                    *
ECHO *                          This is a tool to assist in the configuration of virtual memory                           *
ECHO *                          The creator and maintainers of this software hold no liability.                           *
ECHO *                                                                                                                    *
ECHO *                               That being said...                                                                   *
ECHO *                               Let's continue                                                                       *
ECHO *                                                                                                                    *
ECHO **********************************************************************************************************************
ECHO *                                                  Press ENTER to start                                              *
ECHO **********************************************************************************************************************
pause

wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=16384,MaximumSize=16384
CLS
wmic pagefileset or wmic pagefileset list /format:list
ECHO.
ECHO Correction to Virtual memory has been made at this time 
ECHO for settings to take place the computer must be restarted
ECHO.
ECHO What would you like to do?
ECHO 1. Reboot Now
ECHO 2. Exit without reboot
ECHO.

:: Get input from user
SET /P M=Type 1 or 2 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO REBOOT
IF %M%==2 GOTO END
IF %M% GTR 3 GOTO UNKNOWN
IF %M% LSS 0 GOTO UNKNOWN

:REBOOT
shutdown /r /t 20 /c "Virtual Memory Changed Restarting"

:UNKNOWN

ECHO Im sorry, I didnt get your last request.
ECHO.
ECHO What would you like to do?
ECHO 1. Reboot Now
ECHO 2. Exit without reboot
ECHO.

:: Get input from user
SET /P M=Type 1 or 2 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO REBOOT
IF %M%==2 GOTO END
IF %M% GTR 3 GOTO UNKNOWN
IF %M% LSS 0 GOTO UNKNOWN

:END
exit