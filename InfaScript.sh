#!/bin/bash
WDIR=$(pwd)
source $WDIR/res/colors

exit_a() {
    printf "
    ${RESET}${txtbgred}${BOLD}Do you want to exit? (1=YES, 2=NO)\n
    Enter your choice : ${RESET}${BLUE}${BOLD}"
    read -r input
    case $input in
        1)
            printf "
            ${RESET}${RED}${BOLD}Press ENTER to exit"
            read -r a
            clear
            exit 1
            ;;
        2)
            printf "
            ${RESET}${WHITE}${BOLD}${txtbggrn}Press ENTER to return to START${RESET}"
            read -r a
            start
            ;;
        *)
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            exit_a
            ;;
    esac
}

# Function to display the menu
start() {
    clear
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## INFASCRIPT V3.5 ##########${WHITE}\n
    ${BOLD}1.  ADB Preset Menu
    2.  GMS Disabler/Enabler
    3.  Boost Performance
    4.  Boost Battery
    5.  Clear Cache
    6.  Reboot Menu
    7.  Battery Health Check
    8.  App Debloater/Enabler/App search
    9.  Fix battery drain
    ${txtbgblu}10. Connect/Disconnect ADB wireless${RESET}${BOLD}
    ${RED}${BOLD}11. Exit\n
    ${txtbgrst}${BLUE}${BOLD}#####################################${RESET}${BLUE}${BOLD}\n
    Enter your choice: "
    read -r choice
}



run_me(){

    # Main script logic
    while true; do
        start
    case $choice in
            1)
                sh bin/AdbCommands.sh
                ;;
            2)
                sh bin/GMS.sh
                ;;
            3)
                sh bin/BoostPerf.sh
                ;;
            4)
                sh bin/BoostBa.sh
                ;;
            5)
                sh bin/Cache.sh
                ;;
            6)
                sh bin/Reboot.sh
                ;;
            7)
                sh bin/BattHealth.sh
                ;;
            8)
                sh bin/Appsrun.sh
                ;;
            9)
                sh bin/batterydrain.sh
                ;;
            10)
                sh bin/ADBwireless.sh
                ;;
            11)
                exit_a
                ;;
            *)
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
                read -r a
                start
                ;;
        esac
    done
}
run_me
