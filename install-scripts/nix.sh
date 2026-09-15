#!/bin/bash

if command -v nix &> /dev/null; then
	echo "nix is already installed"
	exit 0
fi

curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh -s -- --daemon

mkdir -p ~/.config/nix
echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf
