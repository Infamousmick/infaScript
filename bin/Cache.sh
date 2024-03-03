#!/bin/bash
start() {
    clear
    echo "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## Clear Cache ##########${WHITE}${BOLD}
        ${RESET}${txtinv}${BOLD}Press ENTER to start${RESET}${WHITE}${BOLD}"
    read -r a
    echo -e "
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
    echo -e "
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
    echo -e "
    ${RESET}${txtbgrst}${BLUE}${BOLD}############ FINISH #############${WHITE}${BOLD}
        ${RESET}${txtinv}${BOLD}Press ENTER to return to START${RESET}${WHITE}${BOLD}"
    read -r a
}


cache_a() {
    clear
    echo -e "
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
            echo -e "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}${WHITE}${BOLD}"
            read -r a
            cache_a
            ;;
    esac
}
cache_a