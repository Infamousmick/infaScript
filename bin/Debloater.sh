#!/bin/bash
debloater() {
while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        pm uninstall -k --user 0 "$app"
        if [ $? -eq 0 ]; then
            echo "App $app disabled successfully."
        else
            echo "Error disabling app $app."
        fi
    fi
    
done < "debloat_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Debloat list apps uninstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
start
}

enabler() {
while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        cmd package install-existing "$app"
        if [ $? -eq 0 ]; then
            echo "App $app disabled successfully."
        else
            echo "Error disabling app $app."
        fi
    fi
done < "debloat_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Debloat list apps reinstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
start
}
listapps()  {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}What do you want to list?${WHITE}${BOLD}
    1.  Uninstalled Apps
    2.  Enabled apps
    3.  Return back
    ${RED}${BOLD}4.  Return to Start${GREEN}
    ${BLUE}${BOLD}Enter your choice: "
    read -r input
    case $input in
        1)
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to Show uninstalled packages...${RESET}"
            read -r a
            printf "
            ${RESET}${txtbgblu}${BOLD}Uninstalled packages...${RESET}
            "
            pm list packages -u
            printf "
            ${RESET}${txtbgblu}${BOLD}Disabled packages...${RESET}
            "
            pm list packages -d
            printf "${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        2)
            pm list packages -e
            ;;
        3)
            start
            ;;
        4)
            exit 0
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            listapps
            ;;
    esac
}

start() {    
    clear
    printf "
    ${RESET}${GREEN}${BOLD}What do you want to run?${WHITE}${BOLD}
    1.  App Debloater
    2.  App Enabler
    3.  List disabled/enabled apps
    4.  Add apps to debloat list
    ${RED}${BOLD}5.  Return to Start${GREEN}
    ${BLUE}${BOLD}Enter your choice: "
    read -r input
    case $input in
        1)
            printf "
            ${RED}${BOLD}Are you sure to run App Debloater? (1=YES, 2=NO)${RESET}${BLUE}${BOLD}"
            read -r answ
            if [ "$answ" -eq 1 ]; then
                debloater
            elif [ "$answ" -eq 2 ]; then
                exit 10
            else
                printf "
                ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
                read -r a
                gms_a
            fi
            ;;
        2)
            printf "
            ${RED}${BOLD}Are you sure to run App Enabler? (1=YES, 2=NO)${RESET}${BLUE}${BOLD}"
            read -r answ
            if [ "$answ" -eq 1 ]; then
                enabler
            elif [ "$answ" -eq 2 ]; then
                exit 10
            else
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
                start
            fi
            ;;
        3)
            listapps
            ;;
        4) 
            debloatadd
            ;;

        5)
            exit 0
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
                start
            ;;
    esac
}
start