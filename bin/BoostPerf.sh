#!/bin/sh
boostp() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}Are you sure to run Boost Performance? (1=YES, 2=NO)${BLUE}${BOLD}

    Enter your choice: "
    read -r input
    case $input in
        1)
            clear
            printf "
            ${RESET}${txtbgrst}${BLUE}${BOLD}########## Boost Performance ##########${WHITE}${BOLD}\n\n
            Run this command once a week...
            Running Performance optimizations command...\n\n"
            sleep 2
            cmd package compile -m speed-profile -a
            clear
            printf "
            ${txtbgrst}${BLUE}${BOLD}############### FINISH ################${RESET}${BLUE}${BOLD}
            
            ${RESET}${txtinv}${BOLD}Press ENTER to continue..."
            read -r a
            exit 10
            ;;
        2)
            exit 10
            ;;
        *)
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            boostp
            ;;
    esac
}
boostp