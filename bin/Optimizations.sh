#!/bin/bash
export WDIR=$(pwd)
##cd "$(dirname "$0")/.."
##source ..${WDIR}/InfaScript.sh
confirm_and_execute() {
    printf "${BLUE}\nAre you sure? (Y/n): "
    read -n 1 confirm_choice
    printf "\n"
    case $confirm_choice in
        [Yy]*)
            eval "$1" ;; # Execute the command passed as argument
        [nN])
          printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to 'Optimizations' menu${RESET}\n"
            read -r a
            start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a ;;
    esac
}

exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f Optimizations.sh
            ;;
        [nN])
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a
            exit_a
            ;;
    esac
}

start() {
    clear
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Optimizations ##########${RESET}\n
    1.  ADB Preset Menu
    2.  GMS Disabler/Enabler
    3.  Boost Performance
    4.  Boost Battery
    5.  Clear Cache
    ${MAGENTA}6.  Return to Start
    ${RED}7. Exit\n
    ${RESET}    ${BLUE}###################################${RESET}\n
    Enter your choice: "
    read -r choice
}


run_me(){
    # Main script logic
    while true; do
        start
        case $choice in
            1)
                confirm_and_execute "bash ${WDIR}/bin/AdbCommands.sh"
                ;;
            2)
                confirm_and_execute "bash ${WDIR}//bin/GMS.sh"
                ;;
            3)
                confirm_and_execute "bash ${WDIR}/bin/BoostPerf.sh"
                ;;
            4)
                confirm_and_execute "bash ${WDIR}/bin/BoostBa.sh"
                ;;
            5)
                confirm_and_execute "bash ${WDIR}/bin/Cache.sh"
                ;;
            6)
            confirm_and_execute || return
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}"
            read -r a
            exit 0 ;;
            7)
                exit_a
                ;;
            *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a
            start
                ;;
        esac
    done
}
run_me