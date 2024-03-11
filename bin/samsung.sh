#!/bin/bash

export RESET='\033[0m'
export BOLD_WHITE='\033[1;37m'
export LIGHT_YELLOW='\033[1;93m'

#Samsung Checks
brand=$(getprop ro.product.system.brand)
model=$(getprop ro.product.system.model)

if echo "$brand" | grep -iq "samsung"; then
    export IS_SAMSUNG=1
    export brand="$brand"
    export model="$model"
else
    export IS_SAMSUNG=0
    export brand="$brand"
fi

if echo "$IS_SAMSUNG" | grep -iq "1"; then
    printf "\n${LIGHT_YELLOW}[+] Your Device is : ${BOLD_WHITE}${model}${RESET}\n${LIGHT_YELLOW}[i] Starting Samsung Tweaks...${RESET}\n"
    sleep 2

    if su -c 'true' >/dev/null 2>&1; then
        su -c sh "$WDIR/bin/run_samsung.sh"
    else
        bash "$RISH" "$WDIR/bin/run_samsung.sh"    
    fi
else
    printf "\n${RED}[x] 'Samsung Tweaks' are not supported in a '${brand}' model 🤨\n${RESET}"
    sleep 1
    printf "${LIGHT_YELLOW}\n[i] Returning to Start..\n${RESET}"
    sleep 1
    exit 0
fi
