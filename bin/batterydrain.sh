#!/bin/bash
exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f batterydrain.sh.sh
            ;;
        [nN])
            printf "${RED}Press \"Enter\" to return to the 'FIX Drain' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a
            exit_a
            ;;
    esac
}

confirm_and_execute() {
    printf "${BLUE}\nAre you sure? (Y/n): "
    read -n 1 confirm_choice
    case $confirm_choice in
        [Yy])
            return 0 ;; # Indica che la conferma è stata data correttamente
        [nN])
            printf "${RED}Press \"Enter\" to return to the 'FIX Drain' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            confirm_and_execute
            ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}" 
    read -r a 
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}" 
    read -r a 
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}"
    read -r a
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Rsepair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for Google Play Services, Google Play Store and Android System webview.${RESET}\n${txtbgblu}${BOLD}Enjoy :)${RESET}"
    printf "${RED}Press \"Enter\" to return to the 'FIX Drain' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}"
    read -r a
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}"
    read -r a
#After steps
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Repair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for Samsung Device Care.${RESET}\n"
    printf "${RED}Press \"Enter\" to return to the 'FIX Drain' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}"
    read -r a
#After steps
    printf "\n${RESET}${txtbgblu}${BOLD}Now do this steps:${RESET}\n${txtbggrn}${BOLD}1. Reboot to recovery\n2. Clear the cache in the recovery\n3a. If u are on the stock Recovery do Repair apps\n3b. If u are on TWRP clear also dalvick cache and reboot system\n4. Check for updates for OneUI in Galaxy store.${RESET}\n${txtbgblu}${BOLD}Enjoy :)${RESET}\n"
    printf "${RED}Press \"Enter\" to return to the 'FIX Drain' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
    printf "${txtbgred}${BOLD}Press \"Enter\" when u have done${RESET}"
    read -r a
#After steps
    printf "${RED}Press \"Enter\" to return to the 'FIX Drain' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
}

start(){
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## FIX DRAIN ##########${RESET}\n
    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.  Fix GMS drain 
    2.  Fix general app drain ${txtbgred}${BOLD}For Samsung only${RESET}
    3.  ${WHITE}Fix Oneui app drain ${txtbgred}${BOLD}For Samsung only${RESET}
    4.  ${WHITE}Access data usage ${txtbgred}${BOLD}For Samsung only${RESET}
    ${MAGENTA}5.  Return to Start
    ${RED}6.  Exit
    ${RESET}${BLUE}\n###############################${WHITE}\n
    Enter your choice: "
    read -r choice
}


run_me(){

    # Main script logic
    while true; do
        start
    case $choice in
            1)
                confirm_and_execute || return
                gmsdrain ;;
            2)
                confirm_and_execute || return
                appdrain ;;
            3)
                confirm_and_execute || return
                oneuidrain ;;
            4)
                confirm_and_execute || return
                accessdata ;;
            5)
                confirm_and_execute || return
                printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
                read -r a
                exit 0 ;;
            6)
                exit_a ;;
            *)
                printf "\n${RED}[!] Choose a valid option.${RESET}\n"
                read -r a
                start
                ;;
        esac
    done
}
checks() {
    if su -c 'true' >/dev/null 2>&1; then
        printf "\n${GREEN}[i] Root access found. Starting script...${RESET}\n"
        sleep 1
        clear
        sudocheck="1"
    else
        printf "\n${RED}[i] Root access not found. Trying with Shizuku...${RESET}\n"
        sleep 1
        clear
        sudocheck="0"
        exit 1       
    fi
    run_me
}
checks