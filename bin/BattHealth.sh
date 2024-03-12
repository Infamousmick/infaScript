#!/bin/bash
start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}##########  BATTERY HEALTH ##########${WHITE}${BOLD}\n\n
    ${WHITE}${BOLD}Let's check your battey health..\n"
    battery_info=$(/system/bin/dumpsys battery)
    health=$(echo "$battery_info" | sed -n 's/.*mSavedBatteryAsoc: \([^,]*\).*/\1/p')
    cycles_raw=$(echo "$battery_info" | sed -n 's/.*mSavedBatteryUsage: \([^,]*\).*/\1/p')

    # Dividi il valore di mSavedBatteryUsage per 100
    cycles=$((cycles_raw / 100))
    printf "    ${WHITE}${BOLD}Your Battery health is ${txtbgred}$health${RESET}"
    printf "\n    ${WHITE}${BOLD}Your battery charging cycles are ${txtbgred}$cycles${RESET}\n"
    printf "\n\n${RESET}    ${BLUE}#####################################${WHITE}${BOLD}\n\n"
    printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
    read -r a
    exit 0
}
start
