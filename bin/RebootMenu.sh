#!/bin/sh

rebstart() {
    clear
    echo "
    #######################
    What do you want to run?
    1. Reboot Recovery
    2. Reboot Download mode
    3. Return to start
    4. Exit
    #######################"

    read -r -p "Enter your choice : " input

    case $input in
        1)
            read -r -p "Are you sure to run Reboot Recovery? (1=YES, 2=NO): " answ
            if [ "$answ" -eq 1 ]; then
                adb reboot recovery
                echo "Rebooted to Recovery, press ENTER to return to start"
                read -r a
            elif [ "$answ" -eq 2 ]; then
            rebstart  
            else
                echo "Invalid option. Press ENTER to continue..."
                read -r a
                rebstart
            fi
            ;;
        2)
            read -r -p "Are you sure to run Reboot Download mode? (1=YES, 2=NO): " answ
            if [ "$answ" -eq 1 ]; then
                adb reboot download
                echo "Rebooted to Download Mode, press ENTER to return to start"
                read -r a
            elif [ "$answ" -eq 2 ]; then
            rebstart 
            else
                echo "Invalid option. Press ENTER to continue..."
                read -r a
                rebstart
            fi
            ;;
        3)
            start
            ;;
        4)
            ;;
        *)
            echo "Invalid option. Press ENTER to continue..."
            read -r a
            rebstart
            ;;
    esac
}

rebstart
