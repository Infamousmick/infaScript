#!/bin/bash

export RED='\033[1;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export BOLD='\033[1m'
export BLUE='\033[0;34m'
export RESET='\033[0m'
export BOLD_GREEN='\033[1;32m'
export BOLD_WHITE='\033[1;37m'

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
    printf "\n%.0s" {1..100}
    clear
    printf "\n\n${RESET}   ${BLUE}${BOLD}########## Android Tweaks v1 ##########${RESET}\n\n"

    printf "   ${BOLD_WHITE}Choose what to do?\n\n${RESET}"
    printf "   1. Open Battery Optimizations Settings\n"
    printf "   2. Marshmallow Land\n"
    printf "${RED}   3. Exit\n\n"

    printf "   ${RESET}${BLUE}${BOLD}########################################${RESET}\n"

    printf "   Enter your choice: "
    read -r choice

    case $choice in
    1) batteryopt ;;
    2) marshmallowland ;;
    3)
        printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}"
        read -r a
        exit 0
        ;;
    *)
        printf "${RED}[!] Choose a valid option.${RESET}\n"
        read -r a
        start
        ;;
    esac
}

start