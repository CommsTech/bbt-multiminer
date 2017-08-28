## Bits Be Trippin' , alon7 & CommsTech Multi-miner

Bits Be Trippin' is a youtube channel for cryptocurrencies mining. 
https://www.youtube.com/user/BitsBeTrippin  
They created the initial multiminer to enable easy switch between miners.  
alon7 took the script a step further and added more pools, coins and made it more configurable.
I took the script a step further and added a guided setup for beginners on windows.  

### Available Coins
1.  Ethereum (ETH)
2.  Ethereum Classic (ETC)
3.  Monero (XMR)
4.  ZCash (ZEC)
5.  SiaCoin (SC)
6.  PascalCoin (PASC)
7.  Hush (HUSH)
8.  LBRY (LBC)
9.  DubaiCoin (DBIX)
10. UBIQ (UBQ)
11. Expanse (EXP)
12. Chaincoin (CHC)
13. Digibyte (DGB)
14. Feathercoin (FTC)
15. Musiccoin (MUSIC)
16. Nexus (NXS)
17. Unitus (UIS)

## Setup

### Windows
1. Right click on Info.bat -> edit 
2. Under Wallets, according to the coin you want to mine, change the wallet address to yours
3. Name your miner under MINER_NAME variable
4. Change EMAIL_ADDRESS to receive updated from supported pools (nanopool for now)
5. Run the .bat file and enjoy

### Linux
NOTE: Some linux miners are still unavailable. We are currently working on it and you're willing to contribute.

1. Right click on bbt-multiminer.sh -> edit, or use your favorite editor like vi, vim, etc..
2. Under Wallets, according to the coin you want to mine, change the wallet address to yours
3. Name your miner under MINER_NAME variable
4. Change EMAIL_ADDRESS to receive updated from supported pools (nanopool for now)


## How to mine
### Windows
1. Read setup before proceeding
#### Interactive
2. Double click bbt-multiminer.bat
3. Write the number of the miner you want to start and press enter
4. Profit.
#### Command line
2. Open a cmd windows in the bbt-multiminer folder
3. Run bbt-multiminer.bat <miner index>, for example: bbt-multiminer.bat 1 2 9 (Eth & Siacoin) (See /Scripts/Quick_Script_Example.bat)
#### Start on startup
2. Right click on bbt-multiminer.bat -> Create Shortcut
3. Right click on the new shortcut -> Properties
4. On the target field, go to the end and add your wanted miner index
5. Win+R and paste this location: %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
6. Copy the shortcut from above to that location

### Linux
1. Read setup before proceeding
#### Interactive
2. Run ./bbt-multiminer.sh from command line
3. Chose the coin you want to mine by entering the coin index
4. Chose the miner you want to use on the selected coin
5. Profit.
#### Command line
2. Open a terminal windows in bbt-multiminer folder
3. Run ./bbt-multiminer.sh <coin index> <miner index>, for example: ./bbt-multiminer.sh 1 9 (Eth & Siacoin)


## Contributors

If you want to add more miners, you are more than welcome to send a merge request. 
Notice that to add a binary for a miner, you would have to send us the link to the miner, instead of commiting it yourself.  
We want make sure the miners are untouched and do not contain malware.
