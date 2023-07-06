#!/usr/bin/env bash

# enter with super user
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root (or sudo)" 1>&2
    exit 1
fi

# prepare the install dir
install_dir="/usr/local/bin"
cp help.sh "$install_dir/.help"
chmod +x "$install_dir/.help"
cp script.sh "$install_dir/headgen"
chmod +x "$install_dir/headgen"

echo "Installed headgen to $install_dir/headgen"
echo "Usage: headgen <path_to_logo> <infos...>"
echo "For more information, use: headgen --help"