#!/bin/bash

WRITING_TIME=${WRITING_TIME:-1m}

upload() {
  content=$(cat $2)

  encoded_content=$(echo -n "$content" | jq -sRr @uri) # URL-encode the content
  curl "https://hooks.zapier.com/hooks/catch/4254966/31139ys/?text=$encoded_content&file_name=$1"
}

echo "Writing time is: ${WRITING_TIME}"
TODAY=$(date +%Y-%m-%d)

MOUNT_POINT="//media/kaiomagalhaes/kaiorocks"


FILE_PATH="$MOUNT_POINT/$TODAY.md"

echo "Creating file: ${FILE_PATH}"
touch $FILE_PATH

trap 'kill $(jobs -p)' EXIT
ghostwriter $FILE_PATH &
cvlc "./writing.mp3" &
sleep $WRITING_TIME && upload "$TODAY.md" $FILE_PATH && cvlc "./alarm.mp3"

wait


