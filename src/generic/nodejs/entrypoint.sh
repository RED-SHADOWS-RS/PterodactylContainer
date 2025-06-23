# © Copyright RED SHADOWS | RS - Shadow-x78

#!/bin/bash
set -e
umask 022

export TZ=${TZ:-UTC}
cd /home/container || exit 1

<<<<<<< HEAD
if [[ -z "${STARTUP}" ]]; then
    echo "ERROR: STARTUP environment variable is not set"
    exit 1
fi

PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g')
PARSED=$(eval echo "$PARSED")

if [[ -z "${PARSED}" ]]; then
    echo "ERROR: Parsed startup command is empty"
=======
if [[ -z "${STARTUP_FILE}" ]]; then
    echo "ERROR: STARTUP_FILE environment variable is not set"
    exit 1
fi

PARSED=$(echo "${STARTUP_FILE}" | sed -e 's/{{/${/g' -e 's/}}/}/g')
PARSED=$(eval echo "$PARSED")

if [[ -z "${PARSED}" ]]; then
    echo "ERROR: Parsed startup file is empty"
>>>>>>> 11f6d56 (PterodactylContainers | v7.3 | Improved Name Variables)
    exit 1
fi

echo >&2 "Starting: $PARSED"
<<<<<<< HEAD
exec bash -c "$PARSED"
=======
exec bash -c "$PARSED"
>>>>>>> 11f6d56 (PterodactylContainers | v7.3 | Improved Name Variables)
