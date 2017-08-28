@echo off
setlocal EnableDelayedExpansion
mode con: cols=120 lines=50
Title BBT Multi-Miner
rem **********************************************************************
rem *         BBT Multi-Miner Easy Batch File  v4 by BBT & alon7         *
rem *     Featuring Claymore, SGMiner, CCMiner, EBWF's Miner and more    *
rem *   Pre-Configured syntax, just update address/worker                *
rem *    Eth, Etc, Xmr, Lbry, Sia, Zcash, Pasc, Hush, DBIX, ubiq and more*
rem **********************************************************************
rem * BEST VIEWED IN FULL SCREEN 1920x1080
rem **********************************************************************
rem * Environment Setup                                         
rem echo on


::
:: Wallets
::
SET ETH_WALLET_ADDRESS=0xF897EaFdb787AcD4Da5e2EB5003E42dc1Ef86d39
SET ETC_WALLET_ADDRESS=0x89b455cfd5adb8ba4a69fd6bd082b3d61efe160f
SET XMR_WALLET_ADDRESS=452eu5HWBcTEwQfwkRFHp9MgC39DhtAio5um8mEs6ZRgcyq9V3Gy3GbJfyASSxepSRQRe6SHcQ27xgorYzyZrn6DSVmWvuw.4d8ddccc40568d93
SET SIA_WALLET_ADDRESS=6ce3c1dc8444ce3dc362425124853e0f32e930eaae1dedc6e919a08d8b6664bf71bd744dda24
SET ZCASH_WALLET_ADDRESS=t1dBorBoRyznDaRyQzEEB4SkvmCFhmF2ZYk
SET PASCAL_WALLET_ADDRESS=86646-64.59e76e7d7a498fbc
SET HUSH_WALLET_ADDRESS=t1MmWWevkAxB282JqtpY4bK7njF7XPfcH2n
SET LBRY_WALLET_ADDRESS=bitsbetrippin
SET EXP_WALLET_ADDRESS=0x00d27FC9623282422A836590CdD75e5A109850ff
SET DECRED_WALLET_ADDRESS=bitsbetrippin
SET DBIX_WALLET_ADDRESS=0x4c04f53f3bf154aa68f78f45b75f0c9dec120796
SET UBIQ_WALLET_ADDRESS=0xb85150eb365e7df0941f0cf08235f987ba91506a
SET MUSIC_WALLET_ADDRESS=0xf09522eba78fcd890e2de503b38cadd436df3845
SET NXS_WALLET_ADDRESS=2RGMypvsvDxbYUXUDKJ9zc4Cd6ZuE6SVq6ggmLupLgoNU9xmCEn
SET UIS_WALLET_ADDRESS=UkujvUHDLTWqRwLZvBw2vzgEYbLXHqpsw4

::
:: Names
::
SET MINER_NAME=bbtworker01
SET EMAIL_ADDRESS=bitsbetrippin1@gmail.com

::
:: Miners
::
SET ETHMINER_NVIDIA_OPTIMIZED="%~dp0\Miners\ethminer\v0.11.0_Nvidia_Optimized\Windows\ethminer.exe"
SET CLAYMORE_DUAL_ETHEREUM="%~dp0\Miners\Claymore\Dual_Ethereum\v9.7\Windows\EthDcrMiner64.exe"
SET CLAYMORE_CRYPTONOTE="%~dp0\Miners\Claymore\CryptoNote_GPU\v9.7\Windows\NsGpuCNMiner.exe"
SET CLAYMORE_ZCASH_AMD_GPU="%~dp0\Miners\Claymore\Claymore_ZCash_AMD_GPU\v12.5\Windows\ZecMiner64.exe"
SET ZEC_MINER="%~dp0\Miners\Zec_Miner\v0.3.4b\Windows\miner.exe"
SET CCMINER2_CUDA="%~dp0\Miners\ccminer\v2.0-cuda8\Windows\ccminer-x64.exe"
SET TSIV_XMR_NVIDIA="%~dp0\Miners\ccminer\tsiv\Windows\ccminer.exe"
SET EXCAVATOR_NVIDIA="%~dp0\Miners\excavator\v1.1.0a\Windows\excavator.exe"
SET GOMINER="%~dp0\Miners\gominer\v1.0.0\Windows\gominer.exe"
SET SGMINER_AMD="%~dp0\Miners\sgminer\v5.5.0\Windows\sgminer.exe"
SET SGMINER_CHAINCOIN="%~dp0\Miners\sgminer\v4.1.0-chaincoin\Windows\sgminer.exe"
SET SGMINER_NICEHASH="%~dp0\Miners\sgminer\v5.6.1-nicehash\Windows\sgminer.exe"
SET NEXUSCPUMINER="%~dp0\Miners\NexusMiner\Windows\nexus_cpuminer.exe"
SET CPUMINER="%~dp0\Miners\CPUMiner\Windows\unitus_cpuminer-x64-generic.exe"

