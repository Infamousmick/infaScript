#!/bin/bash
exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -r -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            exit 0
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
    read -r -n 1 confirm_choice
    case $confirm_choice in
        [Yy])
            return 0 ;; # Indica che la conferma è stata data correttamente
        [nN])
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
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
    clear
    printf "\n\n${RESET}   ${BLUE}########## ADB MENU ##########${WHITE}

    ${BOLD_WHITE}Choose what to do?\n\n${RESET}
    1.   Run adb Preset inside the script
    2.   Reset the value of the Preset adb
    3.   ADB Preset Backup
    ${MAGENTA}4.   Return to InfaScript Start
    ${RED}5.   Exit\n\n

    ${RESET}${BLUE}##############################${txtbgrst}${BLUE}${BOLD}
    
    Enter your choice: "
    read -r choice
    case $choice in
        1)
            confirm_and_execute || return
            sh bin/AdbRun.sh
            ;;
        2) 
            confirm_and_execute || return
            sh bin/Adbreset.sh
            ;;
        3)
            confirm_and_execute || return
            sh bin/AdbBackup.sh
            ;;
        4)
            confirm_and_execute || return
            printf "${RESET}${txtinv}${BOLD}Press ENTER to return to Start${RESET}"
            read -r a
            exit 0
            ;;
        5)
            confirm_and_execute || return
            exit_a
            ;;
        *)  
            confirm_and_execute || return
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            start
            ;; 
    esac
}

start 
