#!/bin/bash

start() {
    clear
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## ADB MENU ##########${WHITE}${BOLD}

    Choose what to do?
    1.  Run adb Preset inside the script
    2.  Reset the value of the Preset adb
    3.  ADB Preset Backup
    ${MAGENTA}${BOLD}4.  Return to InfaScript Start
    ${RED}${BOLD}5.  Exit

    ${RESET}${txtbgrst}${BLUE}${BOLD}##############################${txtbgrst}${BLUE}${BOLD}
    
    Enter your choice: "
    read -r choice
    case $choice in
        1)
            sh bin/AdbRun.sh
            ;;
        2) 
            sh bin/Adbreset.sh
            ;;
        3)
            sh bin/AdbBackup.sh
            ;;
        4)
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return to Start${RESET}"
            read -r a
            exit 0
            ;;
        5)
            exit 1
            ;;
        *)  
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            start
            ;; 
    esac
}

adbC() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}Are you sure to run Adb Preset Commands? (1=YES, 2=NO)
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
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            adbC
            ;;
    esac
}
adbC