setx GPU_FORCE_64BIT_PTR 0 >nul 2>&1
setx GPU_MAX_HEAP_SIZE 100 >nul 2>&1
setx GPU_USE_SYNC_OBJECTS 1 >nul 2>&1
setx GPU_MAX_ALLOC_PERCENT 100 >nul 2>&1
setx GPU_SINGLE_ALLOC_PERCENT 100 >nul 2>&1

rem echo off
rem **Instructions******************************************************* 
rem **Replace the wallet & POOL addresses!!!!                           *
rem **Replace the miner name and the email address                      *
rem **Then run and choose :)                                            * 
rem *********************************************************************

rem **Available pools****************************************************
rem **You can change pool addresses to match your physical area         *
rem *********************************************************************

rem ** Ethereum *********************************************************
rem ******* Ethermine.org:
rem ************ North America (East): us1.ethermine.org:4444 or us1.ethermine.org:14444
rem ************ North America (West): us2.ethermine.org:4444 or us2.ethermine.org:14444
rem ************ Europe (France): eu1.ethermine.org:4444 or eu1.ethermine.org:14444
rem ************ Europe (Germany): eu2.ethermine.org:4444 or eu2.ethermine.org:14444
rem ************ Asia: asia1.ethermine.org:4444 or asia1.ethermine.org:14444
rem ******* Nanopool.org:
rem ** https://eth.nanopool.org/help
rem ************ Europe (1): eth-eu1.nanopool.org:9999
rem ************ Europe (2): eth-eu2.nanopool.org:9999
rem ************ North America (East): eth-us-east1.nanopool.org:9999
rem ************ North America (West): eth-us-west1.nanopool.org:9999
rem ************ Asia: eth-asia1.nanopool.org:9999

rem ** Ethereum Classic *************************************************
rem ******* Ethermine.org:
rem ************ North America: us1-etc.ethermine.org:4444 or us1-etc.ethermine.org:14444
rem ************ Europe: eu1-etc.ethermine.org:4444 or eu1-etc.ethermine.org:14444
rem ******* Nanopool.org:
rem ** https://etc.nanopool.org/help
rem ************ Europe (1): etc-eu1.nanopool.org:19999
rem ************ Europe (2): etc-eu2.nanopool.org:19999
rem ************ North America (East): etc-us-east1.nanopool.org:19999
rem ************ North America (West): etc-us-west1.nanopool.org:19999
rem ************ Asia: etc-asia1.nanopool.org:19999

rem ** Monero (XMR)  *****************************************************
rem ******* Nanopool.org:
rem ** https://xmr.nanopool.org/help
rem ************ Europe (1): xmr-eu1.nanopool.org:14444 or xmr-eu1.nanopool.org:14433
rem ************ Europe (2): xmr-eu2.nanopool.org:14444 or xmr-eu2.nanopool.org:14433
rem ************ North America (East): xmr-us-east1.nanopool.org:14444 or xmr-us-east1.nanopool.org:14433
rem ************ North America (West): xmr-us-west1.nanopool.org:14444 or xmr-us-west1.nanopool.org:14433
rem ************ Asia: xmr-asia1.nanopool.org:14444 or xmr-asia1.nanopool.org:14433

rem ** ZCash  ************************************************************
rem ******* Nanopool.org:
rem ** https://zec.nanopool.org/help
rem ************ Europe (1): zec-eu1.nanopool.org:6666 or zec-eu1.nanopool.org:6633 
rem ************ Europe (2): zec-eu2.nanopool.org:6666 or zec-eu2.nanopool.org:6633 
rem ************ North America (East): zec-us-east1.nanopool.org:6666 or zec-us-east1.nanopool.org:6633 
rem ************ North America (West): zec-us-west1.nanopool.org:6666 or zec-us-west1.nanopool.org:6633 
rem ************ Asia: zec-asia1.nanopool.org:6666 or zec-asia1.nanopool.org:6633 

rem ** SiaCoin  *********************************************************
rem ******* Nanopool.org:
rem ** https://sia.nanopool.org/help
rem ************ Europe (1): sia-eu1.nanopool.org:7777
rem ************ Europe (2): sia-eu2.nanopool.org:7777
rem ************ North America (East): sia-us-east1.nanopool.org:7777
rem ************ North America (West): sia-us-west1.nanopool.org:7777
rem ************ Asia: sia-asia1.nanopool.org:7777

rem ** PascalCoin  *********************************************************
rem ******* Nanopool.org:
rem ** https://pasc.nanopool.org/help
rem ************ Europe (1): pasc-eu1.nanopool.org:15555
rem ************ Europe (2): pasc-eu2.nanopool.org:15555
rem ************ North America (East): pasc-us-east1.nanopool.org:15555
rem ************ North America (West): pasc-us-west1.nanopool.org:15555
rem ************ Asia: pasc-asia1.nanopool.org:15555

rem ** Hush  ***************************************************************
rem ******* http://zdash.miningspeed.com:
rem ** http://zdash.miningspeed.com/getting_started
rem ************ mining.miningspeed.com:3092

