#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${BASEDIR}/../install-scripts/nix-home-manager.sh"
sudo systemctl reset-failed
zsh -c "home-manager switch"

[[ $SHELL != /bin/zsh ]] && chsh -s /bin/zsh
