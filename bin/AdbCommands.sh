#!/bin/bash


start() {
clear
echo -e "
${RESET}${txtbgrst}${BLUE}${BOLD}########## ADB MENU ##########${WHITE}${BOLD}
Choose what to do?
1.  Run adb Preset inside the script
2.  Reset the value of the Preset adb
3.  ADB Preset Backup
${RED}${BOLD}4.  Return to InfaScript Start
${RESET}${txtbgrst}${BLUE}${BOLD}##############################${txtbgrst}${BLUE}${BOLD}
Enter your choice: "
    read -r choice
    case $choice in
        1)
        ./bin/AdbRun.sh
        ;;
    2) 
        ./bin/Adbreset.sh
        ;;
    3)
        ./bin/AdbBackup.sh
        ;;
    4)
        echo -e "
        ${RESET}${txtinv}${BOLD}Press ENTER to return to Start${RESET}"
        read -r a
        exit 0
        ;;
    *)  
    ;; 
    esac
}

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