rem ** Lbry  ***************************************************************
rem ******* http://zdash.miningspeed.com:
rem ** https://www2.coinmine.pl/lbc/
rem ************ lbc-us.coinmine.pl:8787

rem ** Dbix  ***************************************************************
rem ******* http://dbix.pool.sexy/#/:
rem ************ dbix.pool.sexy:7007
rem ******* http://dbix.hodlpool.com/#/:
rem ** http://dbix.hodlpool.com/#/
rem ************ dbix.hodlpool.com:8007

rem ** Ubiq  ***************************************************************
rem ******* ubiqpool.io:
rem ** http://ubiqpool.io/#/help
rem ************ us.ubiqpool.io:8888
rem ******* http://ubq.pool.sexy:
rem ************ ubq.pool.sexy:9009
rem ******* http://hodlpool.com/:
rem ** http://ubiq.hodlpool.com/
rem ************ ubiq.hodlpool.com:8009

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
ECHO *         BBT Multi-Miner Easy Batch File v4 by BBT, alon7 and Commstech Featuring Claymore, SGMiner, CCMiner,       *
ECHO * EBWF's Miner and Pre-Configured syntax, just update address/worker and run this .bat                               *
ECHO *    Eth, Etc, Xmr, Lbry, Sia, Zcash, Pasc, Hush, DBIX, ubiq and more                                                *
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
ECHO 1.  Ethereum (ETH)
ECHO 2.  Ethereum Classic (ETC)
ECHO 3.  Monero (XMR)
ECHO 4.  ZCash (ZEC)
ECHO 5.  SiaCoin (SC)
ECHO 6.  PascalCoin (PASC)
ECHO 7.  Hush (HUSH)
ECHO 8.  LBRY (LBC)
ECHO 9.  DubaiCoin (DBIX)
ECHO 10. UBIQ (UBQ)
ECHO 11. Expanse (EXP)
ECHO 12. Chaincoin (CHC)
ECHO 13. Digibyte (DGB)
ECHO 14. Feathercoin (FTC)
ECHO 15. Musiccoin (MUSIC)
ECHO 16. Nexus (NXS)
ECHO 17. Unitus (UIS)
ECHO.
ECHO 18 - Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO ETH_Menu
IF %M%==2 GOTO ETC_Menu
IF %M%==3 GOTO XMR_Menu
IF %M%==4 GOTO ZEC_Menu
IF %M%==5 GOTO SC_Menu
IF %M%==6 GOTO PASC_Menu
IF %M%==7 GOTO HUSH_Menu
IF %M%==8 GOTO LBRY_Menu
IF %M%==9 GOTO DBIX_Menu
IF %M%==10 GOTO UBIQ_Menu
IF %M%==11 GOTO EXP_Menu
IF %M%==12 GOTO CHC_Menu
IF %M%==13 GOTO DGB_Menu
IF %M%==14 GOTO FTC_Menu
IF %M%==15 GOTO MUSIC_Menu
IF %M%==16 GOTO NXS_Menu
IF %M%==17 GOTO UIS_Menu
IF %M%==18 GOTO HOME
IF %M% GTR 19 GOTO EOF
IF %M% LSS 0 GOTO EOF


:ETH_Menu
CLS
SET POOL1=Ethermine.org  
SET POOL2=nanopool.org
SET POOL3=Suprnova.cc
SET POOL4=coinmine.pl
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
ECHO *                     ETHEREUM                     *
ECHO ====================================================
ECHO  please verify YOUR info below
ECHO  %ETH_WALLET_ADDRESS%
ECHO  %MINER_NAME%
ECHO  %EMAIL_ADDRESS%
ECHO  If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only (%error1%)
ECHO 2.  NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only (%error2%)
ECHO 3.  AMD and NVIDIA Claymore - Eth Only Ethermine.org (%error1%)
ECHO 4.  AMD and NVIDIA Claymore - Eth Ethermine.org (%error1%) and Siacoin to Nanopool (%error2%)
ECHO 5.  AMD and NVIDIA Claymore - Eth Ethermine.org (%error1%) and Decred to Suprnova.cc Pool (%error3%)
ECHO 6.  AMD and NVIDIA Claymore - Eth Ethermine.org (%error1%) and Lbry Credits to Coinmine.pl (%error4%)
ECHO 7.  AMD and NVIDIA Claymore - Eth Ethermine.org (%error1%) and PascalCoin to Nanopool (%error2%)
ECHO 8.  AMD and NVIDIA Claymore - Eth Nanopool Only (%error2%)
ECHO 9.  AMD and NVIDIA Claymore - Eth Nanopool (%error2%) and Siacoin to Nanopool (%error2%)
ECHO 10. AMD and NVIDIA Claymore - Eth Nanopool (%error2%) and Pascal to Nanopool (%error2%)
ECHO.
ECHO 11. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO ethereum1
IF %M%==2 GOTO ethereum2
IF %M%==3 GOTO ethereum3
IF %M%==4 GOTO ethereum4
IF %M%==5 GOTO ethereum5
IF %M%==6 GOTO ethereum6
IF %M%==7 GOTO ethereum7
IF %M%==8 GOTO ethereum8
IF %M%==9 GOTO ethereum9
IF %M%==10 GOTO ethereum10
IF %M%==11 GOTO HOME
IF %M% GTR 12 GOTO EOF
IF %M% LSS 0 GOTO EOF

