#!/bin/bash
start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Clear Cache ##########${WHITE}"
    printf "\n    ${RED}Running Clear Cache command...${RESET}"

    # Warning message
    printf "\n\n    ${YELLOW}This operation will clear the cache on your device. Clearing the cache can free up space and improve performance, but it may also cause some apps to reload data and settings, and in rare cases, it could lead to temporary issues or data loss. Do you want to continue?${RESET}\n"
    read -p "    ${YELLOW}Enter 'Y' to continue or 'N' to cancel: ${RESET}" input

    # Checking the user's response
    case $input in
        [yY])
            clear_cache ;;
        [nN])
            printf "\n    ${RED}Operation canceled. Returning to Start.${RESET}\n"
            sleep 1
            start ;;
        *)
            printf "\n    ${RED}Invalid option: returning to Start.${RESET}\n"
            sleep 1
            start ;;
    esac
}

clear_cache() {
    num_iterations=44
    error_occurred=false

    for ((i = 1; i <= num_iterations; i++)); do
        pm trim-caches 999999999999999999

        # Check if the command was successful
        if [ $? -ne 0 ]; then
            # An error occurred while executing the command
            printf "\n${RED}Error: Command pm trim-caches failed.${RESET}"
            error_occurred=true
            break
        fi

        if [ $i -eq 22 ]; then
            printf "\n    ${CYAN}Please wait ..."
        fi

        # Progress counter
        progress=$((100 * i / num_iterations))
        # Print the progress counter
        printf "\r    ${GREEN}["
        for ((j = 0; j < progress; j+=2)); do
            printf "="
        done
        printf ">%02d%%]${RESET}" $progress
    done

    if [ "$error_occurred" = false ]; then
        sleep 2
        clear
        printf "   ${RESET}${BLUE}############ FINISH #############${WHITE}\n"
        printf "\n   ${RESET}${UNDERLINE}${BOLD}Press ENTER to return to Start${RESET}\n"
        read -r a
    fi

    exit 0
}

start