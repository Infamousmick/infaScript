#!/bin/bash
exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f Appsrun.sh
            ;;
        [nN])
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a
            exit_a
            ;;
    esac
}

confirm_and_execute() {
    printf "${BLUE}\nAre you sure? (Y/n): "
    read -n 1 confirm_choice
    case $confirm_choice in
        [Yy])
            return 0 ;; # Indica che la conferma è stata data correttamente
        [nN])
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to back${RESET}\n"
            read -r a
            start
            ;;
        *)
            printf "${RED}[!] Choose a valid option.${RESET}\n"
            read -r a ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}



listapps()  {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}What do you want to list?${WHITE}${BOLD}

    1.  Uninstalled Apps
    2.  Disabled
    3.  Enabled apps
    4.  User Apps
    ${MAGENTA}5.  Return back
    ${MAGENTA}6.  Return to Start
    ${RED}7.   Exit
    
    ${BLUE}${BOLD}Enter your choice: "
    read -r input
    case $input in
        1) 
            clear
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show Uninstalled packages...${RESET}"
            read -r a
            printf "
            ${RESET}${txtbgblu}${BOLD}Uninstalled packages...${RESET}
            "
            pm list packages -u
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        2) 
            clear
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show Uninstalled packages...${RESET}"
            printf "
            ${RESET}${txtbgblu}${BOLD}Uninstalled packages...${RESET}
            "
            pm list packages -u
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        3)
            clear
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show Enabled packages...${RESET}"
            read -r a
            printf "
            ${RESET}${txtbgblu}${BOLD}Enabled packages...${RESET}
            "
            pm list packages -e
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        4)
            clear
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to show User packages...${RESET}"
            read -r a
            printf "
            ${RESET}${txtbgblu}${BOLD}User packages...${RESET}
            "
            pm list packages -3
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        5)
            start
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
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            listapps
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
            printf "
            ${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
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
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Debloater ##########${RESET}\n
    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.  App Debloater
    2.  App Enabler
    3.  List disabled/enabled apps
    4.  Search for an app
    ${GREEN}5.  View Debloat list
    ${GREEN}6.  View Enable list
    ${GREEN}7.  View ${WHITE}${txtbgred}${BOLD}InfaDebloat list${RESET}
    ${MAGENTA}8.  Return to Start
    ${RED}9.  Exit
    ${RESET}${BLUE}################################${WHITE}\n
    Enter your choice: "
    read -r input
    case $input in
        1)
            confirm_and_execute || return
            bash  bin/Debloater.sh
            ;;
        2)
            confirm_and_execute || return
            sh bin/Enabler.sh
            ;;
        3)
            confirm_and_execute || return
            listapps
            ;;
        4)
            confirm_and_execute || return
            search_app
            ;;

        5)
            confirm_and_execute || return
            clear
            printf "\n${RESET}${txtbgblu}${BOLD}Contents of debloat_list.txt:\n${RESET}${BOLD}\n"
            cat "$debloat_list"
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return back${RESET}\n"
            read -r a
            start
            ;;
        6) 
            confirm_and_execute || return
            clear
            printf "
            ${RESET}${txtbgblu}${BOLD}Contents of enabled_list.txt:\n${RESET}${BOLD}"
            cat "$enable_list"
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        7)
            confirm_and_execute || return
            clear
            printf "
            ${RESET}${txtbgblu}${BOLD}Contents of InfaDebloat.txt:\n${RESET}${BOLD}"
            cat "$infadebloat"
            printf "
            ${RESET}${txtinv}${BOLD}Press ENTER to return back...${RESET}"
            read -r a
            start
            ;;
        8)
            confirm_and_execute || return
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            exit 0
            ;;
        9)
            exit_a
            ;;
        *)
            printf "${RED}[!] Choose a valid option.${RESET}\n"
            read -r a
            start
            ;;
    esac
}

filecheck() {
    clear
    home_directory=$HOME
    sddirectory="/sdcard/Debloat"
    debloat_list="$sddirectory/debloat_list.txt"
    enable_list="$sddirectory/enabled_list.txt"
    infadebloat="/data/data/com.termux/files/home/infaScript/res/Infadebloat.txt"
#Checl Debloat folder
    if [ ! -d "$sddirectory" ]; then
    mkdir $sddirectory
    printf "${RESET}${txtbgblu}${BOLD}Debloat folder created in $sddirectory.${RESET}"
    read -r a
    fi

# Check if debloat_list.txt exists, otherwise create it
    if [ ! -f "$debloat_list" ]; then
        touch "$debloat_list"
        printf "${RESET}${txtbgblu}${BOLD}debloat_list.txt created in $sddirectory.${RESET}"
        chmod 0755 $sddirectory/debloat_list.txt
    fi
    if [ ! -f "$enable_list" ]; then
        touch "$enable_list"
        printf "
        ${RESET}${txtbgblu}${BOLD}enabled_list.txt created in $sddirectory.${RESET}"
        chmod 0755 $sddirectory/debloat_list.txt
    fi
    start
}
filecheck