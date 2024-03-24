#!/bin/bash
confirm_and_execute() {
    printf "${BLUE}\nEnter 'Y' to continue or 'N' to cancel: "
    read -n 1 confirm_choice
    printf "\n"
    case $confirm_choice in
        [Yy])
            return 0 ;; # Indica che la conferma è stata data correttamente
        [nN])
            printf "\n    ${RESET}${UNDERLINE}${BOLD}Operation canceled.${RESET}\n    ${UNDERLINE}${BOLD}Returning to the 'Optimizations' menu again$.${RESET}\n"
            sleep 1
            exit 0 ;;
        *)
            printf "\n${RED}[!] Choose a valid option.${RESET}\n"
            read -r a 
            confirm_and_execute
            ;;
    esac
    return 1 # Indica che la conferma non è stata data correttamente
}

start() {
    printf "\n%.0s" {1..100} ; clear
    printf "\n\n${RESET}    ${BLUE}########## Clear Cache ##########${WHITE}"
    printf "\n    ${RED}Running Clear Cache command...${RESET}"

    # Warning message
    printf "\n\n    ${YELLOW}This operation will clear the cache\n    on your device. Clearing the cache\n    can free up space and improve\n    performance, but it may also cause\n    some apps to reload data and settings,\n    and in rare cases, it could lead to\n    temporary issues or data loss.\n    Do you want to continue?${RESET}\n"
    confirm_and_execute || return
    clear_cache
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
        printf "\n\r    ${GREEN}["
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

    bash ${WDIR}/bin/Optimizations.sh
}

start