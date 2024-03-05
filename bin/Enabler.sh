#!/bin/bash
enableen()  {
while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        cmd package install-existing "$app"
        if [ $? -eq 0 ]; then
            printf "App $app disabled successfully."
        else
            printf "Error disabling app $app."
        fi
    fi
done < "enable_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Enabled list apps reinstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
sh bin/Appsrun.sh

}
enabledeb() {
while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        cmd package install-existing "$app"
        if [ $? -eq 0 ]; then
            printf "App $app disabled successfully."
        else
            printf "Error Installing app $app."
        fi
    fi
done < "debloat_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Debloat list apps reinstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
sh bin/Appsrun.sh
}

start(){
printf "
    ${RESET}${GREEN}${BOLD}Choose an option: ${WHITE}${BOLD}
    1.  Enable from Enabled list
    2.  Enable from Disabled list
    ${MAGENTA}${BOLD}3.  Return back
    ${RED}${BOLD}4.  Exit
    ${BLUE}${BOLD}"
    read -r choice

    case $choice in
        1)
            enableen
            ;;
        2)
            enabledeb
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