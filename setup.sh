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
    rm -rf "$DIR/infaScript" > /dev/null 2>&1
    git clone https://github.com/ravindu644/infaScript.git -b rish ;cd $DIR/infaScript
    chmod +x -R bin/* ; chmod +x *
}
setup