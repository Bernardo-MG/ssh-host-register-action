#!/bin/sh

# Fails if any commands returns a non-zero value
set -e

settings_path="site_settings.xml"

# Install dependencies
apk update;
apk add ssh;

# Makes sure the SSH folder exists
mkdir -p ~/.ssh/;

# Registers host
ssh-keyscan -H ${host} >> ~/.ssh/known_hosts;

exit 0
