#!/bin/bash
start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Clear Cache ##########${WHITE}"
    printf "\n    ${RED}Running Clear Cache command...${RESET}"
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    printf "\n    ${CYAN}Please wait ..."
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    pm trim-caches 999999999999999999
    sleep 2
    clear
    printf "   ${RESET}${BLUE}############ FINISH #############${WHITE}\n"
    printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to 'Optimizations' menu${RESET}\n"
    read -r a
    bash ${WDIR}/bin/Optimizations.sh
}

start