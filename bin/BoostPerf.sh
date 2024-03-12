#!/bin/sh
boostp() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}   ${BLUE}########## Boost Performance ##########${WHITE}${BOLD}\n\n
    Run this command once a week...\n
    Running Performance optimizations command...\n\n"
            sleep 2
            cmd package compile -m speed-profile -a
            printf "   ${RESET}${BLUE}############### FINISH ################${RESET}\n"
    printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
    read -r a
    exit 0
}
boostp