#!/bin/sh
cd /root/mounted
# Fixes [S_API FAIL] SteamAPI_Init() failed; unable to locate a running instance of Steam, or a local steamclient.dll.
export HOME="/root"
file="/root/.steam/sdk32/steamclient.so"
if ! [ -f "$file" ]
then
	mkdir -p ~/.steam/sdk32/
	ln -s /etc/service/steamcmd/linux32/steamclient.so "$file"
fi

while true; do
  ./startserver.sh
  echo "\nRestarting server...\n"
  sleep 5
done
