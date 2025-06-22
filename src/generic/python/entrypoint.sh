#!/bin/bash

set -e

export TZ=${TZ:-UTC}
cd /home/container || exit 1

if [[ -z "${STARTUP}" ]]; then
    echo "ERROR: STARTUP environment variable is not set"
    exit 1
fi

PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")

if [[ -z "${PARSED}" ]]; then
    echo "ERROR: Parsed startup command is empty"
    exit 1
fi

echo "Starting: $PARSED"

exec ${PARSED}