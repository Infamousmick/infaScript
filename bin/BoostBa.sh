#!/bin/bash
boostb() {
    clear
    printf "    
        ${RESET}${GREEN}${BOLD}Are you sure to run Boost Battery? (1=YES, 2=NO)${BLUE}${BOLD}
        Enter your choice: "
        read -r input
        case $input in
        1)
            clear
            printf "
            {RESET}${txtbgrst}${BLUE}${BOLD}########## Boost Battery ##########${WHITE}${BOLD}
            To run this command plug keep your 
            phone in charging and be sure it is 
            at 100%, otherwise the script will 
            FAIL!!!!
            Run this commands once a month...
            Running Battery optimizations 
            command..."
            sleep 2
            cmd package bg-dexopt-job
            clear
            printf "        ${txtbgrst}${BLUE}${BOLD}############# FINISH ##############${RESET}${BLUE}${BOLD}
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
            boostb
            ;;
    esac
}
boostb