is_samsung(){
	brand=$(getprop ro.product.system.brand)
	if [ $brand == "samsung" ]; then
		echo -e  "${GREEN}${BOLD}[+] Detected Samsung Device : ${brand}${RESET}\n"
        sleep 1
        sh $HOME/infaScript/bin/run_samsung.sh
	else
		echo -e "${RED}${BOLD}[!] This section is not for a '${brand}' Device.${RESET}\n"
        exit 1
	fi
}

is_samsung