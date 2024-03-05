#!/bin/bash
enabler() {
while IFS= read -r app || [ -n "$app" ]; do
    if [ -n "$app" ]; then
        cmd package install-existing "$app"
        if [ $? -eq 0 ]; then
            printf "App $app disabled successfully."
        else
            printf "Error disabling app $app."
        fi
    fi
done < "enabled_list.txt"
printf "
${RESET}${RED}${txtbgblu}${BOLD}Debloat list apps reinstalled 
${RESET}${txtinv}${BOLD}press ENTER to return back..${RESET}"
read -r a
start
}
enabler