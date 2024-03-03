#!/bin/bash
rebot_a() {
    clear
    echo -e "
    ${RESET}${GREEN}${BOLD}Are you sure to run Reboot Menu? (1=YES, 2=NO)
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
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            rebot_a
            ;;
    esac
}
rebot_a