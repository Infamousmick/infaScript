#!/system/bin/sh
WDIR=$(pwd)
source $WDIR/res/colors
RISH=$WDIR/bin/rish
clear
checks() {
    if su -c 'true' >/dev/null 2>&1; then
        echo -e "\n${GREEN}${BOLD}[i] Root access found. Starting script...${RESET}\n"
        export ROOT_ACCESS=1
        sleep 2
        clear
        sudo bash "$WDIR/InfaScript.sh"
    else
        echo -e "\n${RED}${BOLD}[i] Root access not found. Trying with Shizuku...${RESET}\n"
        export ROOT_ACCESS=0
        sleep 2
        clear
        bash "$RISH" "$WDIR/InfaScript.sh" 
        exit 1       
    fi
}

check_termux() {
    printf "\n${YELLOW}${BOLD}[i] Checking Environment...${RESET}\n"
    if [ -n "$PREFIX" ] && [ "$PREFIX" != "/" ]; then
        printf "\n${GREEN}${BOLD}[i] Termux Environment Found..!${RESET}\n"        
        TERMUX=1
        checks
    else
        printf "\n${RED}${BOLD}[x] Please run the script in a Termux environment and without "su"..!${RESET}\n"
        TERMUX=0
        exit 1
    fi
}
check_termux