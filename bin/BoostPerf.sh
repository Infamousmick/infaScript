#!/bin/sh
boostp() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Boost Performance ##########${WHITE}${BOLD}\n\n
    Run this command once a week...\n
    Running Performance optimizations command...\n\n"
            sleep 2
            cmd package compile -m speed-profile -a
            printf "\n    ${RESET}${BLUE}############### FINISH ################${RESET}\n"
    printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to 'Optimizations' menu${RESET}\n"
    read -r a
    bash ${WDIR}/bin/Optimizations.sh
}
boostp