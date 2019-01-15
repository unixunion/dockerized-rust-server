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
#  exec ./RustDedicated -batchmode -nographics \
#  -server.ip 0.0.0.0\
#  -server.port 28015 \
#  -rcon.ip 0.0.0.0\
#  -rcon.port 28016 \
#  -rcon.password "d2DFss2" \
#  -server.maxplayers 75 \
#  -server.hostname "DawnSquad" \
#  -server.identity "dawnsquad_rust" \
#  -server.level "Procedural Map" \
#  -server.seed 8675309\
#  -server.worldsize 3000 \
#  -server.saveinterval 300 \-server.globalchat true \
#  -server.description "dawnsquad server" \
#  -server.url "http://dawnsquad.com"
#  -autoupdate
  exec sh ./startserver.sh
  echo "\nRestarting server...\n"
done
