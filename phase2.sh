#!/bin/sh

# Paranoia mode
set -e
set -u
echo "*************** Phase 2 ************************"
if [ "$HOSTNAME" = "control" ]; then
    puppet cert sign --all
fi