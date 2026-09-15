#!/bin/bash

if command -v az &> /dev/null; then
	echo "az is already installed"
	exit 0
fi

sudo rpm --import https://packages.microsoft.com/keys/microsoft-2025.asc
sudo dnf install --assumeyes https://packages.microsoft.com/config/rhel/10/packages-microsoft-prod.rpm
sudo dnf install azure-cli --assumeyes
