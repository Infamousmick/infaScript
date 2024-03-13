#!/bin/bash
exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f GMS.sh
            ;;
        [nN])
            printf "${RED}\nPress \"Enter\" to return to the 'GMS' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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

confirm_and_execute() {
    printf "${BLUE}\nAre you sure? (Y/n): "
    read -n 1 confirm_choice
    case $confirm_choice in
        [Yy])
            return 0 ;; # Indica che la conferma è stata data correttamente
        [nN])
            printf "${RED}\nPress \"Enter\" to return to the 'GMS' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            confirm_and_execute
            ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}

start() {
    clear
    printf "\n\n${RESET}   ${BLUE}########## GMS MENU ##########${WHITE}\n
   1.  GMS Disabler
   2.  GMS Enabler
   ${MAGENTA}${BOLD}3.  Return to Start${GREEN}
   ${RED}4.  Exit\n
   ${RESET}${BLUE}##############################${RESET}${BOLD}\n
   Enter your choice: "
    read -r input
    case $input in
        1)
            confirm_and_execute || return
            bash bin/GmsDisabler.sh
            ;;
        2)
            confirm_and_execute || return
            bash bin/GmsEnabler.sh
            ;;
        3)
            confirm_and_execute || return
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            exit 0
            ;;
        4)
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