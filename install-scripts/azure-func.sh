#!/bin/bash
if command -v func &> /dev/null; then
	echo "func is already installed"
	return 0
fi

zip_file=/tmp/azure-functions.zip
install_dir=~/.local/share/azure-functions-core-tools

curl -SL \
	--output "$zip_file" \
	https://github.com/Azure/azure-functions-core-tools/releases/download/4.14.0/Azure.Functions.Cli.linux-x64.4.14.0.zip

mkdir -p "$install_dir"
unzip "$zip_file" -d "$install_dir"
chmod +x "$install_dir/func"
chmod +x "$install_dir/in-proc6/gozip"
chmod +x "$install_dir/in-proc8/gozip"
ln -fs $install_dir/func ~/.local/bin/func
