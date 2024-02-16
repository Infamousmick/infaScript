#!/bin/bash

exit_a() {
    echo "
    Do you want to exit? (1=YES, 2=NO)"
    read -r -p "Enter your choice : " input
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
adbC() {
    echo "
    Are you sure to run Adb Preset Commands? (1=YES, 2=NO)"
    read -r -p "Enter your choice : " input
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


gms_a() {
    echo "
    What do you want to run?
    1. GMS Disabler
    2. GMS Enabler
    3. Start
    4. Exit"
    read -r -p "Enter your choice : " input
    case $input in
        1)
            echo "
            Are you sure to run GMS Disabler? (1=YES, 2=NO)"
            read -r -p "Enter your choice : " answ
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
            read -r -p "Enter your choice : " answ
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
boostp() {
    echo "
    Are u sure to run Boost Perfomance? (1=SI , 2=NO)
    "
    read -r -p "Enter your choice : " input
    case $input in
    1)
    clear
    echo "
    ####################### Boost Performance ######################
    Run this command once a week...
    Running Perfomance optimizations command..."
    read -r a
    adb shell cmd package compile -m speed-profile -a
    echo "
    #######################      FINISH      #######################
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

boostb() { 
    echo "
    Are u sure to run Boost Battery? (1=SI , 2=NO)
    "
    read -r -p "Enter your choice : " input
    case $input in
    1)  
    clear
    echo "
    ####################### Boost Battery ######################
    To run this command plug keep your phone in charging and be sure it is at 100% otherwise the script will FAIL!!!!
    Run this commands once a month...
    Running Battery Boost command..."
    read -r a
    adb shell cmd package bg-dexopt-job
    echo "
    #######################     FINISH    ######################
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
    Are u sure to run Clear Cache? (1=SI , 2=NO)
    "
    read -r -p "Enter your choice : " input
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
    ;;
    esac
}

reboot() {
    echo "
    Are u sure to run Reboot Menu? (1=SI , 2=NO)
    "
    read -r -p "Enter your choice : " input
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
    read -r -p "Enter your choice : " answer
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
