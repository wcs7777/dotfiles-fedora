#!/bin/bash

if [ -f ~/.local/bin/mise ]; then
	echo "mise is already installed"
	return 0
fi

curl https://mise.run | sh
