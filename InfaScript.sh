#!/bin/bash

#Define Text Coloring
# Color escape sequences
txtund='[4m'    # Underline
txtbld='[1m'    # Bold
txtred='[31m'   # Red
txtgrn='[32m'   # Green
txtylw='[33m'   # Yellow
txtblu='[34m'   # Blue
txtpur='[35m'   # Purple
txtcyn='[36m'   # Cyan
txtwht='[37m'   # White
txtblk='[30m'   # Black
txtgry='[90m'   # Gray
# Additional text attributes
txtdim='[2m'    # Dim
txtrev='[7m'    # Reverse
txtstnd='[0m'   # Standout (reset)
# Blinking, Inverse, and Background styles
txtblink='[5m'       # Blinking
txtinv='[7m'         # Inverse (swap foreground and background)
txtbgred='[41m'      # Red background
txtbggrn='[42m'      # Green background
txtbgylw='[43m'      # Yellow background
txtbgblu='[44m'      # Blue background
txtbgpur='[45m'      # Purple background
txtbgcyn='[46m'      # Cyan background
txtbgwht='[47m'      # White background
txtbgblk='[40m'      # Black background
txtbggry='[100m'     # Gray background
# Reset background
txtbgrst='[0m'

# Function to prompt for exit confirmation
exit_a() {
    echo "
    Do you want to exit? (1=YES, 2=NO)"
    echo "Enter your choice : "
    read -r input
    case $input in
        1)
            echo "
            Press ENTER to exit"
            read -r a
            exit 0
            ;;
        2)
            echo "
            Press ENTER to return to START"
            read -r a
            start
            ;;
        *)
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r a
            exit_a
            ;;
    esac
}

# Function to run adb preset commands
adbC() {
    echo "
    Are you sure to run Adb Preset Commands? (1=YES, 2=NO)"
    echo "Enter your choice : "
    read -r input
    case $input in
        1)
            ./bin/AdbCommands.sh
            ;;
        2)
            start
            ;;
        *) 
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r a
            adbC
            ;;
    esac
}

# Function for GMS operations
gms_a() {
    echo "
    What do you want to run?
    1. GMS Disabler
    2. GMS Enabler
    3. Start
    4. Exit"
    echo "Enter your choice : "
    read -r input
    case $input in
        1)
            echo "
            Are you sure to run GMS Disabler? (1=YES, 2=NO)"
            read -r answ
            if [ "$answ" -eq 1 ]; then
                ./bin/GmsDisabler.sh
            elif [ "$answ" -eq 2 ]; then
                gms_a
            else
                echo "
                Choose a valid option, press ENTER to continue..."
                read -r a
                gms_a
            fi
            ;;
        2)
            echo "
            Are you sure to run GMS Enabler? (1=YES, 2=NO)"
            read -r answ
            if [ "$answ" -eq 1 ]; then
                ./bin/GmsEnabler.sh
            elif [ "$answ" -eq 2 ]; then
                gms_a
            else
                echo "
                Choose a valid option, press ENTER to continue..."
                read -r a
                gms_a
            fi
            ;;
        3)
            start
            ;;
        4)
            exit_a
            ;;
        *)
            ;;
    esac
}

# Function to boost performance
boostp() {
    echo "
    Are you sure to run Boost Performance? (1=YES, 2=NO)"
    echo "Enter your choice : "
    read -r input
    case $input in
        1)
            clear
            echo -e "
            ################## Boost Performance ##################
            Run this command once a week...
            Running Performance optimizations command...\n"
            sleep 2
            cmd package compile -m speed-profile -a
            clear
            echo "
            ######################## FINISH #######################
            Press ENTER to continue..."
            read -r a
            start
            ;;
        2)
            start
            ;;
        *)
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r a
            boostp
            ;;
    esac
}

# Function to boost battery
boostb() { 
    echo "
    Are you sure to run Boost Battery? (1=YES , 2=NO)
    "
    echo "Enter your choice : "
    read -r input
    case $input in
    1)  
    clear
    echo "
    #################### Boost Battery ####################
    To run this command plug keep your phone in charging and be sure it is at 100%, otherwise the script will FAIL!!!!
    Run this commands once a month...
    Running Battery Boost command..."
    read -r a
    cmd package bg-dexopt-job
    echo "
    ######################## FINISH #######################
    Press ENTER to continue..."
    read -r a
    start
    ;;
    2)
    start
    ;;
    *)
    echo "
    Choose a valid option, press ENTER to continue..."
    read -r a
    boostb
    ;;
    esac

}

cache() {
    echo "
    Are you sure to run Clear cache..? (1=YES , 2=NO)
    "
    echo "Enter your choice : "
    read -r input
    case $input in
    1)
    ./bin/Cache.sh
    ;;
    2)
    start
    ;;
    *)
    echo "
    Choose a valid option, press ENTER to continue..."
    read -r a
    cache
    esac
   
}

reboot() {
    echo "
    Are you sure to run Reboot Menu? (1=YES , 2=NO)
    "
    echo "Enter your choice : "
    read -r input
    case $input in
    1)
    ./bin/RebootMenu.sh
    ;;
    2)
    start
    ;;
    *)
    echo "
    Choose a valid option, press ENTER to continue..."
    read -r a
    reboot
    esac
   
}

start() {
    echo "
    ${txtbld}${txtblink}
    #############
    Choose what to do:
    1. ADB Preset Menu
    2. GMS Disabler/Enabler
    3. Boost Performance
    4. Boost Battery
    5. Clear Cache
    6. Reboot Menu
    ${txtred}7. Exit${txtred}
    ${txtwht}#############
    Answer: ${txtwht}${txtbld}${txtblink}"
    read -r answer
}

while true; do
    start
    case $answer in
        1)
            adbC
            ;;
        2)
            gms_a
            ;;
        3)
            boostp
            ;;
        4)
            boostb
            ;;
        5)
            cache
            ;;
        6)
            reboot
            ;;
        7)
            exit_a
            ;;
        *)   
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r a
            start
            ;;
    esac
done
