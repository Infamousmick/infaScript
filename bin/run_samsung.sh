net_band() {
    printf "${RESET}${BLUE}${BOLD}########## Change Network Bands ##########${RESET}\n\n"
    sleep 1
    printf "${YELLOW}[i] This will redirect you to the 'Service mode' menu.${RESET}\n" ; sleep 1
    sleep 1
    printf "${YELLOW}[i] Refer to the guide below for better understanding, then come back again.${RESET}\n\n" ; sleep 2
    nohup am start -a android.intent.action.VIEW -d https://t.me/SamsungTweaks/221 >/dev/null 2>&1 &
    printf "${YELLOW}[i] Press ENTER when you are ready${RESET}\n\n"
    read -r a
    am broadcast -a com.samsung.android.action.SECRET_CODE -d android_secret_code://27663368378 -n com.sec.android.RilServiceModeApp/.SecKeyStringBroadcastReceiver
    printf "\n[+] Execution Succeed..! \nPress \"Enter\" to return to the 'Samsung Tweaks' menu again" ; read -r a ; start
}

net_band_lock() {
    printf "${RESET}${BLUE}${BOLD}########## Lock Network Bands ##########${RESET}\n\n"
    sleep 1
    printf "${YELLOW}[i] This will redirect you to the 'Service mode' menu.${RESET}\n" ; sleep 1
    printf "${YELLOW}[i] Press ENTER when you are ready${RESET}\n\n"
    read -r a
    am start com.samsung.android.app.telephonyui/.hiddennetworksetting.MainActivity
    printf "\n[+] Execution Succeed..! \nPress \"Enter\" to return to the 'Samsung Tweaks' menu again" ; read -r a ; start
}

deknox() {
    disable() {
        pm disable-user --user 0 com.samsung.android.knox.analytics.uploader
        pm disable-user --user 0 com.samsung.android.bbc.bbcagent
        pm disable-user --user 0 com.knox.vpn.proxyhandler
        pm disable-user --user 0 com.samsung.android.knox.containercore
        pm disable-user --user 0 com.samsung.knox.keychain
        pm disable-user --user 0 com.sec.enterprise.knox.attestation
        pm disable-user --user 0 com.sec.enterprise.knox.cloudmdm.smdms
        pm disable-user --user 0 com.samsung.android.knox.kpecore
        pm disable-user --user 0 com.samsung.android.knox.pushmanager
        pm disable-user --user 0 com.samsung.knox.securefolder

        printf "\n${YELLOW}[i] Knox disabled.${RESET}\n"
        printf "${YELLOW}[i] Press \"Enter\" to return to the 'Samsung Tweaks' menu again" ; read -r a ; start
    }

    enable() {
        pm enable com.samsung.android.knox.analytics.uploader
        pm enable com.samsung.android.bbc.bbcagent
        pm enable com.knox.vpn.proxyhandler
        pm enable com.samsung.android.knox.containercore
        pm enable com.samsung.knox.keychain
        pm enable com.sec.enterprise.knox.attestation
        pm enable com.sec.enterprise.knox.cloudmdm.smdms
        pm enable com.samsung.android.knox.kpecore
        pm enable com.samsung.android.knox.pushmanager
        pm enable com.samsung.knox.securefolder

        printf "\n${YELLOW}[i] Knox Enabled.${RESET}\n"
        printf "${YELLOW}[i] Press \"Enter\" to return to the 'Samsung Tweaks' menu again" ; read -r a ; start
    }

    printf "${RESET}${BLUE}${BOLD}########## De-Knox ##########${RESET}\n\n"
    sleep 1
    printf "${YELLOW}[i] This might break certain Knox-based features.${RESET}\n\n"
    printf "Choose an option:\n\n"
    printf "1. Disable Knox.\n"
    printf "2. Enable Knox.\n\n"
    printf "3. Return to 'Samsung Tweaks' menu\n"
    printf "(Enter 1, 2 or 3): "
    read -r choice

    case $choice in
        1) disable ;;
        2) enable ;;
        3) start ;;
        *)
            printf "\n${RED}${BOLD}[!] Please choose a valid option.${RESET}\n"
            read -r a
            deknox
            ;;
    esac
}

change_csc() {
    printf "${RESET}${BLUE}${BOLD}########## Change CSC ##########${RESET}\n\n"
    sleep 1
    printf "${YELLOW}[i] Always check /optics or /product to ensure the required CSC folder is available.${RESET}\n\n"
    printf "${YELLOW}[i] If you choose the wrong CSC code, the entire CSC features will break.${RESET}\n\n"
    printf "${YELLOW}[i] DO AT YOUR OWN RISK..!${RESET}\n\n"
    printf "Choose an option:\n\n"
    printf "1. Proceed to change CSC.\n"
    printf "2. Return to the main menu.\n\n"
    printf "(Enter 1 or 2): "
    read -r choice

    case $choice in
        1)
            current_csc=$(cat /efs/imei/mps_code.dat)
            printf "[*] Your Current CSC : %s\n\n" "$current_csc"

            # Read the CSC code
            printf "[?] Enter your Desired CSC: "
            read -r csc_code

            # Check for null value or value with spaces
            if [ -z "$csc_code" ] || [[ "$csc_code" == *" "* ]]; then
                printf "\n${RED}${BOLD}[!] Error: Invalid CSC code. Please enter a valid code.${RESET}\n\n"
                change_csc
                return
            fi

            # Check for simple letters in CSC code
            if [[ "$csc_code" != *[!\ ]* ]]; then
                printf "\n${RED}${BOLD}[!] Error: CSC code should contain at least one non-space character.${RESET}\n\n"
                change_csc
                return
            fi

            # Update the CSC code
            printf "\n"

            # To clear the current values
            > /efs/imei/mps_code.dat ; > /efs/imei/omcnw_code.dat
            echo "$csc_code" > /efs/imei/mps_code.dat ; echo "$csc_code" > /efs/imei/omcnw_code.dat
            printf "[+] CSC has been updated to: %s\n\n" "$csc_code"
            printf "${YELLOW}[i] Execution Succeed..!${RESET}\nPress \"Enter\" to return to the 'Samsung Tweaks' menu again" ; read -r a ; start
            ;;
        2)
            start ;;
        *)
            printf "\n${RED}${BOLD}[!] Please choose a valid option.${RESET}\n"
            read -r a
            change_csc
            ;;    
    esac        
}

start() {
    clear
    printf "${RESET}${BLUE}${BOLD}########## Samsung Tweaks v1 ##########${RESET}\n\n"

    printf "Choose what to do?\n\n"
    printf "1. Change Network Band (root)\n"
    printf "2. Lock Network Bands (root)\n"
    printf "3. De-Knox\n"
    printf "4. Change CSC (root)\n"
    printf "${MAGENTA}${BOLD}5. Return to InfaScript Start\n"
    printf "${RED}${BOLD}6. Exit\n\n"

    printf "${RESET}${BLUE}${BOLD}##############################${RESET}\n"
    
    printf "Enter your choice: "
    read -r choice

    case $choice in
        1) net_band ;;
        2) net_band_lock ;;
        3) deknox ;;
        4) change_csc ;;
        5)
            printf "\n${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}"
            read -r a
            exit 0
            ;;
        6) exit 1 ;;
        *)
            printf "${RED}${BOLD}[!] Choose a valid option.${RESET}\n"
            read -r a
            start
            ;;
    esac
}

start