#!/bin/bash
gmsdrain(){
#Google PLay Services
    clear
    printf "\n${RESET}${txtbgblu}${BOLD}As first I'll redirect u to Google Play Services\napp info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Uninstall updates\n4. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.gms
    clear
    else
    am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.gms
    clear
    fi
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#Googlee Services Framework
    printf "\n${RESET}${txtbgblu}${BOLD}As second I'll redirect u to Google Services\nFramework app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.gsf
    clear
    else
    am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.gsf
    clear
    fi
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#Android System Webview
    printf "\n${RESET}${txtbgblu}${BOLD}As last I'll redirect u to Android System\nWebview app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Uninstall updates\n4. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.webview
    clear
    else
    am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.google.android.webview
    clear
    fi
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
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.samsung.android.lool
    clear
    else
    am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.samsung.android.lool
    clear
    fi
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
    #Samsung Device Health Service
    printf "\n${RESET}${txtbgblu}${BOLD}As second I'll redirect u to Samsung Device\nHealth Service app info${RESET}\n${txtbggrn}${BOLD}U have to:\n1. Clear app cache\n2. Clear app data\n3. Force stop the app${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.sec.android.sdhms
    clear
    else
    am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.sec.android.sdhms
    clear
    fi
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
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.samsung.android.lool/com.samsung.android.sm.battery.ui.BatteryActivity
    clear
    else
    am start -n com.samsung.android.lool/com.samsung.android.sm.battery.ui.BatteryActivity
    clear
    fi
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
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.sec.android.app.launcher
    clear
    else
    am start -n com.android.settings/.applications.InstalledAppDetailsTop -a android.intent.action.VIEW -d package:com.sec.android.app.launcher
    clear
    fi
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u have done...${RESET}\n"
    read -r a
    clear
#After steps
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Repair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for OneUI in Galaxy store.${RESET}\n${txtbgblu}${BOLD}Enjoy :)${RESET}\n"
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u want to return to FIX DRAIN menu...${RESET}\n"
    read -r a
    start
}

accessdata() {
    #Access data usage
        clear
    printf "\n${RESET}${txtbgblu}${BOLD}As first I'll redirect u to Access Data Usage settings ${RESET}\n${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Untick all apps\n2. Tick only those apps: 'Shell', 'Telephone services',\n'Samsung Device Health Manager Service', 'Media Storage','Package installation','User Settings'\n'Permission checker app'.\n${txtbgblu}${BOLD}Enjoy :)${RESET}\n
    ${txtinv}${BOLD}Press ENTER to redirect...${RESET}\n"
    read -r a
    if [ $sudocheck -eq 1 ]; then
    su -c am start -n 'com.android.settings/.Settings\$UsageAccessSettingsActivity -a android.intent.action.VIEW -d package:com.samsung.android.app.routines'
    clear
    else
    su -c am start -n 'com.android.settings/.Settings\$UsageAccessSettingsActivity -a android.intent.action.VIEW -d package:com.samsung.android.app.routines'
    clear
    fi
#After steps
    printf "\n${RESET}${txtbgred}${BOLD}Press ENTER when u want to return to FIX DRAIN menu...${RESET}\n"
    read -r a
    start
}

start(){
clear
printf "\n${RESET}${txtbgrst}${BLUE}${BOLD}########## FIX DRAIN ##########${WHITE}${BOLD}\n
1.  Fix GMS drain 
2.  Fix general app drain ${txtbgred}${BOLD}For Samsung only${RESET}
3.  ${WHITE}${BOLD}Fix Oneui app drain ${txtbgred}${BOLD}For Samsung only${RESET}
4.  ${WHITE}${BOLD}Access data usage ${txtbgred}${BOLD}For Samsung only${RESET}
${MAGENTA}${BOLD}5.  Return to Start
${RED}${BOLD}6.  Exit
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
                gmsdrain ;;
            2)
                appdrain ;;
            3)
                oneuidrain ;;
            4)
                accessdata ;;
            5)
                exit 0 ;;
            6)
                pkill -f InfaScript.sh ;;
            *)
                printf "\n${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
                read -r a
                start
                ;;
        esac
    done
}
checks() {
    if su -c 'true' >/dev/null 2>&1; then
        echo -e "\n${GREEN}${BOLD}[i] Root access found. Starting script...${RESET}\n"
        sleep 1
        clear
        sudocheck="1"
    else
        echo -e "\n${RED}${BOLD}[i] Root access not found. Trying with Shizuku...${RESET}\n"
        sleep 1
        clear
        sudocheck="0"
        exit 1       
    fi
    run_me
}
checks