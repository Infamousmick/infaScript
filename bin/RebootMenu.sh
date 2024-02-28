#!/bin/sh

rebstart() {
    su
    clear
    echo "
    ###################### REBOOT MENU ####################
    What do you want to run?
    1. Reboot Recovery
    2. Reboot Download mode
    3. Return to start
    4. Exit
    #######################################################"

    read -r answ "Enter your choice : " 

    case $answ in
        1)
            read -r answ "Are you sure to run Reboot to Recovery mode? (1=YES, 2=NO): " answ
            if [ "$answ" -eq 1 ]; then
                echo "Rebooting in 3 seconds"
                sleep 3
                reboot recovery
            elif [ "$answ" -eq 2 ]; then
            rebstart  
            else
                echo "Invalid option. Press ENTER to continue..."
                read -r a
                rebstart
            fi
            ;;
        2)
            read -r answ "Are you sure to run Reboot to Download mode? (1=YES, 2=NO): " answ
            if [ "$answ" -eq 1 ]; then
                echo "Rebooting in 3 seconds"
                sleep 3
                reboot download
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
