#!/bin/bash


gms_a() {
    clear
    echo -e "
    ${RESET}${GREEN}${BOLD}What do you want to run?${WHITE}${BOLD}
    1.  GMS Disabler
    2.  GMS Enabler
    ${RED}${BOLD}3.  Return to Start${GREEN}
    ${BLUE}${BOLD}Enter your choice: "
    read -r input
    case $input in
        1)
            echo -e "
            ${RED}${BOLD}Are you sure to run GMS Disabler? (1=YES, 2=NO)${RESET}${BLUE}${BOLD}"
            read -r answ
            if [ "$answ" -eq 1 ]; then
                sh bin/GmsDisabler.sh
            elif [ "$answ" -eq 2 ]; then
                exit 10
            else
                echo -e "
                ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
                read -r a
                gms_a
            fi
            ;;
        2)
            echo -e "
            ${RED}${BOLD}Are you sure to run GMS Enabler? (1=YES, 2=NO)${RESET}${BLUE}${BOLD}"
            read -r answ
            if [ "$answ" -eq 1 ]; then
                sh bin/GmsEnabler.sh
            elif [ "$answ" -eq 2 ]; then
                exit 10
            else
            echo -e "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
                gms_a
            fi
            ;;
        3)
            exit 0
            ;;
        *)
            echo -e "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
                gms_a
            ;;
    esac
}
gms_a