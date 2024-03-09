
# InfaScripts v3.6 Termux Version
A Script to execute some Android ADB commands to simply help do some battery and performance optimizations. <br>


## Quick Links 🌐

01. [Changelog](https://github.com/Infamousmick/infaScript/tree/stable_up?tab=readme-ov-file#---%EF%B8%8Fchangelog%EF%B8%8F---)
02. [How to Download](https://github.com/Infamousmick/infaScript/tree/stable_up?tab=readme-ov-file#how-to-download)
03. [How to run](https://github.com/Infamousmick/infaScript/tree/stable_up?tab=readme-ov-file#how-to-start-)
04. [PC Version](https://github.com/Infamousmick/infaScript/tree/PCtest)
05. [Infa Usage](https://github.com/Infamousmick/infaScript/tree/stable_up?tab=readme-ov-file#infa-usage)
06. [Contacts and contribute](https://github.com/Infamousmick/infaScript/tree/stable_up?tab=readme-ov-file#contacts) 

<hr>

## <i> - ⚡️🔋Changelog🔋⚡️ - </i>
#### V3.6
- Added New Infa usage

#### V3.5
- Added Bbattery drain Script, some advices to reduce some drains🔋

#### V3.4
- Improved stability
- Removed manual SU and Shizuku mode and replaced with automated check
- Fixed colors and other stuffs

#### V3.3
- Added InfaDebloat

#### V3.2
- Added App Debloater
- Added App Enabler
- Added add/remove from debloated/enabled list
- Added Search apps from a specifc list


#### V3.0
- Merged Shizuku and Root versions
- Added some Colors
- Fixed some bugs

#### V2.6
- Added PC Version Script
- Added Battery Health and Battery charging cycles display

####  V2.5
- Added ADB Preset Backup
- Added ADB Preset Restore
- Fixed some things

####  V2.0
- Added Termux version to run it on Android🤖.
- Fixed some bugs

####  V1.5
-Added Wifi Adb connect script📶

####  V1.0 First Release
- Added my Best ADB preset to save battery🔋🔋  
- Added script to Disable or Enable some GMS activities
- Added script to boost performance (same as Galaxy App Booster)⚡️ ⚡️ 
- Added script to Improve Battery consume
- Added script to clear cache🧹✨.
- Added script to reboot Recovery or Download mode


## How to Download?

### 01. Download [this version](https://github.com/KitsunedFox/termux-monet/releases/download/v0.118.0-33/termux-app_v0.118.0-33+apt-android-7-github-release_universal.apk) of Termux and start the app.

###  Past this in Termux to download InfaScript:

```
apt update -y ; echo -e "\n" ; apt install wget git tsu -y ; echo -e "\n"; rm -rf $HOME/infaScript > /dev/null 2>&1 ; wget https://raw.githubusercontent.com/Infamousmick/infaScript/stable_up/setup.sh > /dev/null 2>&1 ; bash setup.sh
```
### Past this to link infa :
```
cd $HOME && cd ../usr/bin && ln -s /data/data/com.termux/files/home/infaScript/infa infa
```
or
```
curl -o /data/data/com.termux/files/usr/bin/infa https://raw.githubusercontent.com/Infamousmick/infaScript/stable_up/infa && chmod +x /data/data/com.termux/files/usr/bin/infa
```

## How to start ?

### 01. Start Shizuku or Grant root access to your Termux.
### 02. Type this in Termux and press enter :
```
infa -s
```

## Infa usage:
### Dowload InfaScript:
```
infa -d
```

### Update InfaScript:
```
infa -u
```

### Remove InfaScript:
```
infa -u
```

### Start InfaScript:
```
infa -s
```

> [!IMPORTANT]
> To make commands work u have to choose first Shizuku mode or SU mode

> [!NOTE]
> Shizuku doesn't work for A14+ so have to run in SU mode or the PC version.

### Contacts
To contact me on Telegram [@InfamousMick](https://t.me/InfamousMick)
[InfaChannel](https://t.me/Infachannel_erendesu1)

### Verry thanks to [@Ravindu_Deshan](https://t.me/Ravindu_Deshan) ❤️🔥  [@SamsungTweaks](https://t.me/SamsungTweaks) who fixed a lot of bugs on my script, created InfaScript TERMUX Version and supports me a lot 🇮🇹🇱🇰.
