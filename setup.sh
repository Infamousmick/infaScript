#!/bin/sh
################################################################################
# Copyright (c) [2024] [Ravindu Deshan, Eren]
#
# Unauthorized publication is prohibited. Forks and personal use are allowed.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
################################################################################
DIR=$(pwd)

setup(){
    rm -rf "$DIR/infaScript"
    git clone https://github.com/Infamousmick/infaScript.git ;cd $DIR/infaScript
    chmod +x -R bin/* ; chmod +x *
}

script(){
    clear ; echo -e "\t\033[1;31mStarting Script...\033[0m\n"
    bash $DIR/rish ./$DIR/InfaScript.sh
}

setup
script