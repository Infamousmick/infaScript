#!/bin/bash
debloater() {
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
${RESET}${RED}${txtbgblu}${BOLD}Debloat list apps uninstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
sh bin/Appsrun.sh
}
debloater





