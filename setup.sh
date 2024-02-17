#!/bin/sh
################################################################################
# Copyright (c) [2024] [Ravindu Deshan, Eren]
#
# Unauthorized publication is prohibited. Forks and personal use are allowed.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
################################################################################
rm -rf "$(pwd)/infaScript"
git clone https://github.com/Infamousmick/infaScript.git ;cd infaScript
chmod +x -R bin/* ; chmod +x *