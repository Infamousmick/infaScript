#!/bin/bash
exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f Reoot.sh
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

confirm_and_execute() {
    printf "${BLUE}\nAre you sure? (Y/n): "
    read -n 1 confirm_choice
    case $confirm_choice in
        [Yy])
            return 0 ;; # Indica che la conferma è stata data correttamente
        [nN])
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to back${RESET}\n"
            read -r a
            start
            ;;
        *)
            printf "${RED}[!] Choose a valid option.${RESET}\n"
            read -r a ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}



start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## REBOOT MENU ##########${WHITE}
\n
    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.   Reboot Recovery
    2.   Reboot Download mode
    ${MAGENTA}3.   Return to start
    ${RED}4.   Exit

    ${RESET}    ${BLUE}#################################${RESET}${BOLD}\n
    Enter your choice: "

    read -r input  

    case $input in
        1)
            confirm_and_execute || return
            printf "Rebooting to ${CYAN}Recovery${WHITE}in 3 seconds"
            sleep 3
            reboot recovery
            ;;
        2)
            confirm_and_execute || return
            printf "Rebooting to ${CYAN}Download Mode${WHITE}${BOLD} in 3 seconds"
            reboot download
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
            printf "${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            start
            ;;
    esac
}
start