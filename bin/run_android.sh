#!/bin/bash

export RED='\033[1;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export BOLD='\033[1m'
export BLUE='\033[0;34m'
export RESET='\033[0m'
export BOLD_GREEN='\033[1;32m'
export BOLD_WHITE='\033[1;37m'
exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f run_android.sh
            ;;
        [nN])
            printf "${RED}\nPress \"Enter\" to return to the 'Android Tweaker' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
            printf "${RED}\nPress \"Enter\" to return to the 'Android Tweaker' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            confirm_and_execute
            ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}

batteryopt() {
    #Battery Optimizations Settings
    printf "\n${RESET}   ${BLUE}${BOLD}########## Battery Optimizations Settings ##########${RESET}\n\n"

    if su -c 'true' >/dev/null 2>&1; then
        sleep 1
        printf "   ${YELLOW}[i] This will redirect you to the 'Battery Optimizations Settings' .${RESET}\n"
        sleep 1
        printf "   ${YELLOW}[i] Press ENTER when you are ready${RESET}\n\n"
        read -r a
        su -c am start -n 'com.android.settings/.Settings\$HighPowerApplicationsActivity'
        printf "   ${BOLD_GREEN}\n\n[+] Execution Succeed..! \n\n${RESET}"
    else
        printf "   ${RED}[i] You are not rooted, cannot run this tweaks.${RESET}\n"
        sleep 1
    fi
    printf "${RED}Press \"Enter\" to return to the 'Android Tweaks' menu again${RESET}"
    read -r a
    printf "\n%.0s" {1..100}
    clear
    start
}
marshmallowland() {
    #Marshmallow Land
    printf "\n${RESET}   ${BLUE}${BOLD}########## Marshmallow Land ##########${RESET}\n\n"

    if su -c 'true' >/dev/null 2>&1; then
        sleep 1
        printf "   ${YELLOW}[i] This will redirect you to the 'Marshmallow Land' .${RESET}\n"
        sleep 1
        printf "   ${YELLOW}[i] Press ENTER when you are ready${RESET}\n\n"
        read -r a
        su -c am start -n com.android.systemui/com.android.systemui.egg.MLandActivity
        printf "   ${BOLD_GREEN}\n\n[+] Execution Succeed..! \n\n${RESET}"
    else
        printf "   ${RED}[i] You are not rooted, cannot run this tweaks.${RESET}\n"
        sleep 1
    fi
    printf "${RED}Press \"Enter\" to return to the 'Android Tweaks' menu again${RESET}"
    read -r a
    printf "\n%.0s" {1..100}
    clear
    start
}


start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Android Tweaks v1 ##########${RESET}\n\n"
    printf "    ${BOLD_WHITE}Choose what to do?\n${RESET}"
    printf "    1. Open Battery Optimizations Settings\n"
    printf "    2. Marshmallow Land\n"
    printf "${MAGENTA}    3. Return to start\n"
    printf "${RED}    4. Exit\n\n"
    printf "    ${RESET}${BLUE}########################################${RESET}\n"

    printf "   Enter your choice: "
    read -r choice

    case $choice in
    1) 
        confirm_and_execute || return
        batteryopt ;;
    2) 
        confirm_and_execute || return
        marshmallowland ;;
    3)
        confirm_and_execute || return
        printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}"
        read -r a
        exit 0
        ;;
    4)
        exit_a
        ;;
    *)
        printf "\n${RED}[!] Choose a valid option.${RESET}\n"
        read -r a
        start
        ;;
    esac
}

start
