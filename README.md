# MAD-ATV_dev
> [!CAUTION]
> Do NOT use 2K/4K/8K screens/monitors - it will not show anything after initial PoGoROM logo. Find older 1080p monitor, check if you can fake/downgrade resolution on yours 4K TV. If you can't and you have none you can still use [scrcpy](https://github.com/Genymobile/scrcpy "https://github.com/Genymobile/scrcpy") but as this is software it's funky/Android dependable.

> [!WARNING]
> Do not use Notepad, do not open those text/sh/cfg/ini files, do not copy-paste them to Wordpad, etc. 
> Windows encoding/lines bad. Right click on those .sh and select "Save as" or just open in new window in web browser and click CTRL + S.

Get a USB thumbdrive/pendrive, format it `FAT (Default)`[1].

Create directories `magisk_modules`, `apk` and `scripts`.

Download [PlayIntegrityFix_v14.5.zip](https://raw.githubusercontent.com/JabLuszko/MAD-ATV_dev/main/PlayIntegrityFix_v14.5.zip "PlayIntegrityFix_v14.5.zip") into `magisk_modules` directory, do not unpack it - whole zip.

Download [01MAD.sh](https://raw.githubusercontent.com/JabLuszko/MAD-ATV_dev/main/01MAD.sh "01MAD.sh") into `scripts` directory.

Download `mad_autoconf.txt` from MADMin -> System -> Auto-Config and put it root/main/not-in-directory.

Optionally! Download [PogoDroid_async.apk](https://www.maddev.eu/apk/PogoDroid_async.apk "PogoDroid_async.apk") and supported/the one you have in Wizard [POGO (not Ares/Samsung and not Split) arm64-v8a apk](https://www.apkmirror.com/apk/niantic-inc/pokemon-go/ "POGO") into `apk` directory. Do *NOT* put RGC here - it will be automagically downloaded from MAD Wizard/Auto-Config.


Flash [delay_PoGoRom v1.5 A9 x64 S905W ADBUSB](https://github.com/JabLuszko/MAD-ATV_dev/releases/tag/delay) or [S912 Tanix TX9S image](https://github.com/ClawOfDead/ATVRoms/releases/tag/v1.5.1) like normally via USB Burning Tool (do not use any extra scripts/configurations/csv's from that ATVROM) and before first boot put the USB thumbdrive/pendrive into the *other* USB PORT.
> [!TIP]
> If you can't open ZIP ROM archive or they seems to error out please check the provided md5sum and if it's matches then file was downloaded properly, just your system archiver program can't handle that - install something decent (for example `7z` on Windows and `‎The Unarchiver` for MacOS). If checksums do not match redownload file.

After like 3 restarts (30 minutes or so?) you should have new device pending in `Auto-Config` - click the IP, select what already existing device you are updating and Auto-Config should take care of rest.

Give it another 20 minutes and one or two restarts to have avatar/player moving.



DO NOT CLICK ANYTHING ON SCREEN/DEVICE/ADB. EVEN IF YOU THINK IT'S STUCK. YES, DON'T TOUCH.


WHOLE FIRST LOGIN INTO GOOGLE ACCOUNT ROUTINE WAS STRIPPED OUT - YOU NEED TO LOGIN MANUALLY INTO THOSE AFTER FLASHING.
I don't think many people left with Google Accounts, but if anyone up for it could be extra script and/or personal_commands MADMin job?



[1] - other filesystems most likely works too, but not tested, just don't go something crazy like exFAT or btrfs.


Directory overview:

```
PS D:\> Get-ChildItem -Recurse
    Directory: D:\
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        27.10.2023     00:01                magisk_modules
d-----        27.10.2023     00:01                apk
d-----        27.10.2023     00:46                scripts
-a----        26.10.2023     20:42            341 mad_autoconf.txt

    Directory: D:\magisk_modules
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        24.10.2023     14:23          96532 PlayIntegrityFix_v14.3.zip

    Directory: D:\apk
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27.10.2023     00:04      108144649 PogoDroid.apk
-a----        27.10.2023     00:04      142088874 pogo_64.apk

    Directory: D:\scripts
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        27.10.2023     01:58           1432 01MAD.sh
```
