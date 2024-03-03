#!/bin/bash
start() {

    clear
    printf"
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## REBOOT MENU ##########${WHITE}${BOLD}
    What do you want to run?
    1.  Reboot Recovery
    2.  Reboot Download mode
    3.  Return to start
    ${RED}${BOLD}4.  Exit
    ${RESET}${txtbgrst}${BLUE}${BOLD}############ FINISH #############${RESET}${BLUE}${BOLD}
    Enter your choice: 
    "

    read -r input  

    case $input in
        1)
                printf "Rebooting to ${CYAN}${BOLD}Recovery${WHITE}${BOLD} in 3 seconds"
                    printf "${RESET}${txtinv}${BOLD}Press ENTER to continue...${RESET}"
                printf "${RED}${BOLD}3"
                sleep 1
                printf "${RED}${BOLD}2"
                sleep 1
                printf "${RED}${BOLD}1"
                reboot recovery
            ;;
        2)
                printf "Rebooting to ${CYAN}${BOLD}Download Mode${WHITE}${BOLD} in 3 seconds"
                    printf "${RESET}${txtinv}${BOLD}Press ENTER to continue...${RESET}"
                printf "${RED}${BOLD}3"
                sleep 1
                printf "${RED}${BOLD}2"
                sleep 1
                printf "${RED}${BOLD}1"
                reboot download
            ;;
        3)
            exit 0
            ;;
        4)
            pkill -f InfaScript.sh
            ;;
        *)
            printf"Invalid option. Press ENTER to continue..."
            read -r a
            start
            ;;
    esac
}
rebot_a() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}Are you sure to run Reboot Menu? (1=YES, 2=NO)
    ${BLUE}${BOLD}Enter your choice: "
    read -r choice
    case $choice in
        1)
            start
            ;;
        2)
            exit 0
            ;;
        *) 
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            rebot_a
            ;;
    esac
}
rebot_a