:ETC_Menu
CLS
SET POOL1=nanopool.org 
SET POOL2=Suprnova.cc

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
ECHO *                  ETHEREUM Classic                *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %ETC_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1. NVIDIA ONLY - Optimized Ethminer - Etc nanopool (%error1%)
ECHO 2. AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool (%error1%)
ECHO 3. AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool (%error1%)
ECHO 4. AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool (%error2%)
ECHO 5. AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool (%error1%)
ECHO.
ECHO 6. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO ethereumc1
IF %M%==2 GOTO ethereumc2
IF %M%==3 GOTO ethereumc3
IF %M%==4 GOTO ethereumc4
IF %M%==5 GOTO ethereumc5
IF %M%==6 GOTO HOME
IF %M% GTR 7 GOTO EOF
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
ECHO 1.  AMD ONLY - Claymore - XMR to Nanopool (%error1%)
ECHO 2.  NVIDIA ONLY - TSIV CCMiner XMR to Nanopool (%error1%)
ECHO.
ECHO 3.  Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO monero1
IF %M%==2 GOTO monero2
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:ZEC_Menu
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
ECHO *                       ZCASH                      *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %ZCASH_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD ZCash Claymore - Zcash to Nanopool (%error1%) AMD Only
ECHO 2.  NVIDIA Excavator - Zcash to Nanopool (%error1%) NVIDIA Only
ECHO 3.  NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool (%error1%) NVIDIA Only
ECHO.
ECHO 4.  Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO zcash1
IF %M%==2 GOTO zcash2
IF %M%==3 GOTO zcash3
IF %M%==4 GOTO HOME
IF %M% GTR 5 GOTO EOF
IF %M% LSS 0 GOTO EOF

:SC_Menu
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
ECHO *                      SIACOIN                     *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %SIA_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.   AMD and NVIDIA Gominer - Siacoin to Nanopool Only (%error1%)
ECHO.
ECHO 2.   Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO siacoin1
IF %M%==2 GOTO HOME
IF %M% GTR 3 GOTO EOF
IF %M% LSS 0 GOTO EOF

:PASC_Menu
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
ECHO *                    PASCALCOIN                    *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %PASCAL_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool (%error1%)
ECHO 2.  NVIDIA Excavator - PascalCoin to Nanopool (%error1%)
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

IF %M%==1 GOTO pascal1
IF %M%==2 GOTO pascal2
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:HUSH_Menu
CLS
SET POOL1=zdash.miningpseed.com  

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
ECHO *                       HUSH                       *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %HUSH_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD HUSH Claymore - Hush to zdash.miningpseed.com (%error1%) AMD Only
ECHO 2.  NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com (%error1%) NVIDIA Only
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

IF %M%==1 GOTO hush1
IF %M%==2 GOTO hush2
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:LBRY_Menu
CLS
SET POOL1=coinmine.pl  

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
ECHO *                       LBRY                       *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %LBRY_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl (%error1%) NVIDIA ONLY
ECHO 2.  AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl (%error1%) AMD ONLY
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

IF %M%==1 GOTO lbry1
IF %M%==2 GOTO lbry2
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:DBIX_Menu
CLS
SET POOL1=hodlpool.com  
SET POOL2=sexy.pool
SET POOL3=nanopool.org

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
 
CLS
ECHO ====================================================
ECHO *                       DBIX                       *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %DBIX_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool (%error2%) and Siacoin to Nanopool (%error3%)
ECHO 2.  AMD and NVIDIA Claymore - DBIX to Hodl Pool (%error1%) Only
ECHO 3.  AMD and NVIDIA Claymore - DBIX to Hodl Pool (%error1%) and Siacoin to Nanopool (%error3%)
ECHO 4.  
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

IF %M%==1 GOTO dbix1
IF %M%==2 GOTO dbix2
IF %M%==3 GOTO dbix3
IF %M%==4 GOTO dbix4
IF %M%==5 GOTO HOME
IF %M% GTR 6 GOTO EOF
IF %M% LSS 0 GOTO EOF

:UBQ_Menu
CLS
SET POOL1=ubiqpool.io 
SET POOL2=sexy.pool
SET POOL3=nanopool.org
SET POOL4=ubiq.hodlpool.com
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
ECHO *                       UBIQ                       *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %UBIQ_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only (%error1%)
ECHO 2.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only (%error2%)
ECHO 3.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool (%error4%)
ECHO 4.  AMD and NVIDIA Claymore - Ubiq to UbiqPool (%error1%) and Siacoin to Nanopool (%error3%)
ECHO 5.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool (%error4%) and Siacoin to Nanopool (%error3%)
ECHO 6.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool (%error2%) and Siacoin to Nanopool (%error3%)
ECHO.
ECHO 7. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO ubiq1
IF %M%==2 GOTO ubiq2
IF %M%==3 GOTO ubiq3
IF %M%==4 GOTO ubiq4
IF %M%==5 GOTO ubiq5
IF %M%==6 GOTO ubiq6
IF %M%==7 GOTO HOME
IF %M% GTR 8 GOTO EOF
IF %M% LSS 0 GOTO EOF

