#!/bin/bash

# Function to prompt for exit confirmation
exit_a() {
    read -r -p "
    Do you want to exit? (1=YES, 2=NO) Enter your choice: " input
    case $input in
        1)
            echo "
            Press ENTER to exit"
            read -r
            exit 0
            ;;
        2)
            echo "
            Press ENTER to return to START"
            read -r
            start
            ;;
        *)
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r
            exit_a
            ;;
    esac
}

# Function to run adb preset commands
adbC() {
    read -r -p "
    Are you sure to run Adb Preset Commands? (1=YES, 2=NO) Enter your choice: " input
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
            read -r
            adbC
            ;;
    esac
}

# Function for GMS operations
gms_a() {
    read -r -p "
    What do you want to run?
    1. GMS Disabler
    2. GMS Enabler
    3. Start
    4. Exit
    Enter your choice: " input
    case $input in
        1)
            read -r -p "
            Are you sure to run GMS Disabler? (1=YES, 2=NO) Enter your choice: " answ
            if [ "$answ" -eq 1 ]; then
                ./bin/GmsDisabler.sh
            elif [ "$answ" -eq 2 ]; then
                gms_a
            else
                echo "
                Choose a valid option, press ENTER to continue..."
                read -r
                gms_a
            fi
            ;;
        2)
            read -r -p "
            Are you sure to run GMS Enabler? (1=YES, 2=NO) Enter your choice: " answ
            if [ "$answ" -eq 1 ]; then
                ./bin/GmsEnabler.sh
            elif [ "$answ" -eq 2 ]; then
                gms_a
            else
                echo "
                Choose a valid option, press ENTER to continue..."
                read -r
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
    read -r -p "
    Are you sure to run Boost Performance? (1=YES, 2=NO) Enter your choice: " input
    case $input in
        1)
            clear
            echo "
            ####################### Boost Performance ######################
            Run this command once a week...
            Running Performance optimizations command..."
            read -r
            cmd package compile -m speed-profile -a
            echo "
            #######################      FINISH      #######################
            Press ENTER to continue..."
            read -r
            start
            ;;
        2)
            start
            ;;
        *)
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r
            boostp
            ;;
    esac
}

# Function to boost battery
boostb() { 
    read -r -p "
    Are you sure to run Boost Battery? (1=YES, 2=NO) Enter your choice: " input
    case $input in
        1)  
            clear
            echo "
            ####################### Boost Battery ######################
            To run this command, keep your phone plugged in and be sure it is at 100%, otherwise the script will FAIL!!!!
            Run this command once a month...
            Running Battery Boost command..."
            read -r
            cmd package bg-dexopt-job
            echo "
            #######################     FINISH    ######################
            Press ENTER to continue..."
            read -r
            start
            ;;
        2)
            start
            ;;
        *)
            echo "
            Choose a valid option, press ENTER to continue..."
            read -r
            boostb
            ;;
    esac
}

# Function to clear cache
cache() {
    read -r -p "
    Are you sure to run Clear Cache? (1=YES, 2=NO) Enter your choice: " input
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
            read -r
            cache
            ;;
    esac
}

# Function to reboot
reboot() {
    read -r -p "
    Are you sure to run Reboot Menu? (1=YES, 2=NO) Enter your choice: " input
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
            read -r
            reboot
            ;;
    esac
}

# Function to display main menu
start() {
    clear
    echo "
    #######################
    Choose what to do:
    1. ADB Preset Commands
    2. GMS Disabler/Enabler
    3. Boost Performance
    4. Boost Battery
    5. Clear Cache
    6. Reboot Menu
    7. Exit
    #######################
    Answer: "
    read -r answer
}

# Main loop for menu navigation
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
            read -r
            start
            ;;
    esac
done
