#!/bin/bash
debloateren() {
    while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        pm uninstall -k --user 0 "$app"
        if [ $? -eq 0 ]; then
            printf "App $app disabled successfully."
        else
            printf "Error disabling app $app."
        fi
    fi
    
done < "debloat_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Enabled list apps uninstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
sh bin/Appsrun.sh
}
debloaterdeb() {
while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        pm uninstall -k --user 0 "$app"
        if [ $? -eq 0 ]; then
            printf "App $app disabled successfully."
        else
            printf "Error Uninstalling app $app."
        fi
    fi
    
done < "debloat_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Debloat list apps uninstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
sh bin/Appsrun.sh
}


start(){
printf "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## DEBLOATER ##########${WHITE}
    ${RESET}${GREEN}${BOLD}Choose an option: ${WHITE}${BOLD}
    1.  Uninstall from Enabled list
    2.  Uninstall from Disabled list
    ${MAGENTA}${BOLD}3.  Return back
    ${RED}${BOLD}4.  Exit
    ${RESET}${txtbgrst}${BLUE}${BOLD}###############################${WHITE}
    ${BLUE}${BOLD}Enter your choice: "
    read -r choice

    case $choice in
        1)
            debloateren
            ;;
        2)
            debloaterdeb
            ;;
        3)
            sh bin/Appsrun.sh
            ;;
        4)
            printf "
            ${RESET}${RED}${BOLD}Press ENTER to exit"
            read -r a
            clear
            pkill -f InfaScript.sh
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Invalid choice. Press ENTER to continue...${RESET}"
            read -r a
            remove_apps
            ;;
    esac
}
start





