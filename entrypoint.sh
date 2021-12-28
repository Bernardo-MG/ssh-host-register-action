#!/bin/sh

# Fails if any commands returns a non-zero value
set -e

host=${1}

echo ${host};

# Install dependencies
apk update;
apk add openssh;

# Makes sure the SSH folder exists
mkdir -p ~/.ssh/;

# Registers host
ssh-keyscan -H ${host} >> ~/.ssh/known_hosts;

exit 0
