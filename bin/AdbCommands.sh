#!/bin/sh
adbC() {
    clear
    echo -e "
    ${RESET}${GREEN}${txtbggry}${BOLD}Are you sure to run Adb Preset Commands? (1=YES, 2=NO)
    ${BLUE}${txtbggry}${BOLD}Enter your choice: "
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
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            adbC
            ;;
    esac
}

adbC