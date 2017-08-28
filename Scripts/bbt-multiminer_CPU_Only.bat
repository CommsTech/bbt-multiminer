@echo off
setlocal EnableDelayedExpansion
mode con: cols=125 lines=55
Title BBT Multi-Miner (CPU ONLY MODE)
rem **********************************************************************
rem *         BBT Multi-Miner Easy Batch File  v4 by BBT & alon7         *
rem *     Featuring NexusPrimeMiner, CPUMiner, XMR Miner and more        *
rem *   Pre-Configured syntax, just update address/worker                *
rem *    Xmr, NXS, UIS and more                                          *
rem **********************************************************************
rem *              BEST VIEWED IN FULL SCREEN 1920x1080                  *
rem **********************************************************************



::
:: Wallets and Info
::
cd ..
Call Info.bat

::
:: Miners
::
SET NEXUSCPUMINER="%~dp0..\Miners\NexusMiner\Windows\nexus_cpuminer.exe"
SET CPUMINER="%~dp0..\Miners\CPUMiner\Windows\unitus_cpuminer-x64-generic.exe"
SET XMR_STAK_MINER="%~dp0..\Miners\xmr-stak-cpu\Windows\xmr-stak-cpu.exe"

rem echo off
rem **Instructions******************************************************* 
rem **Replace the wallet & POOL addresses!!!!                           *
rem **Replace the miner name and the email address                      *
rem **Then run and choose :)                                            * 
rem *********************************************************************

rem **Available pools****************************************************
rem **You can change pool addresses to match your physical area         *
rem *********************************************************************

rem ** Monero (XMR)  *****************************************************
rem ******* Nanopool.org:
rem ** https://xmr.nanopool.org/help
rem ************ Europe (1): xmr-eu1.nanopool.org:14444 or xmr-eu1.nanopool.org:14433
rem ************ Europe (2): xmr-eu2.nanopool.org:14444 or xmr-eu2.nanopool.org:14433
rem ************ North America (East): xmr-us-east1.nanopool.org:14444 or xmr-us-east1.nanopool.org:14433
rem ************ North America (West): xmr-us-west1.nanopool.org:14444 or xmr-us-west1.nanopool.org:14433
rem ************ Asia: xmr-asia1.nanopool.org:14444 or xmr-asia1.nanopool.org:14433

rem ** Nexus  ***************************************************************
rem ******* nexusearth.com:
rem ** https://nxsforum.com/topic/49/new-cpu-miner-guide
rem ** nxscpupool.com  
rem ** nxsminingpool.com
rem ** nxspool.com
rem ** nexusminingpool.com

rem ** Unitus  ***************************************************************
rem ******* unitus.online:
rem ** http://unitus.online/home
rem ************ stratum+tcp://argon.mine.unitus.online:3003


SET miner=%1

IF NOT "%miner%"=="" (
    SET /A M=%miner%
    goto MinerSwitch
)

