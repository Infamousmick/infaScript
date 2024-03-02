#!/bin/sh
boostp() {
    clear
    echo -e "
    ${RESET}${GREEN}${txtbggry}${BOLD}Are you sure to run Boost Battery? (1=YES, 2=NO)${BLUE}${txtbggry}${BOLD}
    Enter your choice: "
    read -r input
    case $input in
        1)
            clear
            echo -e "
            ${RESET}${txtbgrst}${BLUE}${BOLD}########## Boost Performance ##########${WHITE}${BOLD}
            Run this command once a week...
            Running Performance optimizations command..."
            sleep 2
            cmd package compile -m speed-profile -a
            clear
            echo -e "
            ${txtbgrst}${BLUE}${BOLD}############### FINISH ################${RESET}${BLUE}${BOLD}
            ${RESET}${txtinv}${BOLD}Press ENTER to continue..."
            read -r a
            exit 10
            ;;
        2)
            exit 10
            ;;
        *)
            echo -e "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            boostp
            ;;
    esac
}
boostp