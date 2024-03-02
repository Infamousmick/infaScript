#!/bin/bash

adb_backup() {
clear
backup_folder="ADB_Backup"

# Verificare se la cartella "ADB Backup" esiste, altrimenti crearla
if [ ! -d "$backup_folder" ]; then
    mkdir "$backup_folder"
    echo -e "
    ${RESET}${txtbgrst}${BLUE}${BOLD}########## ADB BACKUP ##########${WHITE}${BOLD}
    ${txtbgred}'$backup_folder'${RESET}${WHITE}${BOLD} folder created successfully."
    else
    echo -e "${txtbgred}'$backup_folder'${RESET}${WHITE}${BOLD}folder found, no need to create it"
fi

# Eseguire il comando "adb shell settings list" per i parametri "system", "secure" e "global"
system_settings=$(settings list system)
secure_settings=$(settings list secure)
global_settings=$(settings list global)

# Chiedere all'utente il nome dei file in uscita
echo -e "Choose a prefix file name: "
read -r  filename_prefix
echo "Add the date to add to the file: "
read -r  file_date

# Salvare i file nella cartella "ADB Backup" con i nomi e le date specificati
system_filename="$backup_folder/${filename_prefix}_system_$file_date.txt"
secure_filename="$backup_folder/${filename_prefix}_secure_$file_date.txt"
global_filename="$backup_folder/${filename_prefix}_global_$file_date.txt"

echo "$system_settings${RESET}" > "$system_filename"
echo "$secure_settings" > "$secure_filename"
echo "$global_settings" > "$global_filename"

echo -e "File saved successfully into '$backup_folder':"
echo -e "${txtbggrn}${bold}- $system_filename"
echo -e "${txtbggrn}${bold}- $secure_filename"
echo -e "${txtbggrn}${bold}- $global_filename${RESET}"
chmod u+x -R ADB_Backup/* ; chmod u+x *
echo -e "
    ${RESET}${txtinv}${BOLD}Press ENTER to return to ADB Commands Start...${RESET}"
read -r a
exit 0
}
adb_backup
