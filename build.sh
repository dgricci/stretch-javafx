#!/bin/bash
  
# Java 8 environment with JavaFX

# Exit on any non-zero status.
trap 'exit' ERR
set -E

echo "Installing JavaFX ${JAVA_VERSION} ..."
## install JavaFX not yet part of OpenJDK 8
export DEBIAN_FRONTEND=noninteractive
apt-get -qy update
apt-get -qy --no-install-recommends --no-install-suggests install \
    libglapi-mesa \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    openjfx

# uninstall and clean
apt-get clean -y
rm -r /var/lib/apt/lists/*
rm -rf /usr/share/doc/*
rm -rf /usr/share/doc-gen/*
rm -fr /usr/share/man/*

exit 0

