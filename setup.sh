#!/bin/sh
################################################################################
# Copyright (c) [2024] [Ravindu Deshan, Eren]
#
# Unauthorized publication is prohibited. Forks and personal use are allowed.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
################################################################################
cd "$HOME"
DIR=$(pwd)

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BOLD='\033[1m'
RESET='\033[0m'

setup(){
    rm -rf "$DIR/infaScript" > /dev/null 2>&1
    echo -e "${GREEN}\n[+] Installing Requirements...\n${RESET}"
    pkg install wget git tsu -y
    echo -e "${GREEN}\n[+] Cloning Script...\n${RESET}"
    git clone https://github.com/Infamousmick/infaScript.git -b NewTermux
    cd "$DIR/infaScript"
    chmod +x -R *
    rm /data/data/com.termux/files/usr/bin/infa > /dev/null 2>&1 ; ln -s /data/data/com.termux/files/home/infaScript/infa /data/data/com.termux/files//usr/bin/infa
    chmod +x /data/data/com.termux/files/usr/bin/infa
    echo -e "\n${YELLOW}[i] Done.${RESET}\n"
    echo -e "\033[1;31m[i] Run 'infa' to get started..! \033[0m\n"  
}

check_termux() {
    printf "\n${YELLOW}${BOLD}[i] Checking Environment...${RESET}\n"
    if [ -n "$PREFIX" ] && [ "$PREFIX" != "/" ]; then
        printf "\n${GREEN}${BOLD}[i] Termux Environment Found..!${RESET}\n"        
        TERMUX=1
        sleep 1 ; clear
        setup
    else
        printf "\n\033[1;31m[x] Please run the script in a Termux environment and without "su"..! \033[0m\n\n"
        TERMUX=0
        exit 1
    fi
}
check_termux
