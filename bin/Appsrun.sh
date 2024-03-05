#!/bin/bash
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
            ${RESET}${txtinv}${BOLD}Press ENTER to show Uninstalled packages...${RESET}"
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
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show Enabled packages...${RESET}"
            read -r a
            printf "
            ${RESET}${txtbgblu}${BOLD}Enabled packages...${RESET}
            "
            pm list packages -e
            printf "${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
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

debloatadd() {
debloat_list="debloat_list.txt"
enable_list="enabled_list.txt"

# Check if debloat_list.txt exists, otherwise create it
if [ ! -f "$debloat_list" ]; then
    touch "$debloat_list"
    printf "debloat_list.txt created."
fi
if [ ! -f "$enable_list" ]; then
    touch "$enable_list"
    printf "enabled_list.txt created."
fi
    printf "
    ${RESET}${GREEN}${BOLD}Choose an option: ${WHITE}${BOLD}
    1.  Add apps to Enable list
    2.  Add apps to Debloat list
    ${MAGENTA}${BOLD}3.  View Debloat list
    ${MAGENTA}${BOLD}4.  View Enable list
    ${MAGENTA}${BOLD}5.  Return back
    ${RED}${BOLD}6.  Exit
    ${BLUE}${BOLD}Enter your choice: "

    read choice

    case $choice in
        1)
            # Prompt user to enter app names
            printf "Enter the app name to add to Enable list (or 'done' to finish):"
            while true; do
            read app

            # Check if the user wants to finish
            if [ "$app" == "done" ]; then
            break
            fi

            # Add the app to the enable_list.txt
            echo "$app" >> "$enable_list"
            printf "App $app added to enabled_list.txt."
            done      
            start
            ;;
        2)
            # Prompt user to enter app names
            printf "Enter the app name to add to Debloat list (or 'done' to finish):"
            while true; do
            read app

            # Check if the user wants to finish
            if [ "$app" == "done" ]; then
            break
            fi

            # Add the app to the debloat_list.txt
            echo "$app" >> "$debloat_list"
            printf "App $app added to debloat_list.txt."
            done      
            start
            ;;
        3) 
            printf "Contents of debloat_list.txt:\n"
            cat "$debloat_list"
            read -p "Press ENTER to continue..."
            start
            ;;
        4) 
            printf "Contents of enabled_list.txt:\n"
            cat "$enable_list"
            read -p "Press ENTER to continue..."
            start
            ;;
        5) 
            start
            ;;
        6)
            printf "
            ${RESET}${RED}${BOLD}Press ENTER to exit"
            read -r a
            clear
            pkill -f InfaScript.sh
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            start
            ;;
    esac
}

# Funzione per la ricerca delle app
search_app() {
    clear
    printf "${RESET}${txtbgblu}${BOLD}Input the app to search: ${RESET}${BLUE}${BOLD}"
    read -r app_name

    printf "
    ${RESET}${GREEN}${BOLD}Choose an option: ${WHITE}${BOLD}
    1.  Enabled
    2.  Disabled
    3.  Uninstalled
    4.  User apps
    ${MAGENTA}${BOLD}5.  Return back
    ${RED}${BOLD}6.  Exit
    ${BLUE}${BOLD}Enter your choice: "

    read choice

    case $choice in
        1)
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name Enabled packages...${RESET}"
            package_list=$(pm list packages -e | grep $app_name)
            ;;
        2)
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name Disabled packages...${RESET}"
            package_list=$(pm list packages -d | grep $app_name)

            ;;
        3)
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name Uninstalled packages...${RESET}"
            package_list=$(pm list packages -u | grep $app_name)
            ;;
        4)
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name User packages...${RESET}"
            package_list=$(pm list packages -3| grep $app_name)
            ;;
        5)
            start
            ;;
        6)
            printf "
            ${RESET}${RED}${BOLD}Press ENTER to exit"
            read -r a
            clear
            pkill -f InfaScript.sh
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            search_app
            ;;
    esac

    if [ -z "$package_list" ]; then
        printf "
        No matches found for the app'$app_name'. "
        read -r a
        printf "
        ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
        read -r a
    else
        printf "
        App found: "
        echo "$package_list"
        printf "
        ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
        read -r a
    fi
}




start() {    
    clear
    printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## DEBLOATER ##########${WHITE}
    ${RESET}${GREEN}${BOLD}What do you want to run?${WHITE}${BOLD}
    1.  App Debloater
    2.  App Enabler
    3.  List disabled/enabled apps
    4.  Add apps to debloat list
    5.  Search for an app
    ${MAGENTA}${BOLD}6.  Return to Start
    ${RED}${BOLD}7.  Exit
    ${RESET}${txtbgrst}${BLUE}${BOLD}###############################${WHITE}
    ${BLUE}${BOLD}Enter your choice: "
    read -r input
    case $input in
        1)
            printf "
            ${RED}${BOLD}Are you sure to run App Debloater? (1=YES, 2=NO)${RESET}${BLUE}${BOLD}"
            read -r answ
            if [ "$answ" -eq 1 ]; then
               sh  bin/Debloater.sh
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
                sh bin/Enabler.sh
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
            search_app
            ;;
        6)
            exit 0
            ;;
        7)
            printf "
            ${RESET}${RED}${BOLD}Press ENTER to exit"
            read -r a
            clear
            pkill -f InfaScript.sh
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            start
            ;;
    esac
}
start