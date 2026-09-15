#!/bin/bash

if command -v docker &> /dev/null; then
	echo "docker is already installed"
	return 0
fi

sudo dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin --assumeyes
sudo groupadd docker
sudo usermod -aG docker $USER
