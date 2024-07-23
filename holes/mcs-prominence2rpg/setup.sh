#!/bin/bash

echo 'Fetching server files...'
wget -qO server.zip $1

echo 'Extracting server files...'
unzip -qqn server.zip

echo 'Cleaning up server files...'
rm server.zip

echo 'Finished setting up.'
