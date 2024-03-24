#!/bin/bash

export RESET='\033[0m'
export BOLD_WHITE='\033[1;37m'
export LIGHT_YELLOW='\033[1;93m'

#Samsung Checks
model=$(getprop ro.product.system.model)

printf "\n${LIGHT_YELLOW}[+] Your Device is : ${BOLD_WHITE}${model}${RESET}\n${LIGHT_YELLOW}[i] Android Tweaks...${RESET}\n"
sleep 2

if su -c 'true' >/dev/null 2>&1; then
su -c sh "$WDIR/bin/run_android.sh"
else
bash "$RISH" "$WDIR/bin/run_samsung.sh"    
fi