#!/bin/bash

SLEEP_DURATION=${SLEEP_DURATION:-1m}

TODAY=$(date +%Y-%m-%d)

MOUNT_POINT="//media/kaiomagalhaes/kaiorocks"


FILE_PATH="$MOUNT_POINT/$TODAY.md"

touch $FILE_PATH

trap 'kill $(jobs -p)' EXIT
ghostwriter $FILE_PATH &
cvlc ./writing.mp3 &
sleep $SLEEP_DURATION && cvlc ./alarm.mp3 &

wait