REM --------------------------------------------------------------------------------------------------------------------------
REM Disclosure Agreement
REM --------------------------------------------------------------------------------------------------------------------------
COLOR 9
ECHO **********************************************************************************************************************
ECHO *                                                                                                                    *
ECHO *                        yhhhho   +hhhhy                                                                             *
ECHO *                        mMMMMy   yMMMMN                                                                             *
ECHO *                        NMMMMy   yMMMMN                      ...---....                                             *
ECHO *                        NMMMMy   yMMMMN                -/+syhhddmmNNNNNNmmmddhyso+/::-.                             *
ECHO *             :::::::::::NMMMMh:::hMMMMN-:/:/+oooooooooossssoosssssoooo+osyhddmNMMMMMNNNmdhys+/:-.                   *
ECHO *            .NNNNNNNNNNNMMMMMMNNNMMMMMMNNNmdhys+yoNssdd+sMo+hoyNsdymhmhyo:.    -:/mMMMMMMMMMMMNNmdys+:--            *
ECHO *             MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmh//od+-/oM+.-`.mhs:ssh/dohho.     NMMMMMMMm/+oyhdmNMMMNdhs+:--.     *
ECHO *             hdddddNMMMMMMMMMNmmmmmmNNMMMMMMMMMMMMd/ym:/yMmdsyoo/``-:-+hsy-dN+   /MMMMMMMM/      ..:/oydmmh-..-:+   *
ECHO *                   :MMMMMMMMMh......--/sdMMMMMMMMMMN-+hN+///++syyy//o:+dom:+MM/  hMMMMMMMh`             .-://::o:   *
ECHO *                   .MMMMMMMMMy          `sMMMMMMMMMMs+mm        `:ddy::::+/:omd `NMMMMMMM-                   .-.    *
ECHO *                   .MMMMMMMMMy           .MMMMMMMMMMs.ym          /M//os-syN:hd /MMMMMMMy                           *
ECHO *                   .MMMMMMMMMy           +MMMMMMMMMN- ym         `yN/hsd:s/yhNo hMMMMMMN-                           *
ECHO *                   .MMMMMMMMMy        `.+NMMMMMMMMN+.odm       .-ymy:./o/o/+dy .NMMMMMMs                            *
ECHO *                   .MMMMMMMMMdooooooosymMMMMMMMMmy/s+ysmyyhyyyyhdd+.` +--hmm+  +MMMMMMN.                            *
ECHO *                   .MMMMMMMMMMMMMMMMMMMMMMMMMMMMdo++.h.:+y//s/os/-/o. o/ohmh+. hMMMMMMo                             *
ECHO *                   .NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdo/.+y:-+m/+y+.+y--o/:-.:yNyNMMMMMN.                             *
ECHO *                   .NNNNNNNNNd++++++++osymNNNNNNNNNNNd:yyyyhdyhdhymo:.y:sy/+shNNNNNNNo                              *
ECHO *                   .NNNNNNNNNy           `-sNNNNNNNNNNd:         .:odhs+h+h:y.yoNNNNm.                              *
ECHO *                   .NNNNNNNNNs              oNNNNNNNNNN:             hh`./-./+/.dNNNo                               *
ECHO *                   `dddddddddo              /dddddddddd:             ss `/.:y/y.hddh`                               *
ECHO *                   `dddddddddo             .ydddddddddd.            -h+ `o../+o+ddd+                                *
ECHO *                   .dddddddddo           ./hdddddddddds:         .:ohy-.::-:``-oddh`                                *
ECHO *             .-----sdddddddddy++++++++osyddddddddddddy:hsssssysssoo+:-o`s-o/y-sddd+                                 *
ECHO *             +ddddddddddddddddddddddddddddddddddddddo`..` .+-.-:+od: `yso/+oysdddd.                                 *
ECHO *             odddddddddddddddddddddddddddddddddddy+.s-yos/ooh``-`+d-//:+--/ydddddo          `                       *
ECHO *             +ssssssssssdddddhssshdddddssssssoooosdyyohshsdodyyyosdsohhss+:sddddd.                                  *
ECHO *                        hmmmms   ommmmd                                   dmmmms                                    *
ECHO *                        dmmmms   ommmmd                                                                             *
ECHO *                        dmmmms   ommmmd                                                                             *
ECHO *                        dmmmms   ommmmd                                                                             *
ECHO *                                                                                                                    *
ECHO **********************************************************************************************************************
ECHO *    CPU Only-BBT Multi-Miner Easy Batch File v4 by BBT, alon7 and Commstech Featuring NexusPrimeMiner, CPUMiner,    *
ECHO *    XMR Miner and Pre-Configured syntax, just update address/worker and run this .bat                               *
ECHO *   Xmr,  NXS, UIS, and more                                                                                         *
ECHO **********************************************************************************************************************
ECHO *                                         BEST VIEWED IN FULL SCREEN 1920x1080                                       *
ECHO **********************************************************************************************************************
ECHO *                                                                                                                    *
ECHO *                          This is a tool to  assist in the configuration of mining software                         *
ECHO *                          The creator and maintainers of this software hold no liability.                           *
ECHO *                                                                                                                    *
ECHO *                               That being said...                                                                   *
ECHO *                               Let's continue                                                                       *
ECHO *                                                                                                                    *
ECHO **********************************************************************************************************************
ECHO *                                                  Press ENTER to start                                              *
ECHO **********************************************************************************************************************
pause

:HOME
COLOR 7
CLS
ECHO ====================================================
ECHO *             Welcome to MultiMiner                *
ECHO *       Brought to you by bitsbetrippin            *
ECHO ====================================================
ECHO.
ECHO How would you like to Setup?
ECHO 1. Guided
ECHO 2. Expert
ECHO.
ECHO - EXIT

:: Get input from user
SET /P M=Type 1 or 2 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO GUIDED
IF %M%==2 GOTO ALL
IF %M% GTR 3 GOTO EOF
IF %M% LSS 0 GOTO EOF


:GUIDED
CLS
ECHO ====================================================
ECHO *        What Coin Would you like to mine?         *
ECHO ====================================================
ECHO 1.  Monero (XMR) (needs Work)
ECHO 2.  Nexus (NXS)
ECHO 3.  Unitus (UIS)
ECHO.
ECHO 4 - Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO XMR_Menu
IF %M%==2 GOTO NXS_Menu
IF %M%==3 GOTO UIS_Menu
IF %M%==4 GOTO HOME
IF %M% GTR 5 GOTO EOF
IF %M% LSS 0 GOTO EOF

