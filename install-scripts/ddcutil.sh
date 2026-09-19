#!/bin/bash

if command -v ddcutil &> /dev/null; then
	echo "ddcutil is already installed"
	return 0
fi

sudo dnf install ddcutil --assumeyes

sudo groupadd --system i2c
sudo usermod -aG i2c $USER
echo 'SUBSYSTEM=="i2c-dev", KERNEL=="i2c-[0-9]*", GROUP="i2c"' | sudo tee --append /etc/udev/rules.d/45-myi2c.rules