:EXP_Menu
CLS
SET POOL1=exp.hodlpool.com 
SET POOL2=exp.digger.ws

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
ECHO *                      Expanse                     *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %EXP_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD and NVIDIA Claymore - Expanse to Hodl Pool (%error1%)
ECHO 2.  AMD and NVIDIA Claymore - Expanse to ExpansePool (%error2%)
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

IF %M%==1 GOTO exp1
IF %M%==2 GOTO exp1
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:CHC_Menu
CLS
SET POOL1=supernova.cc  

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
ECHO *                     Chaincoin                    *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %CHC_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD - Chaincoin to Suprnova.cc (%error1%)
ECHO 2.  Nvidia - Chaincoin to Suprnova.cc (%error1%)
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

IF %M%==1 GOTO chc1
IF %M%==2 GOTO chc2
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:DGB_Menu
CLS
SET POOL1=supernova.cc  

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
ECHO *                     Digibyte                     *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %DGB_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD - Digibyte to Suprnova.cc (%error1%)
ECHO 2.  NVIDIA - Digibyte to Suprnova.cc (%error1%)
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

IF %M%==1 GOTO dgb1
IF %M%==2 GOTO dgb2
IF %M%==3 GOTO HOME
IF %M% GTR 4 GOTO EOF
IF %M% LSS 0 GOTO EOF

:FTC_Menu
CLS
SET POOL1=f2pool.com  

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
ECHO *                    Feathercoin                   *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %FTC_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  NVIDIA - FTC to F2Pool (%error1%) FTC **AMD Version soon!
ECHO.
ECHO 2. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO ftc1
IF %M%==2 GOTO HOME
IF %M% GTR 3 GOTO EOF
IF %M% LSS 0 GOTO EOF

:MUSIC_Menu
CLS
SET POOL1=gmc.epool.io  
SET POOL2=nanopool.org

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
ECHO *                     MusicCoin                    *
ECHO ====================================================
ECHO please verify YOUR info below
ECHO %MUSIC_WALLET_ADDRESS%
ECHO %MINER_NAME%
ECHO %EMAIL_ADDRESS%
ECHO If any of this is incorrect exit and edit this .bat file
ECHO.
ECHO 1.  AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io) (%error1%)
ECHO 2.  AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io) (%error1%) and Siacoin to Nanopool (%error2%)
ECHO 3. 
ECHO.
ECHO 4. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

