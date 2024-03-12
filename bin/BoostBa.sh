#!/bin/bash
boostba() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}   ${BLUE}########## Boost BATTERY ##########${WHITE}${BOLD}\n\n
    To run this command plug keep your 
    phone in charging and be sure it is 
    full at 100, otherwise the script
    will FAIL!!!!
    Run this commands once a month...
    Running Battery optimizations 
    command...${RESET}"
    sleep 2
    cmd package bg-dexopt-job
    clear
    printf "   ${RESET}${BLUE}############# FINISH ##############${RESET}\n"
    printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
    read -r a
    exit 0
}
boostba