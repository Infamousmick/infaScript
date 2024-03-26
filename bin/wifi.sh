#!/system/bin/sh

# Verifica se l'utente ha i permessi di root
if [ "$(id -u)" -ne 0 ]; then
  echo "Questo script richiede i permessi di root."
  exit 1
fi

# Possibili posizioni dei file
file_locations=(
  "/data/misc/wifi/wpa_supplicant.conf"
  "/data/misc/wifi/WifiConfigStore.xml"
  "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml"
)

# Funzione per cercare il file corretto e visualizzare le password
search_passwords() {
  for location in "${file_locations[@]}"; do
    if [ -f "$location" ]; then
      echo "File trovato in: $location"
      echo "Password WiFi salvate:"
      # Cerca le informazioni desiderate nei file XML e le visualizza
      while IFS= read -r line; do
        if [[ $line =~ '<string name="SSID">' ]]; then
          ssid=$(echo "$line" | sed 's/.*<string name="SSID">\(.*\)<\/string>.*/\1/' | sed 's/&quot;//g')
          echo "Wifi Name: $ssid"
        elif [[ $line =~ '<string name="PreSharedKey">' ]]; then
          password=$(echo "$line" | sed 's/.*<string name="PreSharedKey">\(.*\)<\/string>.*/\1/' | sed 's/&quot;//g')
          echo "Password: $password"
          echo
        fi
      done < "$location"
      exit 0
    fi
  done
  echo "Nessun file trovato con le password WiFi."
}

search_passwords