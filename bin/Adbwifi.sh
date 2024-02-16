#!/bin/sh
startadb() {
clear
echo "
First connect ur device by USB and check if u can see any device"
adb devices
echo "Is your device in the list? (1=SI , 2=NO=)"
    read -r -p "Enter your choice : " input
    case $input in
    1)
    adbconnect
    ;;
    2)
    echo "
    Reconnect device by USB and check if have adb enabled in Developer settings.
    Press ENTER to retry"
    read -r a
    startadb
    ;;
    *)
    echo "Choose a valid option, press ENTER to continue..."
    read -r a
    startadb
    ;;
    esac
}
startadb

adbconnect() {
# Trova l'ID del dispositivo Android connesso
device_id=$(adb devices | grep -oP '^\S+(?=\s+device$)')

if [ -n "$device_id" ]; then
  # Ottieni l'indirizzo IP del dispositivo
  ip_address=$(adb shell ip -f inet addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

  if [ -n "$ip_address" ]; then
    # Connetti al dispositivo utilizzando adb connect
    adb tcpip 5555
    adb connect "$ip_address":5555
    echo "Connesso al dispositivo con IP: $ip_address"
  else
    echo "Impossibile ottenere l'indirizzo IP del dispositivo."
  fi
else
  echo "Nessun dispositivo Android connesso tramite adb."
fi
}