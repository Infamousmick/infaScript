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
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            confirm_and_execute
            ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}



listapps()  {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## List Apps ##########${RESET}\n\n"
    printf "    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.  Uninstalled Apps
    2.  Disabled
    3.  Enabled apps
    4.  User Apps
    ${MAGENTA}5.  Return back
    ${MAGENTA}6.  Return to start
    ${RED}7.   Exit"
    printf "\n\n${RESET}    ${BLUE}###############################${RESET}\n\n   
    ${BLUE}${BOLD}Enter your choice: "

    read -r input
    case $input in
        1) 
            confirm_and_execute || return
            clear
            read -r a
            printf "\n${RESET}${txtbgblu}${BOLD}Uninstalled packages...${RESET}\n"
            pm list packages -u
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        2) 
            confirm_and_execute || return
            clear
            printf "\n${RESET}${txtbgblu}${BOLD}Uninstalled packages...${RESET}\n"
            pm list packages -u
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        3)
            confirm_and_execute || return
            clear
            printf "\n${RESET}${txtbgblu}${BOLD}Enabled packages...${RESET}\n"
            pm list packages -e
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to back${RESET}\n"
            read -r a
            start
            ;;
        4)
            confirm_and_execute || return
            clear
            printf "\n${RESET}${txtbgblu}${BOLD}User packages...${RESET}\n"
            pm list packages -3
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        5)
            confirm_and_execute || return
            start
            ;;
        6)
            confirm_and_execute || return
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            exit 0
            ;;
        7)
            exit_a
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            listapps
            ;;
    esac
}

# Funzione per la ricerca delle app
search_app() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## List Apps ##########${RESET}\n\n"
    printf "\n    ${RESET}${txtbgblu}${BOLD}Input the app to search: ${RESET}${BLUE}"
    read -r app_name
    printf "\n    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.  Enabled
    2.  Disabled
    3.  Uninstalled
    4.  User apps
    ${MAGENTA}${BOLD}5.  Return back
    ${RED}${BOLD}6.  Exit"
    printf "\n\n${RESET}    ${BLUE}###############################${RESET}\n\n
    ${BLUE}${BOLD}Enter your choice: "

    read choice

    case $choice in
        1)
            confirm_and_execute || return
            printf "\n    ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name Enabled packages...${RESET}"
            read -r a
            package_list=$(pm list packages -e | grep $app_name)
            if [ -n "$packsge_list" ]; then
            printf "\n${RESET}${WHITE}$package_list"
            else
            printf "\n${RED}[!]No apps found for $app_name!"
            fi
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        2)
            confirm_and_execute || return
            printf "\n    ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name Disabled packages...${RESET}"
            read -r a
            if [ -n "$packsge_list" ]; then
            package_list=$(pm list packages -d | grep $app_name)
            printf "\n${RESET}${WHITE}$package_list"
            else
            printf "\n${RED}[!]No apps found for $app_name!"
            fi
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        3)
            confirm_and_execute || return
            printf "\n    ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name Uninstalled packages...${RESET}"
            read -r a
            package_list=$(pm list packages -u | grep $app_name)
            if [ -n "$packsge_list" ]; then
            printf "\n${RESET}${WHITE}$package_list"
            else
            printf "\n${RED}[!]No apps found for $app_name!"
            fi
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        4)
            confirm_and_execute || return
            printf "\n    ${RESET}${txtinv}${BOLD}Press ENTER to show $app_name User packages...${RESET}"
            read -r a
            package_list=$(pm list packages -3| grep $app_name)
            if [ -n "$packsge_list" ]; then
            printf "\n${RESET}${WHITE}$package_list"
            else
            printf "\n${RED}[!]No apps found for $app_name!"
            fi
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        5)
            confirm_and_execute || return
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        6)
            exit_a
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            search_app
            ;;
    esac

}




start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Apps Menu ##########${RESET}\n
    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.  App Debloater
    2.  App Enabler
    3.  List disabled/enabled apps
    4.  Search for an app
    ${GREEN}5.  View Debloat list
    ${GREEN}6.  View Enable list
    ${GREEN}7.  View ${WHITE}${txtbgred}${BOLD}InfaDebloat list${RESET}
    ${MAGENTA}8.  Return to start
    ${RED}9.  Exit
    \n    ${RESET}${BLUE}###############################${WHITE}\n
    Enter your choice: "
    read -r input
    case $input in
        1)
            confirm_and_execute || return
            bash  bin/Debloater.sh
            ;;
        2)
            confirm_and_execute || return
            bash bin/Enabler.sh
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
            printf "\n    ${RESET}${txtbgblu}${BOLD}Contents of debloat_list.txt:\n${RESET}${BOLD}\n"
            cat "$debloat_list"
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        6) 
            confirm_and_execute || return
            clear
            printf "\n    ${RESET}${txtbgblu}${BOLD}Contents of enabled_list.txt:\n${RESET}${BOLD}"
            cat "$enable_list"
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        7)
            confirm_and_execute || return
            clear
            printf "\n    ${RESET}${txtbgblu}${BOLD}Contents of InfaDebloat.txt:\n${RESET}${BOLD}"
            cat "$infadebloat"
            printf "${RED}\nPress \"Enter\" to return to the 'Apps' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
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
        printf "\n    ${RESET}${txtbgblu}${BOLD}Debloat folder created in $sddirectory.${RESET}"
        printf "\n    ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to comtinue${RESET}"
        read -r a
    fi

# Check if debloat_list.txt exists, otherwise create it
    if [ ! -f "$debloat_list" ]; then
        touch "$debloat_list"
        printf "\n    ${RESET}${txtbgblu}${BOLD}debloat_list.txt created in $sddirectory.${RESET}"
        chmod 0755 $sddirectory/debloat_list.txt
        printf "\n    ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to comtinue${RESET}"
        read -r a
    fi
    if [ ! -f "$enable_list" ]; then
        touch "$enable_list"
        printf "\n    ${RESET}${txtbgblu}${BOLD}enabled_list.txt created in $sddirectory.${RESET}"
        chmod 0755 $sddirectory/debloat_list.txt
        printf "\n    ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to comtinue${RESET}"
        read -r a
    fi
    start
}
filecheck