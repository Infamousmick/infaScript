#!/bin/bash
export RED='\033[1;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export BOLD='\033[1m'
export BLUE='\033[0;34m'
export RESET='\033[0m'
export BOLD_GREEN='\033[1;32m'
export BOLD_WHITE='\033[1;37m'
# Verifica se l'eseguibile 'ls' è disponibile

clear

printf "\n${RESET}${txtbgrst}${BLUE}${BOLD}########## Partitions Backup ##########${WHITE}${BOLD}\n"

if ! command -v ls &> /dev/null; then

    printf "The 'ls' command is not available. Make sure it is installed.\n"

    exit 1

fi



# Lista di possibili percorsi delle partizioni Android

possible_partitions=("/dev/block/by-name/" "/dev/block/sdcard" "/dev/block/by-num/")



android_partitions=()



# Cerca le partizioni Android in ciascun possibile percorso

for path in "${possible_partitions[@]}"; do

    partitions=$(ls "$path" 2>/dev/null)

    if [ $? -eq 0 ]; then

        android_partitions+=("$path")

        printf "Android partitions found in: ${BLUE}$path${RESET}\n"

        break

    fi

done



# Se nessuna partizione è stata trovata, segnala un errore

if [ ${#android_partitions[@]} -eq 0 ]; then

    printf "Unable to find Android partitions automatically. Check manually.\n"

    exit 1

fi



# Chiedi all'utente di selezionare una partizione

printf "Choose a partition: \n"

select partition in $partitions; do

    if [ -n "$partition" ]; then

        printf "${BLUE}Are you sure you want to backup the selected partition? (Y/N): ${RESET}"

        read -n 1  confirm

        case "$confirm" in

            [yY])

                break

                ;;

            [nN])

                printf "${RED}Backup aborted..\n\nPress \"Enter\" to return to the Start again${RESET}" ; read -r a ; exit 1
                ;;

            *)

                printf "Invalid input. Please enter Y or N.\n"

                ;;

        esac

    else

        printf "Choose a valid answer.\n"

    fi

done



# Chiedi all'utente di specificare un nome per il backup

printf "\nChoose the backup name: "

read -r backup_name



# Esegui il backup con 'dd'

backup_path="/sdcard/$backup_name.img"

printf "Saving the backup of partition $partition in $backup_path..."

dd if="$android_partitions/$partition" of="$backup_path" bs=4096

printf "${BOLD_GREEN}\n\n[+]Backup completed successfully. The file is saved in ${BLUE}$backup_path${BOLD_GREEN}\n\nPress \"Enter\" to return to the Start again${RESET}" ; read -r a ; exit 0


