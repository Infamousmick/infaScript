#!/bin/bash

# Possible file locations
file_locations=("/data/misc/wifi/wpa_supplicant.conf"
  "/data/misc/wifi/WifiConfigStore.xml"
  "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml")

# Function to search for passwords in the appropriate files
search_passwords() {
  for location in "${file_locations[@]}"; do
    if [ -f "$location" ]; then
      echo "File directory: $location"
      echo "Saved WiFi passwords:"
      # Searches for the desired information in XML files and displays it
      while IFS= read -r line; do
        if [[ $line == '<string name="SSID">' ]]; then
          ssid=$(echo "$line" | sed 's/.*<string name="SSID">\(.*\)<\/string>.*/\1/' | sed 's/&quot;//g')
          echo "Wifi Name: $ssid"
        elif [[ $line == '<string name="PreSharedKey">' ]]; then
          password=$(echo "$line" | sed 's/.*<string name="PreSharedKey">\(.*\)<\/string>.*/\1/' | sed 's/&quot;//g')
          echo "Password: $password"
          echo
        fi
      done < "$location"
      exit 0
    fi
  done
  echo "No files found with WiFi passwords."
}

search_passwords