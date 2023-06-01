#!/bin/bash

# Make sure running as root
if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

# Get the directory for tools
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# Install checksec into /usr/local/bin/checksec
sudo ln -s $PWD/checksec/checksec /usr/local/bin/checksec


