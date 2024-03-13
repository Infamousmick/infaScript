#!/bin/bash


exit_a() {
    printf "\n${RESET}${txtbgred}Do you want to exit? (Y/n): ${RESET}\n"
    read -n 1 input
    case $input in
        [yY])
            printf "\n   ${RESET}${RED}${UNDERLINE}Press ENTER to exit ${RESET}\n" 
            read -r a 
            pkill -f InfaScript.sh
            pkill -f Debloater.sh
            ;;
        [nN])
            printf "${RED}\nPress \"Enter\" to return to the 'Enable' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
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
            printf "${RED}\nPress \"Enter\" to return to the 'Enable' menu again${RESET}" ; read -r a ; printf "\n%.0s" {1..100} ; clear; start
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            confirm_and_execute
            ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}

Infaenable() {
    home_directory=$HOME
    sddirectory="/sdcard/Debloat"
    debloat_list="$sddirectory/debloat_list.txt"
    enable_list="$sddirectory/enabled_list.txt"
    infadebloat="/data/data/com.termux/files/home/infaScript/res/Infadebloat.txt"
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## InfaDebloat list ##########${RESET}\n\n"
    while IFS= read -r app || [ -n "$app" ]; do
        if [ -n "$app" ]; then
            su -c cmd package install-existing "$app"
            if [ $? -eq 0 ]; then
                printf "\n${RESET}${txtbggrn}${BOLD}App $app enabled successfully.${RESET}${WHITE}${BOLD}
                "
            else
                printf "\n${RESET}${txtbgred}${BOLD}Error enabling app $app.${RESET}${WHITE}${BOLD}"
            fi
        fi
    done < "$infadebloat"
    
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            bash bin/Appsrun.sh
}
enableen() {
    home_directory=$HOME
    sddirectory="/sdcard/Debloat"
    debloat_list="$sddirectory/debloat_list.txt"
    enable_list="$sddirectory/enabled_list.txt"
    infadebloat="/data/data/com.termux/files/home/infaScript/res/Infadebloat.txt"
    printf "\n\n${RESET}    ${BLUE}########## Enabled list ##########${RESET}\n\n"
    while IFS= read -r app || [ -n "$app" ]; do
        if [ -n "$app" ]; then
            su -c cmd package install-existing "$app"
            if [ $? -eq 0 ]; then
                printf "\n${RESET}${txtbggrn}${BOLD}App $app enabled successfully.${RESET}${WHITE}${BOLD}
                "
            else
                printf "\n${RESET}${txtbgred}${BOLD}Error enabling app $app.${RESET}${WHITE}${BOLD}"
            fi
        fi
    done < "$enable_list"
    
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            bash bin/Appsrun.sh
}
enabledeb() {
    home_directory=$HOME
    sddirectory="/sdcard/Debloat"
    debloat_list="$sddirectory/debloat_list.txt"
    enable_list="$sddirectory/enabled_list.txt"
    infadebloat="/data/data/com.termux/files/home/infaScript/res/Infadebloat.txt"
    printf "\n\n${RESET}    ${BLUE}########## Debloated list ##########${RESET}\n\n"
    while IFS= read -r app || [ -n "$app" ]; do
        if [ -n "$app" ]; then
            su -c cmd package install-existing "$app"
            if [ $? -eq 0 ]; then
                printf "\n${RESET}${txtbggrn}${BOLD}App $app enabled successfully.${RESET}${WHITE}${BOLD}
                "
            else
                printf "\n${RESET}${txtbgred}${BOLD}Error enabling app $app.${RESET}${WHITE}${BOLD}"
            fi
        fi
    done < "$debloat_list"
    
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            bash bin/Appsrun.sh
}


start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Enable Menu ##########${RESET}\n\n"
    printf "    ${BOLD_WHITE}Choose what to do?\n${RESET}
    1.  Enable from Enabled list
    2.  Enable from Disabled list
    3.  Enable from ${txtbgred}InfaDebloat list${RESET}${WHITE}
    ${MAGENTA}4.  Return back
    ${MAGENTA}5.  Return to start
    ${RED}6.  Exit"
    printf "\n\n${RESET}    ${BLUE}##################################${WHITE}
    ${BLUE}${BOLD}Enter your choice: "
    read -r choice

    case $choice in
        1)
            confirm_and_execute || return
            enableen
            ;;
        2)
            confirm_and_execute || return
            enabledeb
            ;;
        3)
            confirm_and_execute || return
            Infaenable
            ;;
        4)
            confirm_and_execute || return
            bash bin/Appsrun.sh
            ;;
        6)
            confirm_and_execute || return
            printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
            read -r a
            exit 0
            ;;
        6)
            exit_a
            ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            start
            ;;
    esac
}
start