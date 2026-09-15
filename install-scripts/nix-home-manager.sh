#!/bin/bash

if command -v home-manager &> /dev/null; then
	echo "home-manager is already installed"
	return 0
fi

current_dir=$(pwd)

cd ~/.config/home-manager

sudo systemctl start nix-daemon
sudo systemctl enable nix-daemon

sudo systemctl reset-failed
nix build .#homeConfigurations."wcs".activationPackage
sudo systemctl reset-failed
./result/activate

cd "$current_dir"
