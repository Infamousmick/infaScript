#!/bin/bash
start() {
    clear
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## Clear Cache ##########${WHITE}${BOLD}

        ${RESET}${txtinv}${BOLD}Press ENTER to start${RESET}${WHITE}${BOLD}"
        
    read -r a
    printf "
    ${RED}${BOLD}Running Clear Cache command...${RESET}"
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
    printf "
    ${CYAN}${BOLD}Please wait ..."
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
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}############ FINISH #############${WHITE}${BOLD}
        ${RESET}${txtinv}${BOLD}Press ENTER to return to START${RESET}${WHITE}${BOLD}"
    read -r a
}


cache_a() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}Are you sure to run Clear Cache? (1=YES, 2=NO)
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
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}${WHITE}${BOLD}"
            read -r a
            cache_a
            ;;
    esac
}
cache_a