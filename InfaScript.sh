#!/bin/sh
# Text color codes
export BLACK='\033[0;30m'
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;\033m'
export BLUE='\033[0;34m'
export MAGENTA='\033[0;35m'
export CYAN='\033[0;36m'
export BLK='\033[30m'
export GRAY='\033[90m'
export WHITE='\033[0;37m'
# Text mode codes
export BOLD='\033[1m'
export UNDERLINE='\033[4m'
export BLINK='\033[5m'
export INVERT='\033[7m'
export DIM='0\033m'
export REVERSE='\033[7m'
# Reset text color and mode
export RESET='\033[0m'
# Blinking, Inverse, and Background styles
export txtinv='\033[7m'         # Inverse (swap foreground and background)
export txtbgred='\033[41m'      # Red background
export txtbggrn='\033[42m'      # Green background
export txtbgylw='\033[43m'      # Yellow background
export txtbgblu='\033[44m'      # Blue background
export txtbgpur='\033[45m'      # Purple background
export txtbgcyn='\033[46m'      # Cyan background
export txtbgwht='\033[47m'      # White background
export txtbgblk='\033[40m'      # Black background
export txtbggry='\033[100m'     # Gray background
# Reset background
txtbgrst='\033[0m'

exit_a() {
    echo -e "
    ${RESET}${txtbgred}${BOLD}Do you want to exit? (1=YES, 2=NO)
    Enter your choice : ${RESET}${BLUE}${BOLD}"
    read -r input
    case $input in
        1)
            echo -e "
            ${RESET}${RED}${BOLD}Press ENTER to exit"
            read -r a
            clear
            exit 0
            ;;
        2)
            echo -e "
            ${RESET}${WHITE}${BOLD}${txtbggrn}Press ENTER to return to START${RESET}"
            read -r a
            start
            ;;
        *)
            echo -e "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            exit_a
            ;;
    esac
}



# Function to display the menu
start() {
    clear
    echo -e "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## INFASCRIPT V3.0 ##########${WHITE}
   ${BOLD} 1.  ADB Preset Menu
    2.  GMS Disabler/Enabler
    3.  Boost Performance
    4.  Boost Battery
    5.  Clear Cache
    6.  Reboot Menu
    7.  Battery Healt Check
    ${txtbgcyn}8.  Run Shizuku${RESET}${BOLD}
    ${txtbgblu}9.  Run SU${RESET}${BOLD}
    10. ${RED}${BOLD}Exit${WHITE}
    ${txtbgrst}${BLUE}${BOLD}#####################################${RESET}${BLUE}${BOLD}
    Enter your choice: "
    read -r choice
}




# Main script logic
while true; do
    start
 case $choice in
        1)
            ./bin/AdbCommands.sh
            ;;
        2)
            ./bin/GMS.sh
            ;;
        3)
            ./bin/BoostPerf.sh
            ;;
        4)
            ./bin/BoostBa.sh
            ;;
        5)
            ./bin/Cache.sh
            ;;
        6)
            ./bin/Reboot.sh
            ;;
        7)
            ./bin/BattHealth.sh
            ;;
        8)
            bash infa
            ;;
        9)
            bash superinfa
            ;;
        10)
            exit_a
            ;;
        *)
        echo -e "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            start
            ;;
    esac
done
