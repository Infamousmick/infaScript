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
    rm -rf "$DIR/infaScript"
    git clone https://github.com/ravindu644/infaScript.git -b rish ;cd $DIR/infaScript
    chmod +x -R bin/* ; chmod +x *
}

path() {
    if grep -q 'export PATH="$HOME/infaScript/infa:$PATH"' "$HOME/.bashrc"; then
        echo "InfaScript already installed. Skipping..."
    else
        echo 'export PATH="$HOME/infaScript/infa:$PATH"' >> "$HOME/.bashrc"
        echo "InfaScript installed successfully."
    fi    
}

setup
path