IF %M%==1 GOTO musiccoin1
IF %M%==2 GOTO musiccoin2
IF %M%==3 GOTO musiccoin3
IF %M%==4 GOTO HOME
IF %M% GTR 5 GOTO EOF
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
ECHO ====================================================
ECHO *                     ETHEREUM                     *
ECHO ====================================================
ECHO 1.  NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
ECHO 2.  NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
ECHO 3.  AMD and NVIDIA Claymore - Eth Only Ethermine.org
ECHO 4.  AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
ECHO 5.  AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
ECHO 6.  AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
ECHO 7.  AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
ECHO 8.  AMD and NVIDIA Claymore - Eth Nanopool Only
ECHO 9.  AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool
ECHO 10. AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
ECHO ====================================================
ECHO *                  ETHEREUM Classic                *
ECHO ====================================================
ECHO 11. NVIDIA ONLY - Optimized Ethminer - Etc nanopool
ECHO 12. AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
ECHO 13. AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
ECHO 14. AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
ECHO 15. AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
ECHO ====================================================
ECHO *                    Monero (XMR)                  *
ECHO ====================================================
ECHO 16.  AMD ONLY - Claymore - XMR to Nanopool
ECHO 17.  NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
ECHO ====================================================
ECHO *                       ZCASH                      *
ECHO ====================================================
ECHO 18.  AMD ZCash Claymore - Zcash to Nanopool AMD Only
ECHO 19.  NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
ECHO 20.  NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ECHO ====================================================
ECHO *                      SIACOIN                     *
ECHO ====================================================
ECHO 21.   AMD and NVIDIA Gominer - Siacoin to Nanopool Only
ECHO ====================================================
ECHO *                    PASCALCOIN                    *
ECHO ====================================================
ECHO 22.  AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
ECHO 23.  NVIDIA Excavator - PascalCoin to Nanopool
ECHO ====================================================
ECHO *                       HUSH                       *
ECHO ====================================================
ECHO 24.  AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
ECHO 25.  NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ECHO ====================================================
ECHO *                       LBRY                       *
ECHO ====================================================
ECHO 26.  NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ECHO 27.  AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
ECHO ====================================================
ECHO *                       DBIX                       *
ECHO ====================================================
ECHO 28.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only
ECHO 29.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool
ECHO 30.  AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
ECHO 31.  AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
ECHO ====================================================
ECHO *                       UBIQ                       *
ECHO ====================================================
ECHO 32.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
ECHO 33.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only
ECHO 34.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool
ECHO 35.  AMD and NVIDIA Claymore - Ubiq to UbiqPool  and Siacoin to Nanopool
ECHO 36.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
ECHO 37.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool
ECHO ====================================================
ECHO *                      Expanse                     *
ECHO ====================================================
ECHO 38.  AMD and NVIDIA Claymore - Expanse to Hodl Pool
ECHO 39.  AMD and NVIDIA Claymore - Expanse to ExpansePool
ECHO ====================================================
ECHO *                     Chaincoin                    *
ECHO ====================================================
ECHO 40.  AMD - Chaincoin to Suprnova.cc
ECHO 41.  Nvidia - Chaincoin to Suprnova.cc
ECHO ====================================================
ECHO *                     Digibyte                     *
ECHO ====================================================
ECHO 42.  AMD - Digibyte to Suprnova.cc
ECHO 43.  NVIDIA - Digibyte to Suprnova.cc
ECHO ====================================================
ECHO *                    Feathercoin                   *
ECHO ====================================================
ECHO 44.  NVIDIA - FTC to F2Pool FTC **AMD Version soon!
ECHO ====================================================
ECHO *                     MusicCoin                    *
ECHO ====================================================
ECHO 45.  AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io)
ECHO 46.  AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io) and Siacoin to Nanopool
ECHO 47.
ECHO ====================================================
ECHO *                     Nexus                        *
ECHO ====================================================
ECHO 48.  CPUMINER - Nexus to epool Pool (https://nexusminingpool.com)
ECHO 49.  CPUMINER - Nexus to epool Pool (https://nxscpupool.com)
ECHO 50.  CPUMINER - Nexus to epool Pool (https://nxsminingpool.com)
ECHO 51.  CPUMINER - Nexus to epool Pool (https://nxspool.com)
ECHO ====================================================
ECHO *                     Unitus                       *
ECHO ====================================================
ECHO 52.  CPUMINER - Unitus Argon2d to epool Pool (https://mine.unitus.online)
ECHO 53.  CPUMINER - Unitus Yescrypt to epool Pool (https://zpool.ca)
ECHO.
ECHO 54. Home
ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

:MinerSwitch
IF %M%==1 GOTO ethereum1
IF %M%==2 GOTO ethereum2
IF %M%==3 GOTO ethereum3
IF %M%==4 GOTO ethereum4
IF %M%==5 GOTO ethereum5
IF %M%==6 GOTO ethereum6
IF %M%==7 GOTO ethereum7
IF %M%==8 GOTO ethereum8
IF %M%==9 GOTO ethereum9
IF %M%==10 GOTO ethereum10
IF %M%==11 GOTO ethereumc1
IF %M%==12 GOTO ethereumc2
IF %M%==13 GOTO ethereumc3
IF %M%==14 GOTO ethereumc4
IF %M%==15 GOTO ethereumc5
IF %M%==16 GOTO monero1
IF %M%==17 GOTO monero2
IF %M%==18 GOTO zcash1
IF %M%==19 GOTO zcash2
IF %M%==20 GOTO zcash3
IF %M%==21 GOTO siacoin1
IF %M%==22 GOTO pascal1
IF %M%==23 GOTO pascal2
IF %M%==24 GOTO hush1
IF %M%==25 GOTO hush2
IF %M%==26 GOTO lbry1
IF %M%==27 GOTO lbry2
IF %M%==28 GOTO dbix1
IF %M%==29 GOTO dbix2
IF %M%==30 GOTO dbix3
IF %M%==31 GOTO dbix4
IF %M%==32 GOTO ubiq1
IF %M%==33 GOTO ubiq2
IF %M%==34 GOTO ubiq3
IF %M%==35 GOTO ubiq4
IF %M%==36 GOTO ubiq5
IF %M%==37 GOTO ubiq6
IF %M%==38 GOTO exp1
IF %M%==39 GOTO exp2
IF %M%==40 GOTO chc1
IF %M%==41 GOTO chc2
IF %M%==42 GOTO dgb1
IF %M%==43 GOTO dgb2
IF %M%==44 GOTO ftc1
IF %M%==45 GOTO musiccoin1
IF %M%==46 GOTO musiccoin2
IF %M%==47 GOTO musiccoin3
IF %M%==48 GOTO nexus1
IF %M%==49 GOTO nexus2
IF %M%==50 GOTO nexus3
IF %M%==51 GOTO nexus4
IF %M%==52 GOTO unitus1
IF %M%==53 GOTO unitus2
IF %M%==54 GOTO HOME
IF %M% GTR 55 GOTO EOF
IF %M% LSS 0 GOTO EOF


::
:: Ethereum miners
::
:ethereum1
Title BBT Multi-Miner - ETHMiner (ETH)
ECHO NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
%ETHMINER_NVIDIA_OPTIMIZED% --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum2
Title BBT Multi-Miner - ETHMiner (ETH)
ECHO NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
%ETHMINER_NVIDIA_OPTIMIZED% --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum3
Title BBT Multi-Miner - Claymore (ETH)
ECHO AMD and NVIDIA Claymore - Eth Only Ethermine.org
%CLAYMORE_DUAL_ETHEREUM% -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum4
Title BBT Multi-Miner - Claymore (ETH) and (SC)
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum5
Title BBT Multi-Miner - Claymore (ETH) and (DECRED)
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
%CLAYMORE_DUAL_ETHEREUM% -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum6
Title BBT Multi-Miner - Claymore (ETH) and (LBRY)
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
%CLAYMORE_DUAL_ETHEREUM% -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum7
Title BBT Multi-Miner - Claymore (ETH) and (PASC)
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dpsw x -dcoin pasc -ftime 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum8
Title BBT Multi-Miner - Claymore (ETH)
ECHO AMD and NVIDIA Claymore - Eth Nanopool Only
%CLAYMORE_DUAL_ETHEREUM% -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -mode 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum9
Title BBT Multi-Miner - Claymore (ETH) and (SC)
ECHO AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum10
Title BBT Multi-Miner - Claymore (ETH) and (PASC)
ECHO AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Ethereum Classic miners
::
:ethereumc1
Title BBT Multi-Miner - ETHMiner (ETC)
ECHO NVIDIA ONLY - Optimized Ethminer - Etc nanopool Only 
%ETHMINER_NVIDIA_OPTIMIZED% --farm-recheck 200 -G -S etc-us-east1.nanopool.org:19999 -O %ETC_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc2
Title BBT Multi-Miner - Claymore (ETC)
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -mode 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc3
Title BBT Multi-Miner - Claymore (ETC) and (SC)
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc4
Title BBT Multi-Miner - Claymore (ETC) and (DECRED)
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
%CLAYMORE_DUAL_ETHEREUM% -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc5
Title BBT Multi-Miner - Claymore (ETC) and (PASC)
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Monero Miners
::
:monero1
Title BBT Multi-Miner - Claymore (XMR)
ECHO AMD ONLY - Claymore - XMR to Nanopool
%CLAYMORE_CRYPTONOTE% -o ssl://xmr-eu1.nanopool.org:14433 -u %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p z -ftime 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:monero2
Title BBT Multi-Miner - CCMiner (XMR)
ECHO NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
%TSIV_XMR_NVIDIA% -q -o stratum+tcp://xmr-us-east1.nanopool.org:14444 -u %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -l 4x84
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: ZCash Miners
::
:zcash1
Title BBT Multi-Miner - Claymore (ZCASH)
ECHO ZCash Claymore - Zcash to Nanopool AMD Only
%CLAYMORE_ZCASH_AMD_GPU% -zpool ssl://zec-us-east1.nanopool.org:6633 -zwal %ZCASH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -zpsw z -ftime 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcash2
Title BBT Multi-Miner - Excavator (ZCASH)
ECHO NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
%EXCAVATOR_NVIDIA% -a equihash -s zec-us-east1.nanopool.org:6666 -u %ZCASH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -p 0 -d 2 -ca -ca 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcash3
Title BBT Multi-Miner - EWBF (ZCASH)
ECHO NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
%ZEC_MINER% --server zec-us-east1.nanopool.org --user %ZCASH_WALLET_ADDRESS%.%MINER_NAME%.%EMAIL_ADDRESS% --pass z --port 6666
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: SiaCoin Miners
::
:siacoin1
Title BBT Multi-Miner - Gominer (SC)
ECHO AMD and NVIDIA Gominer - Siacoin to Nanopool Only
%GOMINER% -I 28 -H sia-us-east1.nanopool.org:9980 -Q "address=%SIA_WALLET_ADDRESS%&worker=%MINER_NAME%&email=%EMAIL_ADDRESS%"
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: PascalCoin Miners
::
:pascal1
Title BBT Multi-Miner - SGMiner (PASC)
ECHO AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
%SGMINER_AMD% -k pascal -o stratum+tcp://pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -I 21 -w 64 -g2 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:pascal2
Title BBT Multi-Miner - Excavator (PASC)
ECHO NVIDIA Excavator - PascalCoin to Nanopool
%EXCAVATOR_NVIDIA% -a pascal -s pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -d 2 -ca 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Hush Miners
::
:hush1
Title BBT Multi-Miner - Claymore (HUSH)
ECHO AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
%CLAYMORE_ZCASH_AMD_GPU%
-zpool mining.miningspeed.com:3062
-zwal %HUSH_WALLET_ADDRESS%.%MINER_NAME%
-zpsw z
-allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:hush2
Title BBT Multi-Miner - EWBF Miner (HUSH)
ECHO NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
%ZEC_MINER% --server mining.miningspeed.com --user %HUSH_WALLET_ADDRESS%.%MINER_NAME% --pass z --port 3092
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Lbry Miners
::
:lbry1
Title BBT Multi-Miner - CCMiner (LBRY)
ECHO NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
%CCMINER2_CUDA% -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -a lbry
if %ERRORLEVEL% NEQ 0 goto exit
pause

:lbry2
:: Not working for now
Title BBT Multi-Miner - SGMiner (LBRY)
ECHO AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
%CCMINER2_CUDA% --kernel lbry -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -p x -I 19 -w 64 -g 4
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Dbix Miners
::
:dbix1
Title BBT Multi-Miner - Claymore (DBIX)
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.pool only
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix2
Title BBT Multi-Miner - Claymore (DBIX) and (SC)
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.Pool and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix3
Title BBT Multi-Miner - Claymore (DBIX)
ECHO AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix4
Title BBT Multi-Miner - Claymore (DBIX) and (SC)
ECHO AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Ubiq Miners
::

:ubiq1
Title BBT Multi-Miner - Claymore (UBIQ)
ECHO AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq2
Title BBT Multi-Miner - Claymore (UBIQ)
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool Only
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq3
Title BBT Multi-Miner - Claymore (UBIQ)
ECHO AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://ubq.pool.sexy:9009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq4
Title BBT Multi-Miner - Claymore (UBIQ) and (SC)
ECHO AMD and NVIDIA Claymore - Ubiq to UbiqPool and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq5
Title BBT Multi-Miner - Claymore (UBIQ) and (SC)
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq6
Title BBT Multi-Miner - Claymore (UBIQ) and (SC)
ECHO AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://ubq.pool.sexy:9009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Expanse miners
::
:exp1
Title BBT Multi-Miner - Claymore (Expanse)
ECHO AMD and NVIDIA Claymore - Expanse to Hodl Pool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://exp.hodlpool.com:8003 -ewal %EXP_WALLET_ADDRESS% -epsw x -esm 0 -allcoins exp -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:exp2
Title BBT Multi-Miner - Claymore (Expanse)
ECHO AMD and NVIDIA Claymore - Expanse to Hodl Pool
%CLAYMORE_DUAL_ETHEREUM% -epool exp.digger.ws:7008 -ewal %EXP_WALLET_ADDRESS% -epsw x -esm 0 -allcoins exp -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Chaincoin Miners
::
:chc1
Title BBT Multi-Miner - SGMiner (Chaincoin)
ECHO AMD SGMiner Chaincoin - Chaincoin to Suprnova.cc AMD ONLY
%SGMINER_CHAINCOIN% -k chaincoin -o stratum+tcp://chc-supernova.cc:5888 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -I 18 -g 4 -w 128 --lookup-gap 4 -s 1 --queue 1 -E 15
if %ERRORLEVEL% NEQ 0 goto exit
pause

:chc2
Title BBT Multi-Miner - CCMiner (Chaincoin)
ECHO NVIDIA CCMiner Chaincoin Miner - Chaincoin to Suprnova.cc NVIDIA ONLY
%CCMINER2_CUDA% -o stratum+tcp://chc.suprnova.cc:5888 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -a c11
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Digibyte Miners
::
:dgb1
Title BBT Multi-Miner - SGMiner (Digibyte)
ECHO AMD SGMiner DGB Miner - Digibyte to Suprnova.cc AMD Only
%SGMINER_NICEHASH% -o stratum+tcp://dgbg.suprnova.cc:7978 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -I 20 -g 4 -w 128 -k myriadcoin-groestl --no-submit-stale
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dgb2
Title BBT Multi-Miner - ccminer (Digibyte)
ECHO NVIDIA CCMiner DGB Miner - Digibyte to Suprnova.cc NVIDIA ONLY
%CCMINER2_CUDA% -o stratum+tcp://dgbg.suprnova.cc:7978 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -a myr-gr
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Feathercoin Miners
::
:ftc1
Title BBT Multi-Miner - ccminer (Feathercoin)
ECHO NVIDIA CCMiner Feathercoin Miner - FTC to P2Pool FTC
%CCMINER2_CUDA% -o stratum+tcp://46.4.0.101:19327 -u %FTC_WALLET_ADDRESS% -p %WORKER_PASSWORD% -a neoscrypt -N60 -i 19.5
if %ERRORLEVEL% NEQ 0 goto exit

::
:: MusicCoin Miners
::
:musiccoin1
Title BBT Multi-Miner - Claymore (MusicCoin)
ECHO AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io)
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://uk.gmc.epool.io:8008 -ewal %MUSICCOIN_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:musiccoin2
Title BBT Multi-Miner - Claymore (MusicCoin)
ECHO AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io) and Siacoin to Nanopool
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://uk.gmc.epool.io:8008 -ewal %MUSICCOIN_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:musiccoin3
Title BBT Multi-Miner - MusicCoin
ECHO AMD and NVIDIA Claymore - MusicCoin to epool Pool (https://gmc.epool.io) and LBRY to Coinmine.pl
%CLAYMORE_DUAL_ETHEREUM% -epool stratum+tcp://uk.gmc.epool.io:8008 -ewal %MUSICCOIN_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://lbc-us.coinmine.pl:6256 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
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
