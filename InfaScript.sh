#!/bin/bash

export WDIR=$(pwd)
source $WDIR/res/colors

exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
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

# Function to display the menu
start() {
    clear
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## INFASCRIPT V4.2 ##########${RESET}\n
    ${WHITE}1.  ADB Preset Menu
    2.  GMS Disabler/Enabler
    3.  Boost Performance
    4.  Boost Battery
    5.  Clear Cache
    6.  Reboot Menu
    7.  Battery Health Check
    8.  App Debloater/Enabler/App search
    9.  Fix battery drain
    10. Samsung Tweaks
    11. Android Tweaks
    12. Backup Partitions
    ${RED}13. Exit\n
    ${RESET}${BLUE}#####################################${RESET}${BOLD}\n
    Enter your choice: "
    read -r choice
}

run_me(){
    # Main script logic
    while true; do
        start
        case $choice in
            1)
                confirm_and_execute "bash bin/AdbCommands.sh"
                ;;
            2)
                confirm_and_execute "bash bin/GMS.sh"
                ;;
            3)
                confirm_and_execute "bash bin/BoostPerf.sh"
                ;;
            4)
                confirm_and_execute "bash bin/BoostBa.sh"
                ;;
            5)
                confirm_and_execute "bash bin/Cache.sh"
                ;;
            6)
                confirm_and_execute "bash bin/Reboot.sh"
                ;;
            7)
                confirm_and_execute "bash bin/BattHealth.sh"
                ;;
            8)
                confirm_and_execute "bash bin/Appsrun.sh"
                ;;
            9)
                confirm_and_execute "bash bin/batterydrain.sh"
                ;;
            10)
                confirm_and_execute "bash bin/samsung.sh"
                ;;    
            11)
                confirm_and_execute "bash bin/android.sh"
                ;;
            12)
                confirm_and_execute "su -c sh bin/dd.sh"
                ;;            
            13)
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

confirm_and_execute() {
    printf "${BLUE}\nAre you sure? (Y/n): "
    read -n 1 confirm_choice
    printf "\n"
    case $confirm_choice in
        [Yy]*)
            eval "$1" ;; # Execute the command passed as argument
        [nN])
          printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a ;;
    esac
}

run_me
