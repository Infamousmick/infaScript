#!/bin/sh
################################################################################
# Copyright (c) [2023] [Ravindu Deshan]
#
# Unauthorized publication is prohibited. Forks and personal use are allowed.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
################################################################################
rm -rf "$(pwd)/InfaScripts"
clone() {
    git clone https://github.com/Infamousmick/InfaScript.git > /dev/null 2>&1
    cd infaScript
    chmod +x -R bin/
    chmod +x InfaScript.sh
    chmod +x AdbCommands.sh
    chmod +x GmsDisabler.sh
    chmod +x GmsEnabler.sh
    chmod +x RebootMenu.sh
}
clone