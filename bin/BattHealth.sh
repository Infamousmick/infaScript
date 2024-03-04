#!/bin/bash
start() {
        printf "
    ${WHITE}${BOLD}Let's check your battey health..
    "
    battery_info=$(dumpsys battery)
    health=$(echo "$battery_info" | sed -n 's/.*mSavedBatteryAsoc: \([^,]*\).*/\1/p')
    cycles_raw=$(echo "$battery_info" | sed -n 's/.*mSavedBatteryUsage: \([^,]*\).*/\1/p')

    # Dividi il valore di mSavedBatteryUsage per 100
    cycles=$((cycles_raw / 100))
    printf "${WHITE}${BOLD}Your Battery health is ${txtbgred}$health${RESET}"
    printf "
    ${WHITE}${BOLD}Your battery charging cycles are ${txtbgred}$cycles${RESET}"
    printf "
    ${RESET}${txtinv}${BOLD}Press ENTER to return to Start..${RESET}"
    read -r a
    clear
}
batthealt_a() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}Are you sure to run Battery Health Check? (1=YES, 2=NO)
    ${BLUE}${BOLD}Enter your choice: "
    read -r choice
    case $choice in
        1)
            start
            ;;
        2)
            exit 10
            ;;
        *) 
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            rebot_a
            ;;
    esac
}
batthealt_a