:XMR_Menu
CLS
SET POOL1=nanopool.org  

ECHO Please wait
ECHO We will now verify the pools status

ping -n 1 %POOL1% | find "TTL="
if errorlevel 1 (
set error1=Failed
) else (
set error1=Good
)

CLS
ECHO ====================================================
ECHO *                    Monero (XMR)                  *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %XMR_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  CPU ONLY - XMR Miner - XMR to Nanopool (%error1%)
ECHO 
ECHO.
ECHO 2.  Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO monero1
IF %M%==2 GOTO HOME
IF %M% GTR 3 GOTO EOF
IF %M% LSS 0 GOTO EOF

:NXS_Menu
CLS
SET POOL1=nexusminingpool.com 
SET POOL2=nxscpupool.com
SET POOL3=nxsminingpool.com
SET POOL4=nxspool.com
ECHO Please wait
ECHO We will now verify the pools status

ping -n 1 %POOL1% | find "TTL="
if errorlevel 1 (
set error1=Failed
) else (
set error1=Good
)

ping -n 1 %POOL2% | find "TTL="
if errorlevel 1 (
set error2=Failed
) else (
set error2=Good
)

ping -n 1 %POOL3% | find "TTL="
if errorlevel 1 (
 set error3=Failed
 ) else (
 set error3=Good
 )
 
