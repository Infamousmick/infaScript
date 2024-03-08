#!/bin/bash
boostba() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}Are you sure to run Boost Battery? (1=YES, 2=NO)${BLUE}${BOLD}

    Enter your choice: "
    read -r input
    case $input in
        1)
            clear
            printf "
            ${RESET}${txtbgrst}${BLUE}${BOLD}########## Boost BATTERY ##########${WHITE}${BOLD}

            To run this command plug keep your 
            phone in charging and be sure it is 
            full at 100, otherwise the script
            will FAIL!!!!
            Run this commands once a month...
            Running Battery optimizations 
            command...${RESET}"
            sleep 2
            adb shell cmd package bg-dexopt-job
            clear
            printf "
            ${txtbgrst}${BLUE}${BOLD}############# FINISH ##############${RESET}${BLUE}${BOLD}
            
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
            boostba
            ;;
    esac
}
boostba