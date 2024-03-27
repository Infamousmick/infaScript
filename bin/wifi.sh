#!/bin/bash

# Possible file locations
file_locations=(
  "/data/misc/wifi/wpa_supplicant.conf"
  "/data/misc/wifi/WifiConfigStore.xml"
  "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml"
)

# Function to search for passwords in the appropriate files
search_passwords() {
  for location in "${file_locations[@]}"; do
    if [ -f "$location" ]; then
      echo "File directory: $location"
      echo "Saved WiFi passwords:"
      # Searches for the desired information in XML files and displays it
      while IFS= read -r line; do
        if [[ $line == '<string name="SSID">' ]]; then
          ssid=$(sed 's/.*<string name="SSID">\(.*\)<\/string>.*/\1/' <<< "$line" | sed 's/&quot;//g')
          echo "Wifi Name: $ssid"
        elif [[ $line == '<string name="PreSharedKey">' ]]; then
          password=$(sed 's/.*<string name="PreSharedKey">\(.*\)<\/string>.*/\1/' <<< "$line" | sed 's/&quot;//g')
          echo "Password: $password"
          echo
        fi
      done < "$location"
      return 0
    fi
  done
  echo "No files found with WiFi passwords."
  return 1
}

search_passwords

# Wait for user input before exiting
read -r "Press Enter to exit..."

