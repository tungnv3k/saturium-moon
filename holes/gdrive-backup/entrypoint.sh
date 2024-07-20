#!/bin/sh

rclone -v config create $REMOTE_NAME drive scope=drive shared_with_me=true use_trash=true service_account_file=/app/cloud-backup.json

DOW=$(date +"%a")

rclone -v sync /backup $REMOTE_NAME:$REMOTE_SYNC_FOLDER/$DOW

inotifywait -m /backup -e create |
    while read FOLDER
        do
            echo Syncing folder...
            rclone -v sync /backup $REMOTE_NAME:$REMOTE_SYNC_FOLDER/$DOW
            echo Finished processing.
        done
