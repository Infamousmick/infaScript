#!/bin/bash

export RED='\033[1;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export BOLD='\033[1m'
export BLUE='\033[;34m'
export RESET='\033[0m'
export BOLD_GREEN='\033[1;32m'
export BOLD_WHITE='\033[1;37m'

sqrt() {
    echo "sqrt($1)" | bc -l
}
# Funzione per il calcolo del DPI
# Funzione per il calcolo del DPI
calculate_dpi() {
    local width=$1
    local height=$2
    local inch=$3

    local diagonal=$(sqrt "($width^2) + ($height^2)")
    local raw_dpi=$(echo "scale=2; $diagonal / $inch" | bc)
    
    # Arrotonda il valore DPI al più vicino intero
    local rounded_dpi=$(printf "%.0f" $raw_dpi)

    printf "\n    The calculated Dpi is: $rounded_dpi\n"
}


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
    printf "\n"
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


##TODO: Add wm size and dpi reset
##TODO: Add calculator for dpi on wm size
seedisplay() {
    printf "\n${RESET}    ${BLUE}${BOLD}########## Current Display Resolution ##########${RESET}\n\n"
    wm_size_physycal=$(wm size | awk '/Physical size:/ {print $3}')
    wm_size_override=$(wm size | awk '/Override size:/ {print $3}')
    dpi=$(wm density | awk '{print $3}')
    printf "    Your screen resolution is\n    ${BLUE}${BOLD}Physical size: $wm_size_physycal${RESET}\n    ${BLUE}${BOLD}Override size: $wm_size_override${RESET}\n    ${BLUE}${BOLD}Dpi: $dpi${RESET}\n"
    printf "${RED}Press \"Enter\" to return to the 'Display Resolution' menu again${RESET}"
    read -r a
    printf "\n%.0s" {1..100}
    clear
    displaymenu
}
changedisplay() {
    printf "\n${RESET}    ${BLUE}${BOLD}########## Change Display Resolution ##########${RESET}\n\n"
    printf "    Choose Screen resolution ${BLUE}${BOLD}width${WHITE} x ${BLUE}height${RESET}\n    "
    read -r screenres
    if ! echo "$screenresolution" | awk -F'x' 'NF==2 && $1~/^[0-9]+$/ && $2~/^[0-9]+$/{exit 0}'; then
    printf "\n${RED}[!]    Error: The screen resolution format is incorrect.\n    Use the 'width x height' format, for example '1080x1920'."
    displaymenu
    fi
    printf "    Choose Dpi\n    "
    read -r dpisize
    printf "\n    ${RESET}${UNDERLINE}${BOLD}Press ENTER to apply new Screen Resolution${RESET}"
    wm size $screenres
    wm density $dpisize
    printf "${RED}Press \"Enter\" to return to the 'Display Resolution' menu again${RESET}"
    read -r a
    printf "\n%.0s" {1..100}
    clear
    displaymenu
}
calculatedpi() {
    if ! command -v bc > /dev/null 2>&1; then
    echo "Il pacchetto 'bc' non è installato. Installazione in corso..."
    pkg install bc -y
    fi
    printf "\n${RESET}    ${BLUE}${BOLD}########## Calculte Dpi Size ##########${RESET}\n\n"
    printf "    Choose Screen resolution width\n    "
    read screenwidth
    printf "    Choose Screen resolution height\n    "
    read screenheight
    printf "    Choose your screen inches\n    "
    read screeninch
    # Chiamata alla funzione di calcolo del DPI
    calculate_dpi $screenwidth $screenheight $screeninch
    printf "${RED}Press \"Enter\" to return to the 'Display Resolution' menu again${RESET}"
    read -r a
    printf "\n%.0s" {1..100}
    clear
    displaymenu
}
resetdisplay() {
    printf "\n${RESET}    ${BLUE}${BOLD}########## Reset Screen Resolution ##########${RESET}\n\n"
    printf "\n    ${RESET}${UNDERLINE}${BOLD}Press ENTER to reset Screen Resolution${RESET}"
    wm size reset
    wm density reset
    printf "${RED}Press \"Enter\" to return to the 'Display Resolution' menu again${RESET}"
    read -r a
    printf "\n%.0s" {1..100}
    clear
    displaymenu
}
displaymenu() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Display Resolution ##########${RESET}\n\n"
    printf "    ${BOLD_WHITE}Choose what to do?\n${RESET}"
    printf "    1. See current display resolution\n"
    printf "    2. Change display resolution\n"
    printf "    3. Calculate dpi size\n"
    printf "    4. Reset display resolution\n"
    printf "${MAGENTA}    5. Return to start\n"
    printf "${RED}    6. Exit\n"
    printf "\n\n${RESET}    ${BLUE}#######################################${RESET}\n\n"
    printf "    Enter your choice: "
    read -r choice
    case $choice in
    1) 
        confirm_and_execute || return
        seedisplay ;;
    2)
        confirm_and_execute || return
        changedisplay ;;
    3)
        confirm_and_execute || return
        calculatedpi ;;
    4)
        confirm_and_execute || return
        resetdisplay ;;
    5)
        confirm_and_execute || return
        printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}"
        read -r a
        exit 0
        ;;
    6)
        exit_a
        ;;
    *)
        printf "\n${RED}[!] Choose a valid option.${RESET}\n"
        read -r a
        start
        ;;
    esac
}

start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Android Tweaks v1 ##########${RESET}\n\n"
    printf "    ${BOLD_WHITE}Choose what to do?\n${RESET}"
    printf "    1. Open Battery Optimizations Settings\n"
    printf "    2. Marshmallow Land\n"
    printf "    3. Display Resolution\n"
    printf "${MAGENTA}    4. Return to start\n"
    printf "${RED}    5. Exit\n\n"
    printf "    ${RESET}${BLUE}########################################${RESET}\n"

    printf "    Enter your choice: "
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
        displaymenu ;;
       
    4)
        confirm_and_execute || return
        printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}"
        read -r a
        exit 0
        ;;
    5)
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