ping -n 1 %POOL4% | find "TTL="
if errorlevel 1 (
set error4=Failed
) else (
set error4=Good
)
CLS
ECHO ====================================================
ECHO *                     Nexus                        *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %NXS_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  CPUMINER - Nexus to epool Pool (https://nexusminingpool.com) (%error1%)
ECHO 2.  CPUMINER - Nexus to epool Pool (https://nxscpupool.com) (%error2%)
ECHO 3.  CPUMINER - Nexus to epool Pool (https://nxsminingpool.com) (%error3%)
ECHO 4.  CPUMINER - Nexus to epool Pool (https://nxspool.com) (%error4%)
ECHO.
ECHO 5. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO nexus1
IF %M%==2 GOTO nexus2
IF %M%==3 GOTO nexus3
IF %M%==4 GOTO nexus4
IF %M%==5 GOTO HOME
IF %M% GTR 6 GOTO EOF
IF %M% LSS 0 GOTO EOF

:UIS_Menu
CLS
SET POOL1=mine.unitus.online
SET POOL2=zpool.ca

ECHO Please wait
ECHO We will now verify the pools status

ping -n 1 %POOL1% | find "TTL="
if errorlevel 1 (
set error1=Failed
) else (
set error1=Good
)
ping -n 1 %POOL2% | find "TTL="
if errorlevel 1 (
set error2=Failed
) else (
set error2=Good
)

CLS
ECHO ====================================================
ECHO *                     Unitus                       *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %UIS_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  CPUMINER - Unitus Argon2d to epool Pool (https://mine.unitus.online) (%error1%)
ECHO 2.  CPUMINER - Unitus Yescrypt to epool Pool (https://zpool.ca) (%error2%)
ECHO.
ECHO 3. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO unitus1
IF %M%==2 GOTO unitus2
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:ALL
CLS
ECHO ====================================================
ECHO *                    Monero (XMR)                  *
ECHO ====================================================
ECHO 1.  CPU ONLY - XMRminer - XMR to Nanopool (needs work)
ECHO ====================================================
ECHO *                     Nexus                        *
ECHO ====================================================
ECHO 2.  CPUMINER - Nexus to epool Pool (https://nexusminingpool.com)
ECHO 3.  CPUMINER - Nexus to epool Pool (https://nxscpupool.com)
ECHO 4.  CPUMINER - Nexus to epool Pool (https://nxsminingpool.com)
ECHO 5.  CPUMINER - Nexus to epool Pool (https://nxspool.com)
ECHO ====================================================
ECHO *                     Unitus                       *
ECHO ====================================================
ECHO 6.  CPUMINER - Unitus Argon2d to epool Pool (https://mine.unitus.online)
ECHO 7.  CPUMINER - Unitus Yescrypt to epool Pool (https://zpool.ca)
ECHO.
ECHO 8. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

:MinerSwitch
IF %M%==1 GOTO monero1
IF %M%==2 GOTO nexus1
IF %M%==3 GOTO nexus2
IF %M%==4 GOTO nexus3
IF %M%==5 GOTO nexus4
IF %M%==6 GOTO unitus1
IF %M%==7 GOTO unitus2
IF %M%==8 GOTO HOME
IF %M% GTR 9 GOTO EOF
IF %M% LSS 0 GOTO EOF

::
:: Monero Miners
::
:monero1
Title BBT Multi-Miner - XMR CPU Miner (XMR)
ECHO CPU ONLY - Claymore - XMR to Nanopool
(
ECHO ^"cpu_thread_num" : 2,
ECHO "cpu_threads_conf" : [ 
ECHO	{ "low_power_mode" : false, "no_prefetch" : false, "affine_to_cpu" : 0 },
ECHO	{ "low_power_mode" : false, "no_prefetch" : false, "affine_to_cpu" : 1 },
ECHO ],
ECHO "use_slow_memory" : "warn",
ECHO "nicehash_nonce" : false,
ECHO "pool_address" : "xmr-eu1.nanopool.org:14433",
ECHO "wallet_address" : "%XMR_WALLET_ADDRESS%",
ECHO "pool_password" : "x",
ECHO "call_timeout" : 10,
ECHO "retry_time" : 10,
ECHO "verbose_level" : 3,
ECHO "h_print_time" : 60,
ECHO "httpd_port" : 0,
ECHO "prefer_ipv4" : true,
) > %~dp0..\Miners\xmr-stak-cpu\Windows\Config.txt
sleep 10
%XMR_STAK_MINER% %~dp0..\Miners\xmr-stak-cpu\Windows\Config.txt
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Nexus Miners
::
:nexus1
Title BBT Multi-Miner - NexusPrimePoolMiner (Nexus)
mode con: cols=170 lines=14
SET /a sthreads=%NUMBER_OF_PROCESSORS% / 3
SET /a pthreads=%NUMBER_OF_PROCESSORS% - 1
ECHO NexusPrimePoolMiner - Nexus to epool Pool (https://nexusminingpool.com)
%NexusCPUMiner% nexusminingpool.com 9549 %NXS_WALLET_ADDRESS% %sthreads% %pthreads% 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:nexus2
Title BBT Multi-Miner - NexusPrimePoolMiner (Nexus)
mode con: cols=170 lines=14
SET /a sthreads=%NUMBER_OF_PROCESSORS% / 3
SET /a pthreads=%NUMBER_OF_PROCESSORS% - 1
ECHO NexusPrimePoolMiner - Nexus to epool Pool (https://nxscpupool.com)
%NexusCPUMiner% nxscpupool.com 9549 %NXS_WALLET_ADDRESS% %sthreads% %pthreads% 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:nexus3
Title BBT Multi-Miner - NexusPrimePoolMiner (Nexus)
mode con: cols=170 lines=14
SET /a sthreads=%NUMBER_OF_PROCESSORS% / 3
SET /a pthreads=%NUMBER_OF_PROCESSORS% - 1
ECHO NexusPrimePoolMiner - Nexus to epool Pool (https://nxsminingpool.com)
%NexusCPUMiner% nxsminingpool.com 9549 %NXS_WALLET_ADDRESS% %sthreads% %pthreads% 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:nexus4
Title BBT Multi-Miner - NexusPrimePoolMiner (Nexus)
mode con: cols=170 lines=14
SET /a sthreads=%NUMBER_OF_PROCESSORS% / 3
SET /a pthreads=%NUMBER_OF_PROCESSORS% - 1
ECHO NexusPrimePoolMiner - Nexus to epool Pool (https://nxspool.com)
%NexusCPUMiner% nxspool.com 9549 %NXS_WALLET_ADDRESS% %sthreads% %pthreads% 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Unitus Miners
::
:unitus1
Title BBT Multi-Miner - CPUMiner (Unitus-Argon2d)
ECHO CPUMiner - Unitus Merge Mine to epool Pool (https://mine.unitus.online)
SET /a uthreads=%NUMBER_OF_PROCESSORS% -1
%CPUMINER% -a argon2d -o stratum+tcp://argon.mine.unitus.online:3003 -O %UIS_WALLET_ADDRESS%:x -t %uthreads%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:unitus2
Title BBT Multi-Miner - CPUMiner (Unitus-yescrypt)
ECHO CPUMiner - Unitus Merge Mine to epool Pool (https://zpool.ca)
SET /a uthreads=%NUMBER_OF_PROCESSORS% -1
%CPUMINER% -a yescrypt -o stratum+tcp://yescrypt.mine.zpool.ca:6233 -O %UIS_WALLET_ADDRESS%:c=UIS -t %uthreads%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:exit
ECHO Error while running miner
pause

:EOF