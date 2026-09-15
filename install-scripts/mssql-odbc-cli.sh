#!/bin/bash

if command -v sqlcmd &> /dev/null; then
	echo "mssql tools is already installed"
	return 0
fi

sudo dnf config-manager addrepo --from-repofile https://packages.microsoft.com/config/rhel/9/prod.repo
# (--allowerasing may be required to overwrite existing unixODBC packages)
sudo ACCEPT_EULA=Y dnf install msodbcsql18 mssql-tools18 --allowerasing --assumeyes
