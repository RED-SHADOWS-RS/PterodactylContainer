# © Copyright RED SHADOWS | RS - Shadow-x78

#!/bin/bash
set -e
umask 022

export TZ=${TZ:-UTC}
cd /home/container || exit 1

if [[ -z "${STARTUP_FILE}" ]]; then
    echo "ERROR: STARTUP_FILE environment variable is not set"
    exit 1
fi

PARSED=$(echo "${STARTUP_FILE}" | sed -e 's/{{/${/g' -e 's/}}/}/g')
PARSED=$(eval echo "$PARSED")

if [[ -z "${PARSED}" ]]; then
    echo "ERROR: Parsed startup file is empty"
    exit 1
fi

echo >&2 "Starting: $PARSED"
exec bash -c "$PARSED"
