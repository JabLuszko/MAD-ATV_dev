# MAD-ATV_dev

First attempt at MAD-ATV autoconfig.

Get a USB thumbdrive/pendrive, format it `FAT (Default)`[1].

Create directories `magisk_modules`, `apk` and `scripts`.

Download [safetynet-fix-v2.4.0.zip](https://raw.githubusercontent.com/JabLuszko/MAD-ATV_dev/main/safetynet-fix-v2.4.0.zip "safetynet-fix-v2.4.0.zip") into `magisk_modules` directory.

Download [01MAD.sh](https://raw.githubusercontent.com/JabLuszko/MAD-ATV_dev/main/01MAD.sh "01MAD.sh") into `scripts` directory.

Download `mad_autoconf.txt` from MADMin -> System -> Auto-Config and put it root/main/not-in-directory.

Optionally! Download [PogoDroid_async.apk](https://www.maddev.eu/apk/PogoDroid_async.apk "PogoDroid_async.apk") and [POGO (not Ares/Samsung and not Split) arm64-v8a apk](https://www.apkmirror.com/apk/niantic-inc/pokemon-go/ "POGO") into `apk` directory[2].


Flash [PoGoRom v1.4.1 A9 x64 S905W](https://github.com/ClawOfDead/ATVRoms/releases/tag/v1.4.1) like normally and before first boot put the USB thumbdrive/pendrive into the *other* USB PORT.

After like 3 restarts (30 minutes or so?) you should have new device pending in `Auto-Config` - click the IP, select what already existing device you are updating and Auto-Config should take care of rest.

Give it another 20 minutes and one or two restarts to have avatar/player moving.



DO NOT CLICK ANYTHING ON SCREEN/DEVICE/ADB. EVEN IF YOU THINK IT'S STUCK. YES, DON'T TOUCH.


WHOLE GOOGLE ACCOUNT ROUTINE WAS STRIPPED OUT, NO GOOGLE ACCOUNTS, PTC ONLY - I don't think many people left with Google Accounts, but if anyone up for it could be extra script and/or personal_commands MADMin job?



[1] - other filesystems most likely works too, but not tested, just don't go something crazy like exFAT or btrfs.

[2] - RGC need systemize, was too lazy to change that for first iteration so RGC will be downloaded from MAD/Auto-Config.


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
-a----        24.10.2023     14:23          96532 safetynet-fix-v2.4.0.zip

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
