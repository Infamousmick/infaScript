#!/bin/bash

# Possible file locations
file_locations=(
  "/data/misc/wifi/wpa_supplicant.conf"
  "/data/misc/wifi/WifiConfigStore.xml"
  "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml"
)
exit_a() {
# Wait for user input before exiting
printf "\n   ${RESET}${UNDERLINE}${BOLD}"
if read "choice?Press ENTER to return to Start"
printf "${RESET}\n"
exit 0
fi
clear
search_passwords
}

# Function to search for passwords in the appropriate files
search_passwords() {
  for location in "${file_locations[@]}"; do
    if [ -f "$location" ]; then
      echo "File directory: $location"
      echo "Saved WiFi passwords:"
      # Searches for the desired information in XML files and displays it
      while IFS= read -r line; do
        if [[ $line == *'<string name="SSID">'* ]]; then
          ssid=$(sed -E 's/.*<string name="SSID">([^<]*)<\/string>.*/\1/' <<< "$line")
          echo "Wifi Name: ${ssid//&quot;/\"}"
        elif [[ $line == *'<string name="PreSharedKey">'* ]]; then
          password=$(sed -E 's/.*<string name="PreSharedKey">([^<]*)<\/string>.*/\1/' <<< "$line")
          echo "Password: ${password//&quot;/\"}"
        fi
      done < "$location"
    fi
  done
  echo "No files found with WiFi passwords."
  return 1
  exit_a
}
search_passwords

