#!/bin/bash
gmsdrain(){
#Google PLay Services
    clear
    printf "\n${RESET}${txtbgblu}${BOLD}As first I'll redirect u to Google Play Services\napp info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Uninstall updates\n4. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.gms
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#Googlee Services Framework
    printf "\n${RESET}${txtbgblu}${BOLD}As second I'll redirect u to Google Services\nFramework app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.gsf
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#Android System Webview
    printf "\n${RESET}${txtbgblu}${BOLD}As last I'll redirect u to Android System\nWebview app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Uninstall updates\n4. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.webview
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#After steps
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Rsepair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for Google Play Services, Google Play Store and Android System webview.${RESET}\n${txtbgblu}${BOLD}Enjoy :)${RESET}"
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u want to return to FIX DRAIN menu...${RESET}\n"
    read -r a
    start
}

appdrain(){
#Samsung Device Care
    clear
    printf "\n${RESET}${txtbgblu}${BOLD}As first I'll redirect u to Samsung Device Care\napp info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Uninstall updates\n4. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.samsung.android.lool
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
    #Samsung Device Health Service
    printf "\n${RESET}${txtbgblu}${BOLD}As second I'll redirect u to Samsung Device\nHealth Service app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.sec.android.sdhms
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#After steps
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Repair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for Samsung Device Care.${RESET}\n"
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    #Samsung Device care settings
    printf "\n${RESET}${txtbgblu}${BOLD}I'll show u what to do next redirecting\nu to Samsung Device Health Service app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Put in NORMAL sleep all the apps that u want to receive notifications\n2. Put to DEEP sleep all the apps that u don't need to receive notifications\n3. Disable Adaptive Battery${RESET}\n${txtbgblu}${BOLD}Enjoy :)${RESET}
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.samsung.android.lool/com.samsung.android.sm.battery.ui.BatteryActivity
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u want to return to FIX DRAIN menu...${RESET}\n"
    read -r a
    clear
    start

}


oneuidrain() {
#Oneui Launcher
    clear
    printf "\n${RESET}${txtbgblu}${BOLD}As first I'll redirect u to Oneui\nLauncher app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Uninstall updates\n4. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    adb shell am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.sec.android.app.launcher
    clear
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#After steps
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Repair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for OneUI in Galaxy store.${RESET}\n${txtbgblu}${BOLD}Enjoy :)${RESET}\n"
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u want to return to FIX DRAIN menu...${RESET}\n"
    read -r a
    start
}

start(){
clear
printf "\n${RESET}${txtbgrst}${BLUE}${BOLD}########## FIX DRAIN ##########${WHITE}${BOLD}\n
1.  Fix GMS drain 
2.  Fix general app drain
3.  Fix Oneui app drain${WHITE}${BOLD}
${MAGENTA}${BOLD}4.  Return to Start
${RED}${BOLD}5.  Exit
\n${RESET}${txtbgrst}${BLUE}${BOLD}###############################${RESET}${BLUE}${BOLD}\n
Enter your choice: "
read -r choice
}


run_me(){

    # Main script logic
    while true; do
        start
    case $choice in
            1)
                gmsdrain
                ;;
            2)
                appdrain
                ;;
            3)
                oneuidrain
                ;;
            4)
                exit 0
                ;;
            5)
                pkill -f InfaScript.sh
                pkill -f batterydrain.sh
                ;;
            *)
                printf "\n${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
                read -r a
                start
                ;;
        esac
    done
}
run_me