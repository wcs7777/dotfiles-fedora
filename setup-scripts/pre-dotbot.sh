#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo dnf upgrade --assumeyes

sudo dnf install dbus  --assumeyes
sudo systemctl start dbus
sudo systemctl reset-failed

sudo dnf install git python --assumeyes

source "${BASEDIR}/config-locales.sh"
