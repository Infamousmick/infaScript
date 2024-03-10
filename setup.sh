#!/bin/sh
################################################################################
# Copyright (c) [2024] [Ravindu Deshan, Eren]
#
# Unauthorized publication is prohibited. Forks and personal use are allowed.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
################################################################################
cd $HOME
DIR=$(pwd)

setup(){
    rm -rf "$DIR/infaScript" > /dev/null 2>&1
    echo -e "\n[+] Installing Requirements...\n"
    pkg install wget git tsu -y
    echo -e "\n[+] Cloning Script...\n"
    git clone https://github.com/Infamousmick/infaScript.git -b stable_up
    cd $DIR/infaScript
    chmod +x -R *
    rm /data/data/com.termux/files/usr/bin/infa > /dev/null 2>&1 ; ln -s /data/data/com.termux/files/home/infaScript/infa /data/data/com.termux/files//usr/bin/infa
    echo -e "\n[i] Done.\n"
    echo -e "\n[i] Run "infa" to get started..!\n"    
}
setup
