#!/bin/bash
# Ottenere l'indirizzo IP del dispositivo Android connesso via USB

adbun() {
printf "
    ${BLUE}${txtbgblu}${BOLD}At first DISCONNECT the device by cable and press ENTER${RESET}"
read -r a
adb devices | grep -w "device" | awk '{print $1}' | while read device; do
    ip_address=$(adb -s $device shell ip -f inet addr show wlan0 | grep -Po 'inet \K[\d.]+')
    if [ -z "$ip_address" ]; then
        printf "${BOLD}Unable to obtain the IP address of the device${RED}${BOLD}$device.${RESET}"
    else
        printf "${BOLD}IP address of the device${RED}${BOLD}$device: ${GREEN}${BOLD}$ip_address${RESET}
        "
        
        # Disconnettersi da ADB wireless se già connesso
        adb disconnect $ip_address:5555
        
        # Connessione tramite ADB wireless
        adb -s $device tcpip 5555
        adb diconnect $ip_address:5555
        printf "
    ${BLUE}${txtbgblu}${BOLD}Device disconnected${RESET}"
    fi
done
printf "
    ${RESET}${txtinv}${BOLD}Pess ENTER to return to Start...${RESET}"
read -r a
exit

}

adbconnect() {
printf "
    ${BLUE}${txtbgblu}${BOLD}At first CONNECT the device by cable and press ENTER${RESET}"
read -r a
adb devices | grep -w "device" | awk '{print $1}' | while read device; do
    ip_address=$(adb -s $device shell ip -f inet addr show wlan0 | grep -Po 'inet \K[\d.]+')
    if [ -z "$ip_address" ]; then
        printf "${BOLD}Unable to obtain the IP address of the device${RED}${BOLD}$device.${RESET}"
    else
        printf "${BOLD}IP address of the device${RED}${BOLD}$device: ${GREEN}${BOLD}$ip_address${RESET}
        "
        
        # Disconnettersi da ADB wireless se già connesso
        adb disconnect $ip_address:5555
        
        # Connessione tramite ADB wireless
        adb -s $device tcpip 5555
        adb connect $ip_address:5555
        printf "
    ${BLUE}${txtbgblu}${BOLD}Now u can disconnect the cable${RESET}"
    fi
done
printf "
    ${RESET}${txtinv}${BOLD}Pess ENTER to return to Start...${RESET}"
read -r a
exit
}

start() {
    clear
    printf "
    ${RESET}${GREEN}${BOLD}What do you want to run?${WHITE}${BOLD}
    1.  Connect ADB Device
    2.  Disconnect ADB Device
    ${RED}${BOLD}3.  Return to Start${GREEN}
    ${BLUE}${BOLD}Enter your choice: "
    read -r input
    case $input in
        1)
            adbconnect
            ;;
        2)
            adbun
            ;;
        3)
            exit 0
            ;;
        *)
            printf "${RESET}${txtinv}${BOLD}Choose a valid option, press ENTER to continue...${RESET}"
            read -r a
            start
            ;;
    esac
}
start