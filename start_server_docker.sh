#!/bin/bash
echo "Welcome to docker Vrising Server!"
echo "Trying to remove /tmp/.X0-lock"
rm /tmp/.X0-lock 2>&1
echo " "
echo "Starting Xvfb"
Xvfb :0 -screen 0 1024x768x16 &
echo "Launching wine64 V Rising"
echo " "
DISPLAY=:0.0 wine64 VRisingServer.exe -persistentDataPath '/vrising/save-data' -serverName 'Knorr Clan V Rising Server' -saveName 'world1' -logFile '/vrising/logs/VRisingServer.log' -gamePort 27015 -queryPort 27016 2>&1
/usr/bin/tail -f /vrising/logs/VRisingServer.log

echo "Exiting.."
exit

