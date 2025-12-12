# fxpfxbdupes
identify and move duplicate fxp/fxb files from the default Sylenth1 directory on macOS

to run open Terminal and run the following command:

``` curl -fsSL https://raw.githubusercontent.com/ropeamine/fxpfxbdupes/main/fxpfxbdupes.sh | zsh ```


A folder and .log file will output to the desktop labeled "Duplicates_datetimestamp", example output of Duplicates_.log:

```
Processing: 1 Sizzlers.fxb md5 d25f874a4bac3393f5da7f11dc1cb306
Processing: 5P_MRH_Bank.fxb md5 31dc466ea1b99aea73cc10d621f4f9df
Processing: 5P_SHS_Bank.fxb md5 022ecaa5c524cd35255fda39624040cf
Processing: 7Aliens SylenthLines Soundbank.fxb md5 706da21d3a2616f23dcc87664692f032
Processing: ARP & SEQ/WR_A&S_CHAIN.fxp md5 5fd057051054015451ad2fb46fe5f3f6
Processing: ARP & SEQ/WR_A&S_CHIMMER.fxp md5 1877909f7cde988c2530b090b7fffcb8
```

```
Duplicate Found: /Users/USERNAME/Library/Application Support/LennarDigital/Sylenth1/SoundBanks/Sylenth1 Presets Big Pack (Sylenth1 FXB)/Sylenth Dubstep Soundbank (Individual Patches)/FX Police Siren.fxp moving to ~/Desktop/Duplicates
Duplicate Found: /Users/USERNAME/Library/Application Support/LennarDigital/Sylenth1/SoundBanks/Sylenth1 Presets Big Pack (Sylenth1 FXB)/ARP & SEQ/WR_A&S_WERIDE.fxp moving to ~/Desktop/Duplicates
Processed 736 files, moved 2 duplicates.
```
