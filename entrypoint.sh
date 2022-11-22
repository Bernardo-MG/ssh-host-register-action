#!/bin/sh

#
# Registers a host into the SSH register.
#
# -- PARAMETERS --
#
# - $1: string, host to register
#
# -- EFFECTS --
#
# - The host is registered as a known host
#

# Fails if any commands returns a non-zero value
set -e

# Read input parameters
host=${1}

# Enforce existence of SSH folder
mkdir -p ~/.ssh/;

# Register host
ssh-keyscan -H ${host} >> ~/.ssh/known_hosts;

exit 0
