#!/bin/bash

sudo dnf install glibc-common glibc-locale-source glibc-langpack-en langpacks-core-en --assumeyes
sudo localedef --force -f UTF-8 -i en_US en_US.UTF-8
sudo localectl set-locale LANG=en_US.UTF-8
sudo localectl set-locale LC_COLLATE=en_US.UTF-8
