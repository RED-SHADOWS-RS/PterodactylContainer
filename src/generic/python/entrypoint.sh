# © Copyright RED SHADOWS | RS - Shadow-x78

#!/bin/bash
set -e
umask 022

export TZ=${TZ:-UTC}
cd /home/container || exit 1

if [[ -z "${STARTUP}" ]]; then
    echo "ERROR: STARTUP environment variable is not set"
    exit 1
fi

PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')
PARSED=$(eval echo "$PARSED")

if [[ -z "${PARSED}" ]]; then
    echo "ERROR: Parsed startup command is empty"
    exit 1
fi

echo >&2 "Starting: $PARSED"
exec bash -c "$PARSED"
