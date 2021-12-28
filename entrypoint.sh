#!/bin/sh

# Fails if any commands returns a non-zero value
set -e

settings_path="site_settings.xml"

# Makes sure the SSH folder exists
mkdir -p ~/.ssh/;

# Registers host
ssh-keyscan -H ${host} >> ~/.ssh/known_hosts;